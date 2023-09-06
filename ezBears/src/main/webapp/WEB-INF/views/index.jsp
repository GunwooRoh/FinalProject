<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="inc/top.jsp"%>
<script>
	$(function(){
		
		//네이버 뉴스 api 호출
		naverNewsLoad();
		setInterval(naverNewsLoad,10000);
		//600000

		
        // 차트 컨테이너의 크기에 맞게 canvas 크기 조절
        var chartContainer = document.getElementById('todoChart');
        var canvas = document.getElementById('myChart');
        
        canvas.width = chartContainer.clientWidth;
        canvas.height = chartContainer.clientWidth; // 정사각형으로 유지
        
        // 도넛 차트 데이터 설정
        var ctx = canvas.getContext('2d');
        var myDoughnutChart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                datasets: [{
                    data: [70, 30],
                    backgroundColor: ['#31354e', '#7000D8'],
                    borderColor: ['#31354e', '#7000D8']
                }]
            },
            options: {
                responsive: false,
                maintainAspectRatio: false,
                cutoutPercentage: 60,
                tooltips: { enabled: false },
                hover: { mode: null },
                legend: { display: false }
            }
        });	
        
        onGeoOk();//현재 위치 찾기
		
	
        
	});//$(function(){
	
	//카카오 로컬 api
	function kakaoLocalAPI(lat,lon){
		const apiKey = 'e8b1be33da3da4477e59ef1650fbd429';
		const apiUrl = "https://dapi.kakao.com/v2/local/geo/coord2address.json?x="+lon+"&y="+lat+"&input_coord=WGS84";

		$.ajax({
		  url: apiUrl,
		  type: 'GET',
		  headers: {
		    'Authorization': 'KakaoAK '+ apiKey ,
		  },
		  success: function (data) {
		    // API 요청이 성공한 경우의 처리
		    console.log(data);
		    var address1 = data.documents[0].address.region_1depth_name; 
		    var address2 = data.documents[0].address.region_2depth_name; 
		    var address3 = data.documents[0].address.region_3depth_name;
		    var address = address1 + " " + address2 + " " + address3;
		    $('.place').append(address);
		  },
		  error: function (error) {
			console.error('API 요청 중 오류 발생:', error);
		  },
		});
	}


	function OpenWeatherMap(lat,lon){
		$.ajax({
			  url: "https://api.openweathermap.org/data/2.5/weather?lat="+lat+"&lon="+lon+"&appid=e27bb9d898f2ce8fcd7c8a56b3219198",
			  method: 'GET',
			  dataType: 'json',
			  success: function (data) {
			    console.log(data); 
				//오늘날짜
			    var currentTime = convertTime()+" 날씨";
		        $('.nowtime').append(currentTime);
		        
		        kakaoLocalAPI(lat,lon);
		       
		        var nowTeamp = (data.main.temp -273.15).toFixed(1);
		        var lowTemp = (data.main.temp_min - 273.15).toFixed(1);
		      	var hightTemp = (data.main.temp_max - 273.15).toFixed(1);
		        
		        $('.nowTemp').append(nowTeamp);
		        $('.lowTemp').append(lowTemp);
		        $('.hightTemp').append(hightTemp);

		        //날씨아이콘출력
		        var weathericonUrl =
		            '<img src= "http://openweathermap.org/img/wn/'
		            + data.weather[0].icon +
		            '.png" alt="' + data.weather[0].description + '"/>'

		        $('.weatherIcon').html(weathericonUrl);
		        
			  },
			  error: function (error) {
			    console.error('API 요청 중 오류 발생:', error);
			  },
			});		
	}
		
	
	//현재 위치 (위도, 경도) 찾기 + 날씨 api (OpenWeatherMap API)
    function onGeoOk(position) {
        const lat = position.coords.latitude;
        const lon = position.coords.longitude;
        OpenWeatherMap(lat, lon)
	}
	
	
	
	function onGeoError() {
	    alert("날씨를 제공할 위치를 찾을 수 없습니다.")
	}
	navigator.geolocation.getCurrentPosition(onGeoOk, onGeoError);
	
	
	//오늘 날짜출력
    function convertTime() {
    	var now = new Date();
    	var year = now.getFullYear();
    	var month = (now.getMonth() + 1).toString().padStart(2, '0');
    	var date = now.getDate().toString().padStart(2, '0');
    	return year + '년 ' + month + '월 ' + date + '일';
       
    }


	
	//네이버 뉴스 api
	function naverNewsLoad(){
		var newContent="";
		
        $.ajax({
            type: 'post',
            url: "<c:url value='/api/naverNews'/>",
            dataType: 'json',
            error: function(xhr, status, error) {
                alert(error);
            },
            success: function(res) {
                console.log(res);
              	$('#naverNews thead').html('');
               	$('#naverNews tbody').html('');
               	
                $.each(res.items, function(idx, item){
                	newContent+="<tr>";
                	newContent+="<td>";
                	newContent+="<a href='"+item.link+"'>"+item.title+"</a>";
                	newContent+="</td>";
                	newContent+="</tr>";
   	
                });

                const TIME_ZONE = 9 * 60 * 60 * 1000; // 9시간
                const d = new Date(res.lastBuildDate);

                const date = new Date(d.getTime() + TIME_ZONE).toISOString().split('T')[0];
                const time = d.toTimeString().split(' ')[0];

                console.log();

                var newsDate="<tr>";
                newsDate+="<th scope='col'>"+date + ' ' + time.substring(0, 5)+" 기준</th>"; // 시간 문자열에서 앞 5글자만 가져옴 (시:분)
                newsDate+="</tr>";


			    
              	$('#naverNews thead').append(newsDate);
               	$('#naverNews tbody').append(newContent);

            }
        });
	}

	
