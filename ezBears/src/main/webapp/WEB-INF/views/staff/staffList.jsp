<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../inc/top.jsp"%>
<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
		<div class="col-sm-12 col-xl-12">
		    <div class="bg-secondary rounded h-100 p-4">
		        <h6 class="mb-4">스태프 리스트</h6>
		        <table class="table table-hover">
		            <thead>
		                <tr>
		                    <th scope="col">Staff_NO</th>
		                    <th scope="col">부서번호</th>
		                    <th scope="col">이름</th>
		                    <th scope="col">포지션</th>
		                    <th scope="col">Back_No</th>
		                </tr>
		            </thead>
		            <tbody>
		                <tr>
		                    <th scope="row">1</th>
		                    <td>100</td>
		                    <td>Doe</td>
		                    <td>TeamDoctor</td>
		                    <td>1</td>
		                </tr>
		                <tr>
		                    <th scope="row">2</th>
		                    <td>200</td>
		                    <td>Otto</td>
		                    <td>coach</td>
		                    <td>2</td>
		                </tr>
		                <tr>
		                    <th scope="row">3</th>
		                    <td>300</td>
		                    <td>Jacob</td>
		                    <td>coach</td>
		                    <td>3</td>
		                </tr>
		            </tbody>
		        </table>
		        
				<div class="divBtn">
				    <a href="<c:url value='/staff/staffWrite'/>">스태프 등록</a>
				</div>
		    </div>
		</div>
	</div>
</div>

 <%@include file="../inc/bottom.jsp"%>