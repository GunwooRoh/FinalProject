<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../inc/top.jsp"%>

<html lang="ko">
<head>
<meta charset="utf-8">
<title>이젠 베어스 - 그룹웨어 시스템</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<!-- Favicon -->
<link href="/ezBears/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/ezBears/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="/ezBears/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="/ezBears/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/ezBears/css/custom.css">

<!-- Template Stylesheet -->
<link href="/ezBears/css/style.css" rel="stylesheet">
<script type="text/javascript" src="/ezBears/js/jquery-3.7.0.min.js"></script>

</head> 
	<!-- header -->
	<div id="contents" class="content01">
		<!--sub title & location -->
		<div class="location">
			<span class="home"><a href="/Default.aspx"><img
					src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/common/ico_home.gif"
					alt="홈으로" /></a></span> &gt; <span class="depth1">

		</div>
		<h4 class="tit-page">선수페이지 (투수)</h4>
		<!-- // sub title & location -->

		<div class="sub-content">
			<div class="player_info">
				<h4 id="h4Team" class="team regular/2023/emblem_OB">
				두산 베어스
				</h4>

				<div class="player_basic">
					<div class="photo">
						<img
							id="cphContents_cphContents_cphContents_playerProfile_imgProgile"
							onerror="this.src=&#39;//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/common/no-Image.png&#39;"
							src="//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/person/middle/2023/67266.jpg"
							alt="박치국" />
					</div>
					<ul>
						<li class="odd"><strong>선수명: </strong><span
							id="cphContents_cphContents_cphContents_playerProfile_lblName">박치국</span></li>
						<li><strong>등번호: </strong>No.<span
							id="cphContents_cphContents_cphContents_playerProfile_lblBackNo">1</span></li>
						<li class="odd"><strong>생년월일: </strong><span
							id="cphContents_cphContents_cphContents_playerProfile_lblBirthday">1998년
								03월 10일</span></li>
						<li><strong>포지션: </strong><span
							id="cphContents_cphContents_cphContents_playerProfile_lblPosition">투수(우언우타)</span></li>
						<li class="odd"><strong>신장/체중: </strong><span
							id="cphContents_cphContents_cphContents_playerProfile_lblHeightWeight">177cm/78kg</span></li>
						<li><strong>경력: </strong><span
							id="cphContents_cphContents_cphContents_playerProfile_lblCareer">인천숭의초-인천신흥중-제물포고</span></li>
						<li class="odd"><strong>입단 계약금: </strong><span
							id="cphContents_cphContents_cphContents_playerProfile_lblPayment">14000만원</span></li>
						<li><strong>연봉: </strong><span
							id="cphContents_cphContents_cphContents_playerProfile_lblSalary">10500만원</span></li>
						<li class="odd"><strong>지명순위: </strong><span
							id="cphContents_cphContents_cphContents_playerProfile_lblDraft">17
								두산 2차 1라운드 10순위</span></li>
						<li><strong>입단년도: </strong><span
							id="cphContents_cphContents_cphContents_playerProfile_lblJoinInfo">17두산</span></li>
					</ul>
				</div>


				<div class="tab-depth1 mt20">
					<ul class="tab">
						<li><a
							href="/Record/Player/HitterDetail/Basic.aspx?playerId=67266">타자</a></li>
						<li class="on"><a href="Basic.aspx?playerId=67266">투수</a></li>
					</ul>
					<span class="record-words"><a href="#">기록용어</a></span>
					<div class="words" id="words"></div>
				</div>
				<div class="tab-depth2">
					<ul class="tab">
						<li class="on"><a href="#null">기본기록</a></li>
						<li><a href="Total.aspx?playerId=67266">통산기록</a></li>
						<li><a href="Daily.aspx?playerId=67266">일자별기록</a></li>
						<li><a href="Game.aspx?playerId=67266">경기별기록</a></li>
						<li><a href="Situation.aspx?playerId=67266">상황별기록</a></li>
						<li class="last"><a href="SeasonReg.aspx?playerId=67266">등록일수</a></li>
					</ul>
				</div>
			</div>
			<div class="player_records">
				<h6>2023 성적</h6>
				<div class="btn-square btn-arrow">
					<a href="/Futures/Player/PitcherDetail.aspx?playerId=67266"
						class="btn">KBO 퓨처스리그 기록 보기</a>
				</div>

				<div class="tbl-type02 tbl-type02-pd0 mb35">
					<table class="tbl tt mb5" cellspacing="0" cellpadding="0"
						summary="투수성적으로 평균자책점,경기수,완투,완봉,승리,패배,세이브,홀드,승률,타자수,투구수,이닝,피안타,2루타,3루타,홈런을 표시합니다">
						<thead>
							<tr>
								<th>팀명</th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="평균자책점">ERA</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="경기">G</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="완투">CG</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="완봉">SHO</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="승리">W</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="패배">L</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="세이브">SV</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="홀드">HLD</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="승률">WPCT</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="타자수">TBF</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="투구수">NP</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="이닝">IP</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="피안타">H</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="2루타">2B</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="3루타">3B</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="홈런">HR</a></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>두산</td>
								<td>2.65</td>
								<td>45</td>
								<td>0</td>
								<td>0</td>
								<td>4</td>
								<td>0</td>
								<td>2</td>
								<td>9</td>
								<td>1.000</td>
								<td>164</td>
								<td>641</td>
								<td>37 1/3</td>
								<td>37</td>
								<td>7</td>
								<td>0</td>
								<td>1</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="tbl-type02 mb35">
					<table class="tbl tt" cellspacing="0" cellpadding="0"
						summary="투수성적으로 희타,희비,볼넷,고의사구,삼진,폭투,보크,실점,자책점,WHIP,피안타율,퀄리티스타트를 표시합니다.">
						<thead>
							<tr>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="희생번트">SAC</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="희생플라이">SF</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="볼넷">BB</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="고의4구">IBB</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="삼진">SO</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="폭투">WP</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="보크">BK</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="실점">R</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="자책점">ER</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="블론세이브">BSV</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="이닝당 출루허용률">WHIP</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="피안타율">AVG</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="퀄리티스타트">QS</a></th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td>0</td>
								<td>0</td>
								<td>13</td>
								<td>1</td>
								<td>35</td>
								<td>2</td>
								<td>0</td>
								<td>11</td>
								<td>11</td>
								<td>1</td>
								<td>1.34</td>
								<td>0.250</td>
								<td>0</td>
							</tr>
						</tbody>
					</table>
				</div>

				<h6>최근 10경기</h6>

				<div class="tbl-type02 mb35">
					<table class="tbl tt" cellspacing="0" cellpadding="0"
						summary="최근 10경기 기록으로 평균자책점, 타자수,이닝,피안타,홈런,볼넷,사구,삼진,실점,자책점,타율을 표시합니다.">
						<thead>
							<tr>
								<th>일자</th>
								<th>상대</th>
								<th>결과</th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="평균자책점">ERA</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="타자수">TBF</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="이닝">IP</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="피안타">H</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="홈런">HR</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="볼넷">BB</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="사구">HBP</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="삼진">SO</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="실점">R</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="자책점">ER</a></th>
								<th><a onmouseenter="tooltip(this)" onmouseout="hideTip()"
									title="피안타율">AVG</a></th>
							</tr>
						</thead>
						<tfoot class="play_record">
							<tr>
								<th colspan="3">합계</th>
								<th>0.00</th>
								<th>29</th>
								<th>7 1/3</th>
								<th>5</th>
								<th>0</th>
								<th>2</th>
								<th>0</th>
								<th>8</th>
								<th>0</th>
								<th>0</th>
								<th>0.185</th>
							</tr>
						</tfoot>
						<tbody>

							<tr>
								<td>08.04</td>
								<td>KT</td>
								<td></td>
								<td>0.00</td>
								<td>4</td>
								<td>1</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0.250</td>
							</tr>

							<tr>
								<td>08.02</td>
								<td>한화</td>
								<td>승</td>
								<td>0.00</td>
								<td>3</td>
								<td>2/3</td>
								<td>0</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0.000</td>
							</tr>

							<tr>
								<td>08.01</td>
								<td>한화</td>
								<td></td>
								<td>0.00</td>
								<td>2</td>
								<td>1/3</td>
								<td>0</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0.000</td>
							</tr>

							<tr>
								<td>07.25</td>
								<td>롯데</td>
								<td></td>
								<td>0.00</td>
								<td>2</td>
								<td>2/3</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0.000</td>
							</tr>

							<tr>
								<td>07.21</td>
								<td>KIA</td>
								<td></td>
								<td>0.00</td>
								<td>4</td>
								<td>2/3</td>
								<td>2</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0.500</td>
							</tr>

							<tr>
								<td>07.07</td>
								<td>키움</td>
								<td>홀</td>
								<td>0.00</td>
								<td>3</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0.000</td>
							</tr>

							<tr>
								<td>07.06</td>
								<td>삼성</td>
								<td></td>
								<td>0.00</td>
								<td>4</td>
								<td>1</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0.250</td>
							</tr>

							<tr>
								<td>07.04</td>
								<td>삼성</td>
								<td></td>
								<td>0.00</td>
								<td>2</td>
								<td>2/3</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0.000</td>
							</tr>

							<tr>
								<td>07.02</td>
								<td>롯데</td>
								<td>홀</td>
								<td>0.00</td>
								<td>2</td>
								<td>2/3</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0.000</td>
							</tr>

							<tr>
								<td>06.30</td>
								<td>롯데</td>
								<td></td>
								<td>0.00</td>
								<td>3</td>
								<td>2/3</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0.333</td>
							</tr>

						</tbody>
					</table>
				</div>

				<h6>연도별 TOP 10</h6>
				<div class="tbl-type02 mb35">
					<table class="tbl" cellspacing="0" cellpadding="0"
						summary="연도별 TOP 10 기록입니다.">
						<thead>
							<tr>
								<th>연도</th>
								<th>항목</th>
								<th>기록</th>
								<th>순위</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td>2020</td>
								<td>경기</td>
								<td>63</td>
								<td>6</td>
							</tr>

							<tr>
								<td>2018</td>
								<td>경기</td>
								<td>67</td>
								<td>6</td>
							</tr>

							<tr>
								<td>2018</td>
								<td>홀드</td>
								<td>17</td>
								<td>4</td>
							</tr>



						</tbody>
					</table>
				</div>

				<div id="cphContents_cphContents_cphContents_pnlRoster">

					<h6 class="blue">KBO 리그 엔트리 등록 일수</h6>
					<div class="tbl-type02 mb35">
						<table class="tbl" cellspacing="0" cellpadding="0"
							summary="KBO 리그 엔트리 등록 일수입니다.">
							<thead>
								<tr>
									<th>구분</th>
									<th>시작</th>
									<th>종료</th>
									<th>일수</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<th>두산</th>
									<td>2023-04-01</td>
									<td>2023-08-05</td>
									<td>127</td>
									<!--<td>127</td>-->
								</tr>



							</tbody>
							<tfoot class="blue">
								<tr>
									<th>시즌합계</th>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>127</td>
								</tr>
							</tfoot>
						</table>
					</div>

					<h6 class="blue">KBO 리그 엔트리 말소 일수</h6>
					<div class="tbl-type02">
						<table class="tbl" cellspacing="0" cellpadding="0"
							summary="KBO 리그 엔트리 말소 일수입니다.">
							<thead>
								<tr>
									<th>구분</th>
									<th>시작</th>
									<th>종료</th>
									<th>일수</th>
								</tr>
							</thead>
							<tbody>


								<tr>
									<td colspan="4">기록이 없습니다.</td>
								</tr>
							</tbody>
							<tfoot class="blue">

							</tfoot>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>

</div>
</section>





<script type="text/javascript">
	currentLnb("02");

	function tooltip(x) {
		var title = $(x).attr("title");
		$(x).append("<div class='tooltip'></div>");
		$(".tooltip").html(title);
		var cnt = $(".tooltip").text().length;
		$(".tooltip").css("width", cnt * 12);
		$(".tbl thead tr th:last-child").find("> a .tooltip").css({
			right : 0,
		});
		return false;
	}

	function hideTip() {
		$(".tooltip").remove();
	}

	$(".record-words a").on("click", function(e) {
		e.preventDefault();
		Words();
		$(".words").show();
	});
</script>



<script type="text/javascript">
	$(document).ready(function() {
		// 선수 검색
		$(document).on("click", "#btnTopPlayerSearch", function(e) {
			getPlayerSearch();
			e.preventDefault();
		});

		// 선수 검색 엔터
		$(document).on("keypress", "#txtTopPlayerWord", function(e) {
			if (event.keyCode == 13) {
				getPlayerSearch();
				e.preventDefault();
			}
		});

		//// 선수 검색 마우스 아웃
		//$("body").click(function (e) {
		//    var container = $("#player_search_area");

		//    if (container.css("display") == "block") {
		//        if (!container.has(e.target).length) {
		//            container.hide();
		//        }
		//    }
		//});

		// 21.06.29 | veron | 나중에 탭들 다 지우고 배너 다시 원복 후 이부분 삭제해야함
		// 8월 15일 00시 지나가면 삭제
		//if (new Date().getTime() > new Date("2021/08/15 00:00:00").getTime()) {
		//	// 위에 탭 삭제
		//    $(".menu04 li:last").remove();
		//    $(".lnb-sub ul.lnb04 li:last").remove();
		//	// Player.master 삭제
		//    $("#liRookie").remove();
		//	// 메인 배너 교체
		//    $("#imgGijang").attr("href", "http://gijangcmc.or.kr/baseball/main/main.asp");
		//    $("#imgGijang img").attr("src", "//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome/resources/images/main/img_banner01.jpg");
		//}

		// 2023 미디어데이
		if (new Date().getTime() < new Date("2023/03/22 09:00:00"))
			$('.lnbMedia').hide();
		// SaveSacrifice
		if (new Date().getTime() < new Date("2023/04/01 09:00:00"))
			$('[data-tab=SaveSacrifice]').hide();
		// ft
		//if (new Date().getTime() < new Date("2023/04/01 14:00:00"))
		//    $('[data-tab=KboFont]').hide();
	});

	// 선수 검색
	function getPlayerSearch() {
		if ($("#txtTopPlayerWord").val() == "") {
			alert("선수명은 필수 입니다.");
			$("#txtTopPlayerWord").focus();
			return false;
		} else {
			//var searchWord = encodeURI($("#txtTopPlayerWord").val());

			//if (searchWord != "") {
			//    location.href = "/Player/Search.aspx?searchWord=" + searchWord;
			//}
			var request = $.ajax({
				type : "post",
				url : "/ws/Controls.asmx/GetSearchPlayer",
				dataType : "json",
				data : {
					name : $("#txtTopPlayerWord").val()
				},
				error : ajaxFailed,
				async : true
			});

			request
					.done(function(data) {
						if (data.code == "100") {
							var container = $(".search-result");
							container.children().remove();

							container.hide();

							if (data.now.length > 0 || data.retire.length > 0) {
								// 2017-05-22 yeeun, 홍지희 사원 요청, 결과가 1명일 경우 바로 페이지 연결
								if (data.now.length + data.retire.length == 1) {
									var link = "";

									if (data.now.length == 1) {
										link = data.now[0]["P_LINK"];
									} else {
										link = data.retire[0]["P_LINK"];
									}

									location.href = link;
								} else {
									if (data.now.length > 0) {
										container.append($("<h4>등록 선수</h4>"));

										var div = $("<div class='active' />");
										div.children().remove();

										setPlayerDiv(data.now, div, true);

										container.append(div);
									}

									if (data.retire.length > 0) {
										container.append($("<h4>역대 선수</h4>"));

										var div = $("<div class='retire'/>");
										div.children().remove();

										setPlayerDiv(data.retire, div, false);

										container.append(div);
									}

									//container.append($(String.format("<p><a href='/Player/Search.aspx?searchWord={0}''>'{0}' 검색결과 모두 보기</a></p>", $("#txtTopPlayerWord").val())));
									container
											.append($("<p><a href='/Player/Search.aspx?searchWord="
													+ $("#txtTopPlayerWord")
															.val()
													+ "''>'"
													+ $("#txtTopPlayerWord")
															.val()
													+ "' 검색결과 모두 보기</a></p>"));
									container.show();
								}
							} else {
								container
										.append($("<p class='null'>검색 결과가 없습니다.</p>"));
								container.show();
							}
						}
					});
		}
	}

	// 선수 검색 div 
	function setPlayerDiv(list, div, isActive) {
		$
				.each(
						list,
						function(index, player) {
							var aLink = $("<a />");
							aLink.attr("href", player["P_LINK"]);

							var dl = $("<dl />");
							var dt = $("<dt />");
							var backNo = "";

							if (isActive) {
								//backNo = String.format("No.{0}", player["BACK_NO"]);
								backNo = "No." + player["BACK_NO"];
							}

							//dt.text(String.format("{0} {1}", player["P_NM"], backNo));
							dt.text(player["P_NM"] + " " + backNo);
							dl.append(dt);

							var dd = $("<dd />");
							//dd.text(String.format("{0} {1}({2})", player["T_NM"], player["POS_NO"], player["P_TYPE"]));
							dd.text(player["T_NM"] + " " + player["POS_NO"]
									+ "(" + player["P_TYPE"] + ")");
							dl.append(dd);

							var ddImg = $(String
									.format(
											"<dd class='btn-arrow'><img src='{0}/resources/images/common/btn_arrow_search.png' alt='' /></dd>",
											"//lgcxydabfbch3774324.cdn.ntruss.com/KBO_IMAGE/KBOHome"));
							dl.append(ddImg);

							aLink.append(dl);
							div.append(aLink);
						});
	}
</script>
</body>
</html>