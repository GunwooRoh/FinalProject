<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>	
<!-- Recent Sales Start -->

<script type="text/javascript">
	
	$(function(){		
		var totalCount=0;
		send(1);
		todoList();
		
		//글 삭제
		$('#del').click(function(){
			event.preventDefault();
			 if (confirm("정말 삭제하시겠습니까?")){
			 	location.href="<c:url value='/myBoard/teamWorkBoardDel?mBoardNo=${map["M_BOARD_NO"]}&teamBoardNo=${map["TEAM_BOARD_NO"]}&oldFileName=${map["FILENAME"]}'/>"
			 }
		});

		//ajax
		//댓글 등록 ajax
		$('#add_reply').click(function(event){
		    event.preventDefault(); // 이벤트의 기본 동작 방지
		    var replyData = $('form[name=reply_frm]').serialize(); // 데이터 직렬화
		    
		    $.ajax({
		        type: 'post',
		        url: "<c:url value='/myBoard/workBoard_reply_insert'/>",
		        data: replyData,
		        dataType: 'json',
		        error: function(xhr, status, error){
		            alert(error);
		        },
		        success: function(res){
		            console.log(res); // 서버 응답 확인  
		            $('#addComment').val('');
		            send(1);
		            $("html, body").animate({ scrollTop: 0 }, "slow");
		            alert("댓글이 등록되었습니다.");
		        
		        }
		    });
		});//댓글 등록 끝.

		
		 //댓글 수정     
		$(document).on('click', '.editReply', function(e) {       
		    event.preventDefault();
		    var $replyContainer = $(this).closest('.reply_content');
		    $replyContainer.find('.replyWriteForm').hide();
		    $replyContainer.find('.replyEditForm').show();
		    $replyContainer.find('textarea').focus();
		});
				 
		 
		 
		 //댓글 수정 취소
		  $(document).on('click', '.reply_add_cencle',function(e) {       
			  	event.preventDefault();
			    var $replyContainer = $(this).closest('.reply_content');
			    $replyContainer.find('.replyEditForm').hide();
			    $replyContainer.find('.replyWriteForm').show();
		  });
			
		 
		
		//댓글 수정 ajax
		$(document).on('click', '#r_replyAddBtn', function(e) {       
		    event.preventDefault(); // 이벤트의 기본 동작 방지
		    var $replyContainer = $(this).closest('form[name=replyEditForm]');
		    var replyData = $replyContainer.serialize(); // 데이터 직렬화
		    
		    $.ajax({
		        type: 'post',
		        url: "<c:url value='/myBoard/workBoard_reply_update'/>",
		        data: replyData,
		        dataType: 'json',
		        error: function(xhr, status, error){
		            alert(error);
		        },
		        success: function(res){
		            console.log(res); // 서버 응답 확인  
		            var curPage = res.curPage;
		            if(res.cnt>0){
			            $('#addComment').val('');
			            send(curPage);
			            alert("댓글이 수정되었습니다.");
		            }else{
		            	alert("댓글 수정 실패");
		            }
		        }
		    });			
		});	
		
		
		//댓글 삭제 ajax
		$(document).on('click', '#delReply', function(e) {       
		    event.preventDefault(); // 이벤트의 기본 동작 방지
		    var $replyContainer = $(this).closest('.reply_content');
		    var $replyDelForm = $replyContainer.find('form[name=replyDelForm]');// replyDelForm 선택
		    var replyData = $replyDelForm.serialize(); // 데이터 직렬화
		    if(confirm('정말 삭제하시겠습니까?')){
			    $.ajax({
			        type: 'post',
			        url: "<c:url value='/myBoard/workBoard_reply_delete'/>",
			        data: replyData,
			        dataType: 'json',
			        error: function(xhr, status, error){
			            alert(error);
			        },
			        success: function(res){
			            console.log(res); // 서버 응답 확인  
			           		if(res=-1){
					            alert("삭제되었습니다.");
					            send(1);
			           		}else{
			           			alert("댓글 삭제 실패");
			           		}
			             
			        }
			    });			
		    }
		});	
		
	    // 대댓글 등록
	    $('.add_r_reply').click(function(e) {
	        event.preventDefault();
	        var $replyContainer = $(this).closest('.reply_content');
	        $replyContainer.find('.replyaddForm').show();
	        $replyContainer.find('#comments').focus();
	    });

	    // 대댓글 등록 취소
	    $('.add_R_replyCencleBtn').click(function(e) {
	        event.preventDefault();
	        var $replyContainer = $(this).closest('.reply_content');
	        $replyContainer.find('.replyaddForm').hide();
	    });

	    // 대댓글 등록 ajax
	    $('#add_R_replyBtn').click(function(e) {
	        e.preventDefault(); // 이벤트의 기본 동작 방지
	        var $replyContainer = $(this).closest('form[name=rAddForm]');
	        var replyData = $replyContainer.serialize(); // 데이터 직렬화
	        var curPage = $replyContainer.find('input[name=curPage]').val();

	        $.ajax({
	            type: 'post',
	            url: "<c:url value='/myBoard/workBoard_reReply_insert'/>",
	            data: replyData,
	            dataType: 'json',
	            error: function(xhr, status, error) {
	                alert(error);
	            },
	            success: function(res) {
	                console.log(res); // 서버 응답 확인
	                $('#addComment').val('');
	                send(curPage);
	                alert("대댓글이 등록되었습니다.");
	            }
	        });
	    }); // 대댓글 등록 끝
	    

		 //대댓글 수정     
		$(document).on('click', '.editReplyBtn1', function(e) {       
		    event.preventDefault();
		    var $replyContainer = $(this).closest('.r_reply_content');
		    $replyContainer.find('.r_replyWrite').hide();
		    $replyContainer.find('.r_replyEditForm').show();
		    $replyContainer.find('textarea').focus();
		    
		});
				 
		 
		 
		 //대댓글 수정 취소
		  $(document).on('click', '#cenceleditreReplyBtn',function(e) {       
			  	event.preventDefault();
			    var $replyContainer = $(this).closest('.r_reply_content');
			    $replyContainer.find('.r_replyEditForm').hide();
			    $replyContainer.find('.r_replyWrite').show();
		  });
					

			//대댓글 수정 ajax
			$(document).on('click', '#editReplyBtn2', function(e) {       
			    event.preventDefault(); // 이벤트의 기본 동작 방지
			    var $replyContainer = $(this).closest('form[name=rEditForm]');
			    var replyData = $replyContainer.serialize(); // 데이터 직렬화
			    
			    $.ajax({
			        type: 'post',
			        url: "<c:url value='/myBoard/workBoard_reply_update'/>",
			        data: replyData,
			        dataType: 'json',
			        error: function(xhr, status, error){
			            alert(error);
			        },
			        success: function(res){
			            console.log(res); // 서버 응답 확인  
			            var curPage = res.curPage;
			            if(res.cnt>0){
				            $('#addComment').val('');
				            send(curPage);
				            alert("댓글이 수정되었습니다.");
			            }else{
			            	alert("댓글 수정 실패");
			            }
			        }
			    });			
			});
					
		
			//대댓글 삭제 ajax
			$(document).on('click', '.delteReplyBtn', function(e) {       
			    event.preventDefault(); // 이벤트의 기본 동작 방지
		        var $replyContainer = $(this).closest('.r_reply_write_form');
		        var $replyDelForm = $replyContainer.find('form[name=reReplyDelFrom]'); // replyDelForm 선택
		        var replyData = $replyDelForm.serialize(); // 데이터 직렬화
			    console.log(replyData);
			    if(confirm('정말 삭제하시겠습니까?')){
				    $.ajax({
				        type: 'post',
				        url: "<c:url value='/myBoard/workBoard_reply_delete'/>",
				        data: replyData,
				        dataType: 'json',
				        error: function(xhr, status, error){
				            alert(error);
				        },
				        success: function(res){
				            console.log(res); // 서버 응답 확인  
				           		if(res=-1){
						            alert("삭제되었습니다.");
						            send(1);
				           		}else{
				           			alert("댓글 삭제 실패");
				           		}
				             
				        }
				    });	//ajax		
			    }
			});	//이벤트 끝
			
			
			//체크 상태 변경 ajax
			$(document).on('change', 'input[name=todoDetailNo]', function(e) { 
			    var todoDetailNo = $(this).val();
			    var status = $(this).prop('checked') ? 'N' : 'Y';
			    
			    $.ajax({
			        type: 'post',
			        url: "<c:url value='/myBoard/updateTodoListDetail'/>",
			        data: {todoDetailNo: todoDetailNo, status: status},
			        dataType: 'json',
			        error: function(xhr, status, error) {
			            alert(error);
			        },
			        success: function(res) {
			            console.log(res); // 서버 응답 확인 
			            if (res > 0) {
			                todoList(); // todoList 함수 호출
			                
			            } else {
			                alert('다시 시도해주세요');
			            }
			        }
			    }) // ajax
			});
		
		//담당자 변경 및 삭제	
		$(document).on('click','#addMem_img',function(){
			if(confirm('담당자를 변경하시겠습니까?')){
				$('#staticBackdrop').modal('show');
			}else if(confirm('담당자를 삭제하시겠습니까?')){
				var todoDetailNo = $(this).closest('.todoList').find('input[name="todoDetailNo"]').val();
				var memNo = $(this).find('input[name=memNo]').val();
			    $.ajax({
			        type: 'post',
			        url: "<c:url value='/myBoard/toDoDetailMemDel'/>",
			        data: { todoDetailNo: todoDetailNo, memNo: memNo },
			        dataType: 'json',
			        error: function(xhr, status, error) {
			            alert(error);
			        },
			        success: function(res) {
			            console.log(res); // 서버 응답 확인 
			            if (res > 0) {
			                todoList(); // todoList 함수 호출
			                alert("담당자가 삭제되었습니다.");
			                $('#staticBackdrop').modal('hide');
			            } else {
			                alert('다시 시도해주세요');
			            }
			        }
			    }); // ajax				
			}
			
		});
		
		//버튼 클릭하면 두투 디테일 값 넘겨주기	
		$(document).on('show.bs.modal', '#staticBackdrop', function(event) {
		    var date = $(this).parent().find('input[name=todoDetailNo]').val();
		    $('.memListBox input[name=todoDetailNo]').val(date);
		});
			
				
		
		// 업무 담당자 지정
		$('.mem_list_content').click(function() {
		    var todoDetailNo = $('input[name=todoDetailNo]').val();
		    var memNo = $(this).find('input[name=memNo]').val();
		    $.ajax({
		        type: 'post',
		        url: "<c:url value='/myBoard/addTodoDetailMem'/>",
		        data: { todoDetailNo: todoDetailNo, memNo: memNo },
		        dataType: 'json',
		        error: function(xhr, status, error) {
		            alert(error);
		        },
		        success: function(res) {
		            console.log(res); // 서버 응답 확인 
		            if (res > 0) {
		                todoList(); // todoList 함수 호출
		                alert("담당자가 설정되었습니다.");
		                $('#staticBackdrop').modal('hide');
		            } else {
		                alert('다시 시도해주세요');
		            }
		        }
		    }); // ajax
		}); //담당자 지정
		
	});//$(function(){});
	
	//전체 댓글 불러오기 ajax처리
	function send(curPage){		
		$('.reply_list').html("");
		$('input[name="currentPage"]').val(curPage);
		 var sendDate = $('form[name=sendFrom]').serialize(); // 데이터 직렬화
		 $.ajax({
		        type: 'post',
		        url: "<c:url value='/myBoard/workBoard_reply_select'/>",
		        data: sendDate,
		        dataType: 'json',
		        error: function(xhr, status, error){
		            alert(error);
		        },
		        success: function(res){
		            console.log(res); // 서버 응답 확인
	            
		            if(res!=null){		
		            	var replyData="";
			            $.each(res.replyList, function(idx, item){
			            	
			            	//페이징 처리
							totalCount=item.totalCount;
							var errorCode=item.errorCode;
							var errorMessage=item.errorMessage;
							
							//출력 데이터
							var step= item.STEP
			            	var imagePath = "default_user.png";
			            	if(item.MEM_IMAGE!==null){
			            		var imagePath =item.MEM_IMAGE;
			            	}
			            	var comment = item.COMMENTS.replace(/\r\n/ig, '<br>');
			            	var recomment = comment.replace(/<br>/ig, "\n");
				            var date = new Date(item.REGDATE);
				            var userid='<%=session.getAttribute("userid")%>';
				            const regdate = new Date(date.getTime()).toISOString().split('T')[0] + " " + date.toTimeString().split(' ')[0];				            
				         	
				           	
				            if(step=== 1){//댓글일 때
				            	if(item.STATUS==='N'){
				                    replyData = "<div class='reply_content'>";
				                    replyData += "<div class='del_content'>이미 삭제된 댓글입니다.</div>"; 
				                    replyData += "</div>";
				            	}else{
				            		replyData="<div class='reply_content'>"
				            		replyData+="<div class='reply_user'>";
				            		replyData+="<div class='detail_left'>";
				            		replyData+="<div class='user_img'>";
				            		replyData+="<img src='<c:url value='/img/mem_images/"+imagePath+"'/>' alt='사원프로필'>";
				            		replyData+="</div><!-- user_img -->";
				            		replyData+="</div><!--detail_left-->";
				            		replyData+="<div class='detail_left'>";
				            		replyData+="<span class='user_name'><a href='#'>"+item.MEM_NAME+"</a></span>";
				            		replyData+="<span class='user_dept'>/💼"+item.DEPT_NAME+"</span>";
				            		replyData+="</div><!-- detail_left -->";
				            		replyData+="</div><!-- reply_user -->";
				            		replyData+="<div class='replyWriteForm'>";
				            		replyData+="<div class='reply_txt'>"+comment+"</div><!-- reply_txt -->";
				            		replyData+="<div class='reply_txt'>";
				            		replyData+="<span>"+regdate+"</span>";
				            		
				            		if(userid==item.MEM_ID){
				            			replyData+=" <span><a href='#' class='editReply'>수정</a></span>";
				            			replyData+=" <span><a href='#' id='delReply'>삭제</a></span>";
					            		replyData+="<form name='replyDelForm' method='post' action='#'>";
					            		replyData +="<input type='hidden' name='teamBoardNo' value='" +item.TEAM_BOARD_NO+ "'>";
					            		replyData +="</form>";
					            		replyData+="</div><!-- reply_txt -->";
					            		replyData+="</div><!-- replyWriteForm -->";
					            		replyData+="<!-- 댓글 수정 -->";
					            		replyData+="<div class='replyEditForm' style='display:none;'>";
					            		replyData+="<form name='replyEditForm' method='post' action='#'>";
					            		replyData += "<input type='hidden' name='teamBoardNo' value='" +item.TEAM_BOARD_NO+ "'>";
					            		replyData += "<input type='hidden' name='curPage' value='" +curPage+ "'>";
					            		replyData+="<div class='reply_write'>";
					            		replyData+="<div class='form-floating'>";
					            		replyData+="<textarea class='form-control' placeholder='Comments'id='floatingTextarea2' name='comments' style='height: 100px'>"+recomment+"</textarea>";
					            		replyData+="<label for='floatingTextarea2'>Comments</label>";
					            		replyData+="</div>";
					            		replyData+="<div class='reply_add'>";
					            		replyData+="<button class='reply_add_btn2' style='margin-bottom: 4px;' id='r_replyAddBtn'>수정</button>";
					            		replyData+="<button class='reply_add_btn2 reply_add_cencle'id='r_replyCencleBtn'>취소</button>";
					            		replyData+="</div>";
					            		replyData+="</div><!-- reply_write -->";
					            		replyData+="</form><!--댓글 수정--->";
					            		replyData+="</div><!--reply_user-->";
					            		
				            		}else{
				            			replyData+=" <span><a href='#' class='add_r_reply'>답글</a></span>";
				            			replyData+="<!-- 대댓글 등록 -->";
					            		replyData+="<div class='replyaddForm' style='display:none;'>";
					            		replyData+="<form name='rAddForm' method='post' action='#'>";
					            		
					            		replyData+="<input type='hidden' name='groupNo' value='" +item.GROUP_NO+ "'>";
					            		replyData+="<input type='hidden' name='step' value='"+item.STEP+"'>";
					            		replyData+="<input type='hidden' name='mBoardNo' value='"+item.M_BOARD_NO+"'>";
					            		replyData+="<input type='hidden' name='contentno' value='"+item.CONTENTNO+"'>";
					            		replyData+="<input type='hidden' name='memNo' value='${userNo}'>";
					            		replyData += "<input type='hidden' name='curPage' value='" +curPage+ "'>";
	
					            		replyData+="<div class='reply_write'>";
					            		replyData+="<div class='form-floating'>";
					            		replyData+="<textarea class='form-control' placeholder='Comments'id='comments' name='comments'style='height: 100px'></textarea>";
					            		replyData+="<label for='floatingTextarea2'>Comments</label>";
					            		replyData+="</div>";
					            		replyData+="<div class='reply_add'>";
					            		replyData+="<button class='reply_add_btn2' id='add_R_replyBtn' style='margin-bottom: 4px;'>등록</button>";
					            		replyData+="<button class='reply_add_btn2 add_R_replyCencleBtn'>취소</button>";
					            		replyData+="</div><!--reply_add-->";
					            		replyData+="</div><!-- reply_write -->";
					            		replyData+="</form>";
					            		replyData+="</div><!-- replyaddForm -->";
				            		}
				            	}
				            

			            		
			            		replyData+="</div><!--reply_content-->";
			            		$('.reply_list').append (replyData);
			            		
			            	}else{//대댓글일때

			            		replyData="<div class='r_reply_content'>";
			            		replyData+="<!-- 대댓글 보기 -->";			       
			            		replyData+="<div class='r_reply_write_form'>";
			            		replyData+="<form name='reReplyDelFrom' method='post' action='#'>";
			            		replyData += "<input type='hidden' name='teamBoardNo' value='" +item.TEAM_BOARD_NO+ "'>";
			            		replyData +="</form>"
			            		replyData+="<div class='reply_user'>";
			            		replyData+="<div class='detail_left'>";
			            		replyData+="<div class='user_img'>";
			            		replyData+="<img src='<c:url value='/img/mem_images/"+imagePath+"'/>' alt='사원프로필'>";
			            		replyData+="</div><!-- user_img -->";
			            		replyData+="</div>";
			            		replyData+="<div class='detail_left'>";
			            		replyData+="<span class='user_name'><a href='#'>"+item.MEM_NAME+"</a></span>";
			            		replyData+="<span class='user_dept'>/ 💼"+item.DEPT_NAME+"</span>";
			            		replyData+="</div><!-- detail_left -->";
			            		replyData+="</div><!-- reply_user -->";
			            		replyData+="<div class='r_replyWrite'>";
			            		replyData+="<div class='reply_txt'>"+comment+"</div><!-- reply_txt -->";
			            		replyData+="<div class='reply_txt'>";
			            		replyData+="<span>"+regdate +" </span>";
			            		
			            		if(userid==item.MEM_ID){
				            		replyData+=" <span><a href='#' class='editReplyBtn1'>수정</a></span>";
				            		replyData+=" <span><a href='#' class='delteReplyBtn'>삭제</a></span>";
			            		
				            		replyData+="</div><!-- reply_txt -->";
				            		replyData+="</div><!--r_replyWrite-->";
				            		replyData+="</div><!--r_reply_write_form-->";
				            		replyData+="<!-- 대댓글 보기 -->";
				            		
				            		replyData+="<!--대댓글 수정-->"
				            		replyData+="<div class='r_replyEditForm' style='display:none;'>";
				            		replyData+="<form name='rEditForm' method='post' action='#'>";
				            		replyData += "<input type='hidden' name='teamBoardNo' value='" +item.TEAM_BOARD_NO+ "'>";
				            		replyData += "<input type='hidden' name='curPage' value='" +curPage+ "'>";
				            		replyData+="<div class='reply_write'>";
				            		replyData+="<div class='form-floating'>";
				            		replyData+="<textarea class='form-control' placeholder='Comments'id='floatingTextarea2' name='comments'style='height: 100px'>"+recomment+"</textarea>";
				            		replyData+="<label for='floatingTextarea2'>Comments</label>";
				            		replyData+="</div>";
				            		replyData+="<div class='reply_add'>";
				            		replyData+="<button class='reply_add_btn2' style='margin-bottom: 4px;' id='editReplyBtn2'>수정</button>";
				            		replyData+="<button class='reply_add_btn2' id='cenceleditreReplyBtn'>취소</button>";
				            		replyData+="</div>";
				            		replyData+="</div><!-- reply_write -->";
				            		replyData+="</form><!--rEditForm-->";
				            		replyData+="</div><!-- r_replyEditForm -->";			            		
				            		replyData+="<!--대댓글 수정-->"
				            		replyData+="</div><!-- r_reply_content -->";
				            		replyData+="<div class='reply_line'></div>";
				            		
				            	}//else

			            		$('.reply_list').append(replyData);
			            	}
				        	
			            });//.each
			           
			            
			            
			            //페이징
			            var str = "";
			            var firstPage = res.pagingInfo.firstPage;
			            var lastPage = res.pagingInfo.lastPage;
			            var currentPage = res.pagingInfo.currentPage;
			            var totalRecord = res.pagingInfo.totalRecord;
			            var totalPage = res.pagingInfo.totalPage;
	
			            
			            $('.reply_tit').text("댓글("+totalRecord+")")
	
			            // 이전 블럭으로
			            if (firstPage > 1) {
			                str += "<li class='page-item'>";
			                str += "<a class='page-link' onclick='send(" + (firstPage - 1) + ")'>";
			                str += "<";
			                str += "</a>";
			                str += "</li>";
			            }
	
			            // 페이지 번호 출력
			            for (var i = firstPage; i <= lastPage; i++) {
			                if (i == currentPage) {
			                    str += "<li class='page-item active' >";
			                    str += "<a class='page-link' href='#'>" + i + "</a>";
			                    str += "</li>";
			                } else {
			                    str += "<li class='page-item' >";
			                    str += "<a class='page-link' href='#' onclick='send(" + i + ")'>" + i + "</a>";
			                    str += "</li>";
			                }
			            }
	
			            // 다음 블럭으로
			            if (lastPage < totalPage) {
			                str += "<li class='page-item'>";
			                str += "<a class='page-link' onclick='send(" + (firstPage + 1) + ")'>";
			                str += ">";
			                str += "</a>";
			                str += "</li>";
			            }
			            $('#pageBox').html("");
			            $('#pageBox').html(str);
			    		
	       			}//not null if
			}//success
		});//ajax
		
   
	}//function	
	
	function todoList(){
		var todolistNo = $('input[name=todolistNo]').val();
		 $.ajax({
		        type: 'post',
		        url: "<c:url value='/myBoard/selectTodoList'/>",
		        data:{todolistNo: todolistNo},
		        dataType: 'json',
		        error: function(xhr, status, error){
		            alert(error);
		        },
		        success: function(res){
		            console.log(res); // 서버 응답 확인
		            var toDoList="";
		            var totalCount=0;
		            var checkedCount=0;
		            var uncheckCount=0;
		            
		            $('.checkedList').html('');
		            $('.uncheckList').html('');
	            	
		            
		            $.each(res, function(idx, item){
		            	totalCount++;
	            		if(item.STATUS==='Y'){
	            			toDoList="<div class='d-flex align-items-center border-bottom py-2 todoList'>";
		            		toDoList+="<input class='form-check-input m-0' type='checkbox' name='todoDetailNo' value='"+item.TODO_DETAIL_NO+"'>";
		            		toDoList+="<div class='w-100 ms-3'>";
		            		toDoList+="<div class='d-flex w-100 align-items-center justify-content-between'>";
		            		toDoList+="<span>"+item.TODO_CONTENT+"</span>";
		            		if(item.MEM_NO){
		            			toDoList+="<img src='<c:url value='/img/mem_images/"+item.MEM_IMAGE+"'/>' alt='담당자 이미지' class='mem_img' id='addMem_img'>";
		            		}else{
		                 		toDoList+="<span style='text-align:left;'><a href='#' data-bs-toggle='modal' data-bs-target='#staticBackdrop' id='addMem'>담당자 등록</a></span>";
		            		}		            		
		            		toDoList+="</div>";
		            		toDoList+="</div>";
		            		toDoList+="</div>";
		            		$('.uncheckList').append(toDoList);	 
		            	
		            		uncheckCount++;

	            		}else{
		            		toDoList="<div class='d-flex align-items-center border-bottom py-2 todoList'>";
		            		toDoList+="<input class='form-check-input m-0' type='checkbox' name='todoDetailNo' value='"+item.TODO_DETAIL_NO+"' checked>";
		            		toDoList+="<div class='w-100 ms-3'>";
		            		toDoList+="<div class='d-flex w-100 align-items-center justify-content-between'>";
		            		toDoList+="<span>"+item.TODO_CONTENT+"</span>";
		            		if(item.MEM_NO){
		            			toDoList+="<img src='<c:url value='/img/mem_images/"+item.MEM_IMAGE+"'/>' alt='담당자 이미지' class='mem_img'>";
		            		}
		            		toDoList+="</div>";
		            		toDoList+="</div>";
		            		toDoList+="</div>";
		            		$('.checkedList').append(toDoList);	
		            		checkedCount++;
	            		}
	            		
	            		
	            	});//each
	            	
		            if(uncheckCount===0){
	            		toDoList="<div class='d-flex align-items-center border-bottom py-2 todoList'>";
	            		toDoList+="모든 계획을 달성하셨습니다🎉";
	            		toDoList+="</div>";		 
	            		$('.uncheckList').append(toDoList);
            		}else if(checkedCount===0){
	            		toDoList="<div class='d-flex align-items-center border-bottom py-2 todoList'>";
	            		toDoList+="아직 실행된 계획이 없습니다! 조금만 더 힘내요👍";
	            		toDoList+="</div>";		 
	            		$('.checkedList').append(toDoList);
            		}
            			
            	
	           		$('#checkResult').text(checkedCount+"/"+totalCount);
	           		$('#checkedCount').text(checkedCount);
	           		$('#uncheckCount').text(uncheckCount);
	            	
	           		var result = (checkedCount / totalCount) * 100;
	           		$('.progress-bar').css('width', result + "%");
	           		$('.progress-bar').text(result + "%");
	       	 }
		});
	}

	

	
