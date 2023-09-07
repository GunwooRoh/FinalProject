<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${chatRoomTitle }</title>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<link href="${pageContext.request.contextPath}/css/chat/chatDetail-style.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Changa:wght@400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
	<div class="chatting">
		<div class="chat-header">
			<span class="chatRoomType">
				<c:if test="${chatRoom.chatRoomType == 0}"><!-- 1:1 채팅방 -->
					<span class="material-icons">
						account_circle
					</span>
				</c:if>
				<c:if test="${chatRoom.chatRoomType == 1}"><!-- 1:N 채팅방 -->
					<span class="material-icons">
						supervised_user_circle
					</span>
				</c:if>
			</span>
			<div class="chat-title-count">
				<div class="chatRoomTitle">
					<p id="p-title">${chatRoom.chatRoomTitle }
				</div>
				<div class="chatHeadCount">(${chatHeadCount })</div>
			</div>
			<button class="more-btn">
				<span class="material-icons">
					more_horiz
				</span>
			</button>
			<div class="more">
				<button onclick="invite(${chatRoomNo})">초대</button>
				<button onclick="titleChange(${chatRoomNo})">제목 변경</button>
				<button onclick="chatOut(${chatRoomNo}, '${loginUser.memNo}')">나가기</button>
			</div>
		</div>
		<div class="chat-body">
		</div>
		<div class="chat-footer">
			<div><textarea id="textInput" style="white-space: pre;"></textarea></div>
			<button onclick="textSend(${chatRoomNo}, '${loginUser.memberNo}')">전송</button>
		</div>
	</div>
	<jsp:include page="chatInviteAddModal.jsp"></jsp:include> <!-- 사용자 추가 초대 모달 -->
	<script>
		var intervalChat = setInterval(chatList, 500, "${chatRoomNo}"); // 채팅방 상세 함수 0.1초 주기로 실행
		$(".chat-body").scroll(function() {
			console.log($(".chat-body")[0].scrollHeight - $(".chat-body").scrollTop());
			clearInterval(intervalChat); // 스크롤을 움직이면 인터벌 중지
			if($(".chat-body")[0].scrollHeight - $(".chat-body").scrollTop() != 538) { // 스크롤이 하단있지 않으면 인터벌 중지
				clearInterval(intervalChat);
			}else {
				intervalChat = setInterval(chatList, 500, "${chatRoomNo}"); // 스크롤이 하단에 있으면 인터벌 실행
			}
		})
		
		// 창을 끄면 채팅창 새로고침
		$(window).bind("beforeunload", function() {
			opener.parent.location.reload();
		});
		
		// 더보기 누르면 더보기 영역 보이기
		$(".more-btn").click(function() {
			if($(".more").css("display") === "none") {
				$(".more").show();
			}else {
				$(".more").hide();
			}
		});
		
		// 더보기 제목 변경
		function titleChange(chatRoomNo) {
			var chatRoomTitle = prompt("채팅방 제목을 입력하세요");
			if(chatRoomTitle != null) {
				$.ajax({
					url : "/chat/titleChange",
					type : "get",
					data : { "chatRoomNo" : chatRoomNo, "chatRoomTitle" : chatRoomTitle },
					success : function(result) {
						$("#p-title").text(chatRoomTitle);
						opener.parent.location.reload();
					},
					error : function() {
						alert("채팅방 제목 변경 실패");
					}
				})
			}
		}
		
		// 더보기 나가기
		function chatOut(chatRoomNo, memNo) {
			$.ajax({
				url : "/chat/out",
				type : "get",
				data : { "chatRoomNo" : chatRoomNo, "memNo" : memNo },
				success : function(result) {
					opener.parent.location.reload();
					window.close();
				},
				error : function() {
					alert("채팅방 나가기 실패");
				}
			})
		}

		// 엔터키 누르면 메세지 전송
		$("#textInput").keyup(function (e) {
			e.preventDefault();
			var code = e.keyCode ? e.keyCode : e.which;
			if(code == 13) { // 엔터키면
				if(e.shiftKey === true) {
					return false // shift 키가 눌러진 상태에서는 개행해서 입력 가능
				}else {
					textSend("${chatRoomNo}", "${loginUser.memberNo}");
				}
			}
		})
	
		// 메세지 전송
		function textSend(chatRoomNo, memNo) {
			var text = $("#textInput").val();
			$("#textInput").val(""); // 메세지 입력창 초기화
			$.ajax({
				url : "/chat/send",
				type : "get",
				data : { "chatRoomNo" : chatRoomNo, "memNo" : memNo, "chatContent" : text },
				success : function(result) {
					chatList(chatRoomNo); // 채팅 상세 조회
				},
				error : function() {
					alert("메세지 전송 실패");
				}
			})
		}
		
		// 채팅 상세(채팅 목록, 채팅방 정보, 인원수)
		function chatList(chatRoomNo) {
			chatMember(); // 채팅방 사용자 목록 조회
			// 채팅 목록
			$.ajax({
				url : "/chat/content",
				type : "get",
				data : { "chatRoomNo" : chatRoomNo },
				success : function(cList) {
					chatContentView(cList); // 채팅 목록 화면에 보여주기
					$(".chat-body").scrollTop($(".chat-body")[0].scrollHeight); // 채팅 목록 스크롤 바 하단으로 위치
				},
				error : function() {
					alert("채팅 목록 조회 실패");
					clearInterval(intervalChat);
				}
			})
			
			// 채팅방 정보
			$.ajax({
				url : "/chat/chatRoom.sw",
				type : "get",
				data : { "chatRoomNo" : chatRoomNo },
				success : function(chatRoom) {
					$("#p-title").text(chatRoom.chatRoomTitle);
				},
				error : function() {
					alert("채팅방 정보 조회 실패");
					clearInterval(intervalChat);
				}
			})
			
			// 인원수
			$.ajax({
				url : "/chat/headCount",
				type : "get",
				data : { "chatRoomNo" : chatRoomNo },
				success : function(chatHeadCount) {
					$(".chatHeadCount").text("(" + chatHeadCount + ")");
				},
				error : function() {
					alert("인원수 조회 실패");
					clearInterval(intervalChat);
				}
			})
		}
		
		// 채팅 목록 화면에 보여주기
		function chatContentView(cList) {
			$(".chat-body").html(""); // 채팅 목록 초기화
			var memberNum = "${loginUser.memberNo}";
			var content = "";
			$.each(cList, function(i) {
				if(cList[i].chatType == 1){ // 공지
					content += '<div class="chat-notice">' + cList[i].chatContent + '</div>';
				}else{ // 일반
					if(cList[i].memNum !== memberNum){
						if(cList[i].divName != null) {
							content += '<div class="chat-member">' + cList[i].divName + ' ' + cList[i].memName + ' ' + cList[i].rankName + '</div>';
						}
						content += '<div class="content-date"><div class="chat-content">' + cList[i].chatContent + '</div>';
						content += '<div class="chat-date">' + cList[i].chatDateFormat + '</div></div>';
					}else {
						content += '<div class="content-date me"><div class="chat-date me">' + cList[i].chatDateFormat + '</div>';
						content += '<div class="chat-content me">' + cList[i].chatContent + '</div></div>';
					}
				}
			});
			$(".chat-body").append(content);
		}
		
		// 채팅방 사용자 목록 조회
		function chatMember() {
			$.ajax({
				url : "/chat/member",
				type : "get",
				data : { "chatRoomNo" : "${chatRoomNo}" },
				success : function(memberArr) {
					var member = memberArr.join("\n"); // 사용자 사이에 개행 추가
					$(".chatHeadCount").attr("title", member); // 인원수에 마우스 가져다 대면 채팅방 사용자 목록 툴팁으로 보여주기
				},
				error : function() {
					alert("채팅방 사용자 목록 조회 실패");
				}
			})
		}
	</script>
</body>
</html>