</script>
 <!-- Navbar End -->
 <!-- top ë©”ë‰´ ì¢…ë£Œ -->
<div id="main">
<c:if test="${type=='사원'}">
     <!-- 1번째 줄 -->
     <div class="container-fluid pt-4 px-4">
         <div class="row g-4">
             <div class="col-sm-12 col-md-6 col-xl-4">
                 <div class="h-100 bg-secondary rounded p-4">
                     <div class="d-flex align-items-center justify-content-between mb-2">
                         <h6 class="mb-0">이번 달 업무 달성률</h6>
                        
                     </div>
                     <div class="d-flex align-items-center py-3">
	                     <div class="todoChartBox">
	                     	<div class="todoChart" id="todoChart">
	                     		<canvas id="myChart" ></canvas>
						         <div class="chartText">
						         	<c:set var="result" value="${(completedCount / totalCount) * 100}"></c:set>
						         	<fmt:formatNumber var="result1" value="${result}" pattern="#,###"/>
						            <span class="chartText1">${result1}%</span><br>
						            <span class="chartText2">미완료 : ${incompleteCount}개</span><br>
						            <span class="chartText2">완료 : ${completedCount}개</span><br>
						            <span class="chartText2">전체 : ${totalCount}개</span>
						        </div>
	                     	</div>                    	
	                     </div>            
                     </div>
                    
                 </div>
             </div>

             <div class="col-sm-12 col-md-6 col-xl-4">
                 <div class="h-100 bg-secondary rounded p-4">
                     <div class="d-flex align-items-center justify-content-between mb-2">
                         <h6 class="mb-0">Weather</h6>
                     </div>
                     <div class="d-flex mb-2 todayWeather">
                     	<div class="weatherContent">
	                       	<div class="place"></div>
	                       	<div class="weatherIcon"></div>
	                       	<div class="weatherTemp">
	                       		<p class="nowTemp">현재기온 :</p>
	                       		<p class="lowTemp">최저기온 : </p>
	                       		<p class="hightTemp">최대기온 : </p>
	                       	</div>
	                       	<p class="nowtime"></p>
                       	</div>
                     </div>

                 </div>
             </div>
             
             <div class="col-sm-12 col-md-6 col-xl-4 naverNews">
                 <div class="h-100 bg-secondary rounded p-4">
                     <div class="d-flex align-items-center justify-content-between mb-4">
                         <h6 class="mb-0">최신 뉴스</h6>
                     </div>
                     <table class="table text-truncate" style="max-width: 95%;" id="naverNews">
						 <thead>

						  </thead>
						  <tbody>
						    						    
						</tbody>
					</table>                       
                 </div>
             </div>             
         </div>
     </div>
     <!-- <!-- 1번째 줄 --> 
     

     <!-- 2번째 줄 게시판 모음 -->   
     <div class="container-fluid pt-4 px-4">
         <div class="row g-4">
             <div class="col-sm-12 col-xl-6">
                 <div class="bg-secondary text-center rounded p-4">
                     <div class="d-flex align-items-center justify-content-between mb-2">
                         <h6 class="mb-0">공지사항</h6>
                     </div>
                     <div class="d-flex align-items-center py-3">
			           		<table class="table notice">
							 <thead>
							    <tr>
							      <th scope="col">제목</th>
							      <th scope="col">작성자</th>
							      <th scope="col">등록일</th>
							    </tr>
							  </thead>
							  <tbody>
							  <c:if test="${empty noticeList}">
							  	<tr>
							  		<th scope="row" colspan="4">등록된 게시글이 없습니다.</th>
							  	</tr>
							  </c:if>
							  <c:if test="${!empty noticeList}">
							  	<c:forEach var="noticeMap" items="${noticeList}">
							  	<fmt:formatDate var="regdate" value="${noticeMap['REGDATE']}" pattern="yyyy-MM-dd"/>
								    <tr>
								      <td>
								      	<a href="<c:url value='/notice/noticeDetail?noticeNo=${noticeMap["NOTICE_NO"]}'/>">
								      		${noticeMap['NOTICE_TITLE']}
								      	</a>
								      </td>
								      <td>${noticeMap['MEM_NAME']}</td>
								      <td>
								      	<c:if test="${noticeMap['DATEGAP']<1}">방금전</c:if>	
							      		<c:if test="${noticeMap['DATEGAP']>=1}">${regdate}</c:if>	
								      </td>
								    </tr>				  		
							  	</c:forEach>
							  </c:if>			    
							</tbody>
						</table>
                     </div>
                 </div>
             </div>
                        
             <div class="col-sm-12 col-xl-6">
                 <div class="bg-secondary text-center rounded p-4">
                     <div class="d-flex align-items-center justify-content-between mb-2">
                         <h6 class="mb-0">${mBoardName}</h6>
                         <a href="">변경하기</a>
                     </div>
                     <div class="d-flex align-items-center py-3">
			           		<table class="table">
							 <thead>
							    <tr>
							      <th scope="col">제목</th>
							      <th scope="col">작성자</th>
							      <th scope="col">등록일</th>
							    </tr>
							  </thead>
							  <tbody>
							  <c:if test="${empty myNoticeList}">
							  	<tr>
							  		<th scope="row" colspan="4">등록된 게시글이 없습니다.</th>
							  	</tr>
							  </c:if>
							  <c:if test="${!empty myNoticeList}">
							  	<c:forEach var="myNoticeMap" items="${myNoticeList}">
							  	<fmt:formatDate var="regdate" value="${myNoticeMap['REGDATE']}" pattern="yyyy-MM-dd"/>
								    <tr>
								      <td style="text-align:left;">
								      	<a href="<c:url value='/myBoard/teamNoticeDetail?mBoardNo=${myNoticeMap["M_BOARD_NO"]}&teamNoticeNo=${myNoticeMap["TEAM_NOTICE_NO"]}'/>">
								      		${myNoticeMap['TEAM_NOTICE_TITLE']} 
										</a>								      		
								      		
								      </td>
								      <td>${myNoticeMap['MEM_NAME']}</td>
								      <td>
							      		<c:if test="${myNoticeMap['DATEGAP']<1}">방금전</c:if>	
							      		<c:if test="${myNoticeMap['DATEGAP']>=1}">${regdate}</c:if>									      	
								      
								      </td>
								    </tr>				  		
							  	</c:forEach>
							  </c:if>			    
							</tbody>
						</table>
                     </div>
                 </div>
             </div>                
          </div>
     </div>
   <!-- 2번째 줄 게시판 끝 -->   
 	</c:if>
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	<!-- 스태프 메인 -->
 	<c:if test="${type=='스태프'}">
     <!-- 1번째 줄 -->
     <div class="container-fluid pt-4 px-4">
         <div class="row g-4">
             <div class="col-sm-12 col-md-6 col-xl-4">
                 <div class="h-100 bg-secondary rounded p-4">
                     <div class="d-flex align-items-center justify-content-between mb-2">
                         <h6 class="mb-0">공지사항</h6>
                     </div>
                     <div class="d-flex align-items-center py-3">
			           		<table class="table notice">
							 <thead>
							    <tr>
							      <th scope="col">제목</th>
							      <th scope="col">작성자</th>
							      <th scope="col">등록일</th>
							    </tr>
							  </thead>
							  <tbody>
							  <c:if test="${empty noticeList}">
							  	<tr>
							  		<th scope="row" colspan="4">등록된 게시글이 없습니다.</th>
							  	</tr>
							  </c:if>
							  <c:if test="${!empty noticeList}">
							  	<c:forEach var="noticeMap" items="${noticeList}">
							  	<fmt:formatDate var="regdate" value="${noticeMap['REGDATE']}" pattern="yyyy-MM-dd"/>
								    <tr>
								      <td>
								      	<a href="<c:url value='/notice/noticeDetail?noticeNo=${noticeMap["NOTICE_NO"]}'/>">
								      		${noticeMap['NOTICE_TITLE']}
								      	</a>
								      </td>
								      <td>${noticeMap['MEM_NAME']}</td>
								      <td>
								     	 <c:if test="${noticeMap['DATEGAP']<1}">방금전</c:if>	
							      		 <c:if test="${noticeMap['DATEGAP']>=1}">${regdate}</c:if>	
								      </td>
								    </tr>				  		
							  	</c:forEach>
							  </c:if>			    
							</tbody>
						</table>
                     </div>
                    
                 </div>
             </div>

             <div class="col-sm-12 col-md-6 col-xl-4">
                 <div class="h-100 bg-secondary rounded p-4">
                     <div class="d-flex align-items-center justify-content-between mb-2">
                         <h6 class="mb-0">Weather</h6>
                     </div>
                     <div class="d-flex mb-2 todayWeather">
                     	<div class="weatherContent">
	                       	<div class="place"></div>
	                       	<div class="weatherIcon"></div>
	                       	<div class="weatherTemp">
	                       		<p class="nowTemp">현재기온 :</p>
	                       		<p class="lowTemp">최저기온 : </p>
	                       		<p class="hightTemp">최대기온 : </p>
	                       	</div>
	                       	<p class="nowtime"></p>
                       	</div>
                     </div>

                 </div>
             </div>
             
             <div class="col-sm-12 col-md-6 col-xl-4 naverNews">
                 <div class="h-100 bg-secondary rounded p-4">
                     <div class="d-flex align-items-center justify-content-between mb-4">
                         <h6 class="mb-0">최신 뉴스</h6>
                     </div>
                     <table class="table text-truncate" style="max-width: 95%;" id="naverNews">
						 <thead>

						  </thead>
						  <tbody>
						    						    
						</tbody>
					</table>                       
                 </div>
             </div>             
         </div>
     </div>
     <!-- <!-- 1번째 줄 --> 
     

     <!-- 2번째 줄 게시판 모음 -->   
     <div class="container-fluid pt-4 px-4">
         <div class="row g-4">
             <div class="col-sm-12 col-xl-6">
                 <div class="bg-secondary text-center rounded p-4">
                     <div class="d-flex align-items-center justify-content-between mb-2">
                         <h6 class="mb-0">경기기록</h6>
                     </div>
                     <div class="d-flex align-items-center py-3">
