<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../inc/top.jsp"%>

<div class="form-container">
	<form action="<c:url value='/mypage/pwdchk2'/>" method="post">
		<div class="container-fluid">
			<div class="row h-100 align-items-center justify-content-center"
				style="min-height: 100vh;">
				<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
					<div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<a href="index.html" class="">
								<h3 class="text-primary">
									<i class="fa fa-user-edit me-2"></i>비밀번호 체크
								</h3>
							</a>
						</div>
						<div class="form-floating mb-4">
							<input type="Password" name="memPwd" id="pwd" class="form-control" id="floatingPassword" placeholder="Password"> 
							<label for="floatingPassword">비밀번호</label>
						</div>
						<button type="submit" class="btn btn-primary py-3 w-100 mb-4">확인</button>
						<p class="text-center mb-0">
							Would you like to go back? <a href="<c:url value='/'/>">click</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		
	</form>
</div>
<%@include file="../inc/bottom.jsp"%>