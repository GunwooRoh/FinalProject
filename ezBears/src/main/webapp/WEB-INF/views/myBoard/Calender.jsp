<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../inc/top.jsp"%>

    <!-- Recent Sales Start -->
    <div class="container-fluid pt-4 px-4" id="board_style">
        <div class="bg-secondary text-center rounded">
            <div class="bg-secondary rounded h-100 p-4">
               <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">마이보드</a></li>
                <li class="breadcrumb-item active" aria-current="page">개발1팀</li>
              </ol>
            </nav>
                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt" href="<c:url value='/myBoard/teamNotice'/>">공지사항</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt "  href="<c:url value='/myBoard/teamWorkBoard'/>">업무게시판</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt active"  href="<c:url value='/myBoard/Calender'/>">스케줄</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt "  href="<c:url value='/myBoard/Approval'/>">결재</a>
                    </li>      
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt"  href="<c:url value='/myBoard/webhard'/>">웹하드</a>
                    </li>                                  
                </ul>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active">

<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
    <link href= "<c:url value='/lib/fullcalendar/main.css'/>"  rel='stylesheet' />
    <script src="<c:url value='/lib/fullcalendar/main.js'/> "></script>
    <script src="<c:url value='/lib/fullcalendar/locales-all.min.js'/> "></script>
   
      
  <script>

  document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
      var calendar = new FullCalendar.Calendar(calendarEl, {
         initialView : 'dayGridMonth', //초기 캘린더 화면
         headerToolbar : {
            start : 'prev next today',
            center : 'title',
            end : 'dayGridMonth,dayGridWeek,dayGridDay'
         },
         titleFormat : function(date) {
            return date.date.year + '년 ' + (parseInt(date.date.month) + 1) + '월';
         },
         //initialDate: '2023-08-01', // 초기 날짜 설정 (설정 x => 오늘날짜)
         selectable : true, // 달력 일자 드래그 가능
         droppable : true,
         editable : true,
         nowIndicator: true, 
         locale: 'ko' // 한국어로 변경해주기
      });
      calendar.render();
   });

</script>
<body>
<div id='calendar'></div>
</body>
                  </div>
            </div>
            </div>
        </div>
    </div>
    <!-- Recent Sales End -->


   
 <%@include file="../inc/bottom.jsp"%>    