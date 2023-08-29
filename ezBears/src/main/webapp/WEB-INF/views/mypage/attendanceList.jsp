<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.ez.ezBears.attendance.model.AttendanceVO"%>
<%@ page import="java.util.Date" %>
<%@page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("HH:mm:ss");
	Calendar cal = Calendar.getInstance();
	cal.setTime(nowTime); // 10분 더하기
%>
<%@include file="../inc/top.jsp"%>

<style type="text/css">
	.stats-List{
		font-size: 14px;
		text-align: center;
		border-collapse: collapse;
		border-top: 2px solid rgb(200, 200, 200);
		border-bottom: 2px solid rgb(200, 200, 200);
	}
	.stats-List tr {
		border-top: 1px solid rgb(200, 200, 200);
		height: 45px;
	}
	.stats-List tr:hover {
		background-color: rgb(250, 250, 250);
	}
	.stats-List th {
		background-color: rgb(240, 240, 240);
	}
	.stats-List .th-1 {
		width: 180px;
	}
	.stats-List .th-2 {
		width: 630px;
	}
	.stats-List .th-3 {
		width: 810px;
	}
	.stats-List a {
		text-decoration: none;
		color: black;
		cursor: pointer;
	}
	.stats-List span {
		padding: 5px 10px;
		border-radius: 4px;
		border: 1px;
		color: white;
	}
	.att-header {
		width: 100%;
		height: 153px;
		margin: 10px 0;
	}
	.div-time-btn {
		width: 40%;
		height: 100%;
		float: left;
		min-width: 340px;
	}
	#now-time {
		font-size: 70px;
	}
	.div-time-btn form{
		display: inline-block;
	}
	.btn-sub {
		width: 115px;
		height: 60px;
		background: rgb(117, 144, 194);
		border: none;
		border-radius: 4px;
		color: white;
		font-size: 17px;
	}
	#button1 {
		margin-right: 25px;
	}
	.div-stats {
		width: 90%;
		height: 100%;
		/* float: right; */
		display: inline-flex;
    	align-items: flex-end;
    	min-width: 515px;
	}
	.t-search {
		margin: 20px 0 10px;
		width: 50%;
		margin-right: auto;
		text-align: center;
		border-collapse: collapse;
    	border: 2px solid rgb(200, 200, 200);
    	min-width: 430px;
	}
	.t-search tr {
		height: 45px;
	}
	.t-search-title {
	    background-color: rgb(240, 240, 240);
	    width: 200px;
	}
	.t-search input {
		vertical-align: middle;
	}
	.t-search input[name="date"] {
		height: 30px;
		font-size: 14px;
		border: 1px solid gray;
		border-radius: 4px;
		width: 120px;
		margin-right: 15px;
	}
	.t-search input[type="submit"] {
		background: white;
		border: 1px solid gray;
		border-radius: 4px;
		width: 55px;
		height: 31px;
		font-size: 14px;
	}
</style>

<script>
$(document).ready(function () { 
    startDate();
    if("${date}" != "") {
    	$("#nowMonth").val("${date}");
    }else {
		$("#nowMonth").val(new Date().toSIOString().slice(0, 7));
    }
});

function startDate() { 
    date = setInterval(function () { 
        var dateString = "";
        var newDate = new Date();
        dateString += ("0" + newDate.getHours()).slice(-2) + ":"; 
        dateString += ("0" + newDate.getMinutes()).slice(-2) + ":"; 
        dateString += ("0" + newDate.getSeconds()).slice(-2);
        //document.write(dateString); 문서에 바로 그릴 수 있다. 
        $("#now-time").text(dateString); 
        $("#in-time").val(dateString); 
        $("#up-time").val(dateString); 
    }, 1000); 
}
</script>

<!-- Blank Start -->
<div class="container-fluid pt-4 px-4">
    <div class="row vh-110 bg-secondary rounded align-items-center justify-content-center mx-0">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
	           <ol class="breadcrumb" style="margin-left: 0.5%;">
	             <li class="breadcrumb-item active" aria-current="page">
	                <a href="<c:url value='/attendanceManagement/attendanceSearch'/>">근태 관리</a>
	             </li>
	             <li class="breadcrumb-item active" aria-current="page">출/퇴근 현황</li>
	           </ol>
         	</nav>
        <div class="col-md-8 text-center">
        	<h3>근태 목록 상세보기</h3><br>
        </div>

	
			<div class="s-container">
				<div class="att-header">
					<%-- <div class="div-time-btn">
						<div id="now-time"><%= sf.format(cal.getTime()) %></div>
						<form action="/attendance/registerAtt.sw" method="post">
							<input type="hidden" id="in-time" name="attStrTime">
							<input type="submit" id="button1" class="btn-sub" value="출근">
						</form>
						<form action="/attendance/modifyAtt.sw" method="post">
							<input type="hidden" id="up-time" name="attFinTime">
							<input type="submit" id="button2" class="btn-sub" value="퇴근">
							 <br>
						</form>		
					</div> --%>
				   	<div class="div-stats">
						<table class="stats-List">
							<tr><th colspan="3">통계</th></tr>
							<tr>
								<th class="th-1">지각</th>
								<th class="th-1">조퇴</th>
								<th class="th-1">출근</th>
							</tr>
							<c:if test="<%-- ${sessionScope.memNum eq member.memNum } --%>">
							<tr>
								<%-- <c:forEach items="${sList }" var="attStats">
											<td>${attStats.attCount}</td>
								</c:forEach> --%>
							</tr>	
							</c:if>
						</table>
					</div>
				</div>
				<!-- 검색일<input type="text" id="searchDate">  -->
				<form action="/attendance/searchDate.sw" method="post">
			    	<table class="t-search">
			    	<tr>
			    		<td class="t-search-title">
			    			검색일
			    		</td>
			    		<td>
				      		<input type="month" id="nowMonth" name="date">
				      		<input type="submit" value="검색">
				      	</td>
				     </tr>
			    	</table>
			    </form>
					<div class="div-stats">
						<table class="stats-List">
							<tr>
								<th class="th-1">날짜</th>
								<th class="th-1">출근시간</th>
								<th class="th-1">퇴근시간</th>
								<th class="th-1">근무시간</th>
								<th class="th-1">근무상태</th>
							</tr>
							<%-- <c:forEach items="${aList }" var="attendance">
							<c:if test="${sessionScope.memNum eq member.memNum }">
							<tr>
								<td>${attendance.attDate }</td>
								<td>${attendance.attStrTime }</td>
								<td>${attendance.attFinTime }</td>
								<td>${attendance.attTotalTime }</td>
								<td>${attendance.attStatus }</td>
							</tr>
							</c:if>
							</c:forEach> --%>
						</table>
						<br>
					</div>
			</div>

    </div>
</div>
<!-- Blank End -->










<%@include file="../inc/bottom.jsp"%>