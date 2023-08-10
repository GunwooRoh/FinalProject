<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../inc/top.jsp"%>

<div class="container-fluid pt-4 px-4" id="Appdelete">
	<div class="bg-secondary rounded h-100 p-4">
		<form name="frmDelete" method="post"
			action="<c:url value='/myBoard/hard_delete'/>">
			<fieldset>
				<legend>결재 삭제</legend>
				<input type="hidden" name="no" value=""> <input
					type="hidden" name="oldFileName" value="">

				<div>
					<span class="sp">삭제하시겠습니까?</span>
				</div>
				 <div class="col-sm-12 col-xl-6">
                        <div class="bg-secondary rounded h-100 p-4">
                            <form>
                                <div class="row mb-3">
                                    <label for="inputEmail3" class="col-sm-2 col-form-label">비밀번호</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" class="pwd">
                                    </div>
                                </div>
                                </form>
                                </div>
                                </div>
				<div class="center">
					<input type="submit" value="삭제" class="btn btn-sm btn-primary" /> <input
						type="Button" value="결재목록" class="btn btn-sm btn-primary"
						OnClick="location.href='<c:url value='/myBoard/board'/>'" />
				</div>
			</fieldset>
		</form>
	</div>
</div>
<%@include file="../inc/bottom.jsp"%>

