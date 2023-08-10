<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<link href="${pageContext.request.contextPath}/css/Dcss.css" rel="stylesheet">

<div class="col-12">
	<div class="bg-secondary rounded h-100 p-4">
	<h6 class="mb-4">사원 등록</h6>
		<div class="register">
			<form class="register-form" name="frmRegist" method="post" action="<%=request.getContextPath() %>/Member/list">
				<div class ="imgdiv">
					<img alt="" src="" style="width:150px; height:200px;">
					<input type ="file" name="imageUpload" id="imageUpload"  class="infobox">
				</div>
				<div class ="firstdiv">
					<div class="form-floating">
						<input type="text" class="form-control" id="registerId" name="userId" > 
						<label for="registerId">아이디</label>
					</div>
					<div class="dup">
						<input type="button" id = "btnChkId" value="중복체크">
					</div>	
				</div>
				<div class="password-form">
					<div class="form-floating">
						<input type="password" class="form-control" id="registerPassword" name="pwd"> 
						<label for="registerPassword">비밀번호</label>
					</div>
					<div class="form-floating">
						<input type="password" class="form-control" id="registerPassword2" name="pwd2"> 
						<label for="registerPassword">비밀번호 확인</label>
					</div>
				</div>
				<div class="form-floating">
					<input type="text" class="form-control" id="registerName" name="name"> 
					<label for="registerName">이름</label>
				</div>
				<div class="detail">
					<div class="form-floating">
						<input type="text" class="form-control" id="birth" name="birth"> 
						<label for="birth">생년월일</label>
					</div>
					<div class="form-floating">
						<input type="text" class="form-control" id="phoneNum" maxlength="13">
						<label for="phoneNum">전화번호</label>
					</div>
				</div>
				<div class='detail'>
					<div class="form-floating">
						<input type="text" class="form-control" id="sal" >
						<label for="sal">연봉</label>
					</div>
					<div class="form-floating">
						<input type="text" class="form-control" id="contract" >
						<label for="contract">입사일</label>
					</div>
				</div>
			    <div class="firstdiv">
			    	<div class="form-floating address">
			    		<input type="text" class="form-control" id="contract" >
				        <label for="zipcode">우편번호</label>
			    	</div>
			    	<div class="dup">
				        <input type="Button" value="우편번호 찾기" id="btnZipcode" title="새창열림">		    	
			    	</div>
			    </div>
			    <div class="form-floating">
			        <input type="text" name="addressDetail" id="addressDetail" title="상세주소"  class="form-control">
			        <label for="addressDetail">상세주소</label>
				</div>
				<ul class="select-box">
					<li>
				        <select name="dept" id="dept">
				        	<option value="" hidden>부서</option>
				            <option value="management">경영지원팀</option>
				            <option value="operation1">운영1팀</option>
				            <option value="operation2">운영2팀</option>
				            <option value="scout">스카우트팀</option>
				            <option value="marketing">마케팅팀</option>
				       	</select>
					</li>
					<li>
				        <select name="grade" id="grade">
				        	<option value="" hidden>직급</option>
				            <option value="1">인턴</option>
				            <option value="2">사원</option>
				            <option value="3">대리</option>
				            <option value="4">과장</option>
				            <option value="5">차장</option>
				            <option value="6">팀장</option>
				            <option value="7">단장</option>
				            <option value="8">구단주</option>
				       	</select>
					</li>
					<li>
				        <select name="test" id="test">
				        	<option value="" hidden>고용형태</option>
				            <option value="1">계약직</option>
				            <option value="2">정규직</option>
				       	</select>
					</li>
				</ul>
				<button class="confirm" type="submit">등록</button>
			</form>
		</div>
	</div>
</div>
  
 <%@include file="../inc/bottom.jsp"%>    