<%-- 			     	<table class="table notice">
							 <thead>
							    <tr>
							      <th scope="col">제목</th>
							      <th scope="col">작성자</th>
							      <th scope="col">등록일</th>
							    </tr>
							  </thead>
							  <tbody>
							  <c:if test="${empty noticeList}">
							  	<tr>
							  		<th scope="row" colspan="4">등록된 게시글이 없습니다.</th>
							  	</tr>
							  </c:if>
							  <c:if test="${!empty noticeList}">
							  	<c:forEach var="noticeMap" items="${noticeList}">
							  	<fmt:formatDate var="regdate" value="${noticeMap['REGDATE']}" pattern="yyyy-MM-dd"/>
								    <tr>
								      <td>
								      	<a href="<c:url value='/notice/noticeDetail?noticeNo=${noticeMap["NOTICE_NO"]}'/>">
								      		${noticeMap['NOTICE_TITLE']}
								      	</a>
								      </td>
								      <td>${noticeMap['MEM_NAME']}</td>
								      <td>${regdate}</td>
								    </tr>				  		
							  	</c:forEach>
							  </c:if>			    
							</tbody>
						</table> --%>
                     </div>
                 </div>
             </div>
                        
             <div class="col-sm-12 col-xl-6">
                 <div class="bg-secondary text-center rounded p-4">
                     <div class="d-flex align-items-center justify-content-between mb-2">
                         <h6 class="mb-0">선수기록</h6>
                     </div>
                     <div class="d-flex align-items-center py-3">
			       	<%-- <table class="table">
							 <thead>
							    <tr>
							      <th scope="col">제목</th>
							      <th scope="col">작성자</th>
							      <th scope="col">등록일</th>
							    </tr>
							  </thead>
							  <tbody>
							  <c:if test="${empty myNoticeList}">
							  	<tr>
							  		<th scope="row" colspan="4">등록된 게시글이 없습니다.</th>
							  	</tr>
							  </c:if>
							  <c:if test="${!empty myNoticeList}">
							  	<c:forEach var="myNoticeMap" items="${myNoticeList}">
							  	<fmt:formatDate var="regdate" value="${myNoticeMap['REGDATE']}" pattern="yyyy-MM-dd"/>
								    <tr>
								      <td style="text-align:left;">
								      	<a href="<c:url value='/myBoard/teamNoticeDetail?mBoardNo=${myNoticeMap["M_BOARD_NO"]}&teamNoticeNo=${myNoticeMap["TEAM_NOTICE_NO"]}'/>">
								      		${myNoticeMap['TEAM_NOTICE_TITLE']} 
										</a>								      		
								      </td>
								      <td>${myNoticeMap['MEM_NAME']}</td>
								      <td>
							      		<c:if test="${myNoticeMap['DATEGAP']<1}">방금전</c:if>	
							      		<c:if test="${myNoticeMap['DATEGAP']>=1}">${regdate}</c:if>									      	
								      </td>
								    </tr>				  		
							  	</c:forEach>
							  </c:if>			    
							</tbody>
						</table> --%>
                     </div>
                 </div>
             </div>                
          </div>
     </div>
   <!-- 2번째 줄 게시판 끝 -->    	 
 	</c:if>
</div><!-- main -->
 <%@include file="inc/bottom.jsp"%>