</script>

<form method="post" name="sendFrom">
	<input type="hidden" name="currentPage">
	<input type="hidden" name="contentno" value="${map['TEAM_BOARD_NO']}">
</form>
<c:set var="checkedCount" value="0"/>
<c:set var="uncheckedCount" value="0"/>
<c:set var="totalCount" value="0"/>  
<div class="container-fluid pt-4 px-4" id="board_style">
	<div class="bg-secondary text-center rounded p-4">
    	<div class="bg-secondary rounded h-100 p-4">
          	<nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item active" aria-current="page">
			    	<a href="<c:url value='/myBoard/teamWorkBoardList?mBoardNo=${map["M_BOARD_NO"]}'/>">${myBoardName}</a>
			    </li>
			    <li class="breadcrumb-item active" aria-current="page">업무게시판</li>
			  </ol>
			</nav>   			
			<div id="teamWorkBoardDetail">
	        	<div class="detailWrap">
	        	
		        	<div class="detail_title">
		        		<div class="detail_left">
			        		<span class="title_txt">${map['TEAM_BOARD_TITLE']}</span>
							<span class="title_date">
								<fmt:formatDate value="${map['REGDATE']}" pattern="a hh:mm" />
							</span>
						</div><!-- detail_left -->
						<div class="detail_right">조회수 : ${map['VIEWS']}</div>
		        	</div><!-- detail_title -->
		        	
		       		<div class="user_info">		
		       			<div class="detail_left">
							<div class="user_img">
			        			<c:set var="userimg" value="default_user.png"/>
			        			<c:if test="${!empty map['MEM_IMAGE']}">
			        				<c:set var="userimg" value="${map['MEM_IMAGE']}"/>
			        			</c:if>								
			        			<img src="<c:url value='/img/mem_images/${userimg}'/>" alt="사원프로필">
			        		</div><!-- user_img -->
			        		<div class="detail_left">
			        			<span class="user_name"><a href="#">${map['MEM_NAME']}</a></span>
			        			<span class="user_dept">/ 💼${map['DEPT_NAME']}</span>
			        		</div><!-- detail_left -->
		        		</div><!-- detail_left -->
		        		
		        		<c:if test="${!empty map['ORIGIN_FILENAME']}">		       		        		       				        	
			        		<div class="detail_right">
			        			💾 <a style="color:#fff;" href="<c:url value='/myBoard/teamWordBoardDownloadFile?teamBoardNo=${map["TEAM_BOARD_NO"]}&fileName=${map["FILENAME"]}'/>">
			        				${map['ORIGIN_FILENAME']}(<fmt:formatNumber value="${map['FSIZE'] /1024.0}" type="number" pattern="#.##"/> KB)
			        				</a>
			        		</div><!-- detail_right -->
			        	</c:if>
			        	
		       		</div><!-- user_info -->
		       				 
		       		<div class="detail_content">
		       			<div class="detail_view">
		       				${map['TEAM_BOARD_CONTENT']}
		       			</div>
		       			
						<fmt:parseDate var="startRegdateFmt" value="${toDoList.startRegdate}" pattern="yyyy-MM-dd HH:mm:ss" />
						<fmt:parseDate var="doneRegdateFmt" value="${toDoList.doneRegdate}" pattern="yyyy-MM-dd HH:mm:ss" />
						
		       			<div class="detailTodoList">
		       			<input type="hidden" name="todolistNo" value="${toDoList.todolistNo}">
	       					<div class="result_Box">
	       						<div class="result_txt">
	       							<h6 class="mb-0">⌛진행사항(<span id="checkResult"></span>)</h6>
	       						</div>
				       			<div class="todoDate">
								    <span>🗓️프로젝트 진행일정:
								     <fmt:formatDate value="${startRegdateFmt}" pattern="yyyy-MM-dd"/> ~ 
								     <fmt:formatDate value="${doneRegdateFmt}" pattern="yyyy-MM-dd"/>🗓️
								    </span>
								</div>		       						
								<div class="progress result_progress" role="progressbar" aria-label="Warning example" 
									aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:100%">
								 	<div class="progress-bar text-bg-Danger" style="width: 75%">75%</div>
								</div>
							</div>
		   
                            <h8>📍진행중(<span id="uncheckCount"></span>)</h8>
                            <div class="uncheckList">
                            	
	                            		
                       		</div>
                       		
	                        <br>
	                        
	                        <h8>📍완료(<span id="checkedCount"></span>)</h8>
	                        <div class="checkedList">
	                        	
	                        	
                  	
	                        </div>                 
		       			</div> <!--writeTodoList -->
		       					     			
		       			<div class="detail_option_btn">
		       				<span class="user_dept">
		       					<a href="<c:url value='/myBoard/teamWorkBoard?mBoardNo=${map["M_BOARD_NO"]}'/>">목록</a>
		       				</span>
		       				<c:if test="${userid==map['MEM_ID']}">
		       					<span class="user_dept">
		       						<a href="<c:url value='/myBoard/teamWorkBoardEdit?mBoardNo=${map["M_BOARD_NO"]}&teamBoardNo=${map["TEAM_Board_NO"]}'/>">
		       						수정
		       						</a>
		       					</span>
		       					
			        			<span class="user_dept">
			        				<a href="#" id="del">삭제</a>
			        			</span>
		        			</c:if>
		       			</div>
		       		</div><!-- detail_content -->
	       		</div><!-- detailWrap -->	 
	       		
	       		<!-- 댓글 리스트 -->
	       		<div class="detail_reply_wrap">
	       			<div class="reply_tit"></div>
	       			<div class="reply_list">


	       			</div><!-- reply_list -->
	       		 
	       			<!-- 댓글 등록 -->
	       			<form name="reply_frm" method="post" action="#">
	       				<input type="hidden" name="memNo" id="memNo" value="${userNo}">
	       				<input type="hidden" name=contentno id="contentno" value="${map['TEAM_BOARD_NO']}"> 
	       				<input type="hidden" name="mBoardNo" id="mBoardNo" value="${map['M_BOARD_NO']}">
	       				<input type="hidden" name="step" value="${map['STEP']}">
	       				
			       			<div class="reply_write">
							<div class="form-floating">
							  <textarea class="form-control" placeholder="Comments" 
							  id="addComment" name="comments"
							   style="height: 100px"></textarea>
							  <label for="floatingTextarea2">Comments</label>
							</div>	
							       				
		       				<div class="reply_add">
		       					<button class="reply_add_btn" id="add_reply">등록</button>
		       				</div>
		       			</div><!-- reply_write -->
	       			</form><!-- 댓글 등록 -->
	       		  </div><!-- detail_reply_wrap -->
		       			
			      <div class="page_box">
				      <nav aria-label="Page navigation example">
						  <ul class="pagination justify-content-center" id="pageBox">
		
						  </ul>
					</nav>
				</div><!-- page_box --> 	
	       	
				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
       					 <h1 class="modal-title fs-5" id="staticBackdropLabel" style="color:#191C24">팀 멤버</h1>
       				  </div>				    
				      <div class="modal-body">
				        <div class="memListBox">
				        <input type="hidden" name="todoDetailNo" value="">   
					        <c:forEach var="memMap" items="${mem_list}">
					        	<div class="mem_list_content">
									<div class="mem_img_box">
										<img src="<c:url value='/img/mem_images/${memMap["MEM_IMAGE"]}'/>" alt="사원이미지">
									</div>
									<div class="mem_info_box">
										<div>${memMap["MEM_NAME"]}/${memMap["POSITION_NAME"]}</div>
										<div>${memMap["DEPT_NAME"]}</div>
										<input type="hidden" name="memNo" value=${memMap["MEM_NO"]}>   
										
									</div> 
								</div><!-- mem_list_content --> 
							</c:forEach>	
				        </div><!-- memListBox -->
				      </div>
				      <div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
				      </div><!-- Modal-footer -->
				    </div><!-- modal-content -->
				  </div>
				</div>
				<!--Modal-->	
			</div><!-- detail_reply_wrap -->  			       		
		</div><!-- teamNoticeDetail -->
	</div>
</div>


<script>
	$(function(){
	
				
	})
</script>
<%@include file="../inc/bottom.jsp"%>  