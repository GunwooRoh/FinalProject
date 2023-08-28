<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../inc/top.jsp"%>

<link href="${pageContext.request.contextPath}/css/choong/chi.css" rel="stylesheet">

<script type="text/javascript">
	function pageFunc(page) {
		$('input[name="currentPage"]').val(page);
		$('form[name="frmPage"]').submit();
	}
</script>

<!-- 페이징 처리 관련 form -->
<!-- /staff/staffList?currentPage=2&searchKeyword=gil&searchCondition=name -->
<form action="<c:url value='/team/teamList'/>" 
	name="frmPage" method="post">
	<input type="text" name="currentPage">
	<input type="text" name="searchKeyword" value="${param.searchKeyword}">
	<input type="text" name="searchCondition" value="${param.searchCondition}">
</form>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
		<div class="col-sm-12 col-xl-12">
		    <div class="bg-secondary rounded h-100 p-4">
	            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
		           <ol class="breadcrumb">
		             <li class="breadcrumb-item active" aria-current="page">
		                <a href="<c:url value='/team/teamList'/>">선수단 관리</a>
		             </li>
		             <li class="breadcrumb-item active" aria-current="page">선수단 목록</li>
		           </ol>
	         	</nav>
		        
				
		        <table class="table table-hover">
		            <thead>
		                <tr>
		                    <th scope="col">Player_NO</th>
		                    <th scope="col">이름</th>
		                    <th scope="col">Position_NO</th>
		                    <th scope="col">Back_No</th>
		                    <th scope="col">생일</th>
		                    <th scope="col">연봉</th>
		                </tr>
		            </thead>
		            <tbody>
		            	<c:if test="${empty list }">
		            		<tr>
		            			<th colspan="6">등록된 선수가 존재하지 않습니다.</th>
		            		</tr>
		            	</c:if>
		            	<c:if test="${!empty list }">
			            	<c:forEach var="map" items="${list }">
				                <tr>
				                    <td>${map.PLAYER_NO }</td>
				                    <td><a href="<c:url value='/team/teamDetail?playerNo=${map["PLAYER_NO"]}' />" style="color: #fff">${map['PLAYER_NAME'] }</a></td>
				                    <td>${map['B_POSITION_NAME'] }</td>
				                    <td>${map['BACK_NO'] }</td>
				                    <td><fmt:formatDate value="${map['PLAYER_BIRTH'] }" pattern="yyyy-MM-dd"/> </td>
				                    <td>${map['PLAYER_SAL']}</td>
				                </tr>
			            	</c:forEach>
		            	</c:if>
		            </tbody>
		        </table>
		        <br>
				<div class="divBtn">
				    <a href="<c:url value='/team/teamWrite'/>">선수 등록</a>
				</div>
				<br>
				
		        <div class="divPage">
					<!-- 페이지 번호 추가 -->		
					<!-- 이전 블럭으로 이동 -->
					<c:if test="${pagination.firstPage>1 }">
						<a href="#" onclick="pageFunc(${pagination.firstPage-1})">
							<img src="<c:url value='/img/first.JPG'/>">
						</a>
					</c:if>	
									
					<!-- [1][2][3][4][5][6][7][8][9][10] -->
					<c:forEach var="i" begin="${pagination.firstPage }" end="${pagination.lastPage }">		
						<c:if test="${i == pagination.currentPage }">		
							<span style="color: yellow;font-weight: bold;font-size: 1em">${i}</span>
			        	</c:if>
						<c:if test="${i != pagination.currentPage }">		
					         <a href="#" onclick="pageFunc(${i})">[${i }]</a>
					    </c:if>   		
					</c:forEach>
					
					<!-- 다음 블럭으로 이동 -->
					<c:if test="${pagination.lastPage < pagination.totalPage }">
				         <a href="#" onclick="pageFunc(${pagination.lastPage+1})">
							<img src="<c:url value='/img/last.JPG'/>">
						</a>
					</c:if>
					<!--  페이지 번호 끝 -->
				</div>
				<br>
				<div class="divSearch">
				   	<form name="frmSearch" method="POST" action="<c:url value='/team/teamList'/>">
				        <select name="searchCondition">
				            <option value="PLAYER_NAME" 
				            	<c:if test="${param.searchCondition=='PLAYER_NAME'}">
				            		selected="selected"
				            	</c:if>            	
				            >이름</option>
				            <option value="B_POSITION_NAME"
				            	<c:if test="${param.searchCondition=='B_POSITION_NAME'}">
				            		selected="selected"
				            	</c:if> 
				            >포지션</option>
				        </select>   
				        <input type="text" name="searchKeyword" title="검색어 입력" 
				        	value="${param.searchKeyword }">   
						<input type="submit" value="검색" id="btnSearch">
				    </form>
				</div>
				
		    </div>
		</div>
	</div>
</div>

 <%@include file="../inc/bottom.jsp"%>

