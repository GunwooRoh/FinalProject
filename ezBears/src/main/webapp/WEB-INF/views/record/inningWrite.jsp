<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../inc/top.jsp"%>
<link href="${pageContext.request.contextPath}/css/Dcss.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/choong/chi.css"
	rel="stylesheet">
	
<form name="frmWrite" method="post"
	action="<c:url value='/record/gameRecordDetail'/>">
	<!-- Sign In Start -->
	<div class="container-fluid">
		<div class="row h-100 align-items-center justify-content-center">
			<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
				<div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
					<div class="d-flex align-items-center justify-content-between mb-3">
						<h3>이닝 기록</h3>
					</div>
					<div style="width: 60%; height: 80%; margin: 0 auto;">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="BB" name="BB"> <label for="floatingInput">안타</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="SO" name="SO"> <label for="floatingInput">실책</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="IP" name="IP"> <label for="floatingInput">삼진</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="HA" name="HA"> <label for="floatingInput">2루타</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="RC" name="RC"> <label for="floatingInput">3루타</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="ER" name="ER"> <label for="floatingInput">홈런</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="HR" name="HR"> <label for="floatingInput">타점</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="ERA" name="ERA"> <label for="floatingInput">볼넷</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="ERA" name="ERA"> <label for="floatingInput">잔루</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="ERA" name="ERA"> <label for="floatingInput">타석</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="ERA" name="ERA"> <label for="floatingInput">도루</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="ERA" name="ERA"> <label for="floatingInput">득점</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="ERA" name="ERA"> <label for="floatingInput">볼넷</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="ERA" name="ERA"> <label for="floatingInput">잔루</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="ERA" name="ERA"> <label for="floatingInput">타석</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="ERA" name="ERA"> <label for="floatingInput">도루</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="ERA" name="ERA"> <label for="floatingInput">팀정보</label>
						</div>
						<button type="submit" class="btn btn-primary py-3 w-100 mb-4">기록등록</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

<%@include file="../inc/bottom.jsp"%>
