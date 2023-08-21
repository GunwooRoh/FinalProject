<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../inc/top.jsp"%>
<link href="${pageContext.request.contextPath}/css/Dcss.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/choong/chi.css" rel="stylesheet">

<!-- <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br> -->
<input type="hidden" id="sample6_detailAddress" placeholder="상세주소">
<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("staff_addr").value = extraAddr;
                
                } else {
                    document.getElementById("staff_addr").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('contract').value = data.zonecode;
                document.getElementById("staff_addr").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<script type="text/javascript">
	$(function () {
/* 		$('#staffTel').on('input', function () {
			var inputTel = $(this).val();
			
			if(inputTel.length===3){
				inputTel += '-';
			}
			
			if(inputTel.length===8){
				inputTel += '-';
			}
			
			$(this).val(inputTel);
		}); */
		
		$('#staffTel').on('input', function() {
		    var inputTel = $(this).val();
		    
		    // Remove existing "-" characters
		    var cleanedTel = inputTel.replace(/-/g, '');

		    if (cleanedTel.length >= 4) {
		        cleanedTel = cleanedTel.substring(0, 3) + '-' + cleanedTel.substring(3);
		    }
		    if (cleanedTel.length >= 9) {
		        cleanedTel = cleanedTel.substring(0, 8) + '-' + cleanedTel.substring(8);
		    }
		    
		    // Update the value of the input field
		    $(this).val(cleanedTel);
		});
		
		$('#staffBirth').on('input', function() {
		    var inputTel = $(this).val();
		    
		    // Remove existing "-" characters
		    var cleanedTel = inputTel.replace(/-/g, '');

		    if (cleanedTel.length >= 5) {
		        cleanedTel = cleanedTel.substring(0, 4) + '-' + cleanedTel.substring(4);
		    }
		    if (cleanedTel.length >= 8) {
		        cleanedTel = cleanedTel.substring(0, 7) + '-' + cleanedTel.substring(7);
		    }
		    
		    // Update the value of the input field
		    $(this).val(cleanedTel);
		});
		
		$('#contractStart').on('input', function() {
		    var inputTel = $(this).val();
		    
		    // Remove existing "-" characters
		    var cleanedTel = inputTel.replace(/-/g, '');

		    if (cleanedTel.length >= 5) {
		        cleanedTel = cleanedTel.substring(0, 4) + '-' + cleanedTel.substring(4);
		    }
		    if (cleanedTel.length >= 8) {
		        cleanedTel = cleanedTel.substring(0, 7) + '-' + cleanedTel.substring(7);
		    }
		    
		    // Update the value of the input field
		    $(this).val(cleanedTel);
		});
		
		$('#contractDone').on('input', function() {
		    var inputTel = $(this).val();
		    
		    // Remove existing "-" characters
		    var cleanedTel = inputTel.replace(/-/g, '');

		    if (cleanedTel.length >= 5) {
		        cleanedTel = cleanedTel.substring(0, 4) + '-' + cleanedTel.substring(4);
		    }
		    if (cleanedTel.length >= 8) {
		        cleanedTel = cleanedTel.substring(0, 7) + '-' + cleanedTel.substring(7);
		    }
		    
		    // Update the value of the input field
		    $(this).val(cleanedTel);
		});
		
        $('#imageUpload').on('change', function() {
            var file = $(this)[0].files[0];
            if (file) {
                var imageUrl = URL.createObjectURL(file);

                $('#previewImage').attr('src', imageUrl);
            }
        });
	})
</script>
	<form name="frmEdit" method="post" action="<c:url value='/staff/staffEdit'/>" enctype="multipart/form-data">
        <!-- Sign In Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                    <div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h3>Staff Edit</h3>
                        </div>
                        <div style="width: 60%; margin: 0 auto;" >
	                   		<div class ="imgdiv">
	                   			<c:if test="${!empty staffVo.staffImage }">
									<img alt="" src="<c:url value = '/img/staffImages/${staffVo.staffImage }'/>" style="width:180px; height:200px;" id="previewImage">
	                   			</c:if>
	                   			<c:if test="${empty staffVo.staffImage }">
									<img alt="" src="<c:url value = '/img/defaultUSER.png'/>" style="width:180px; height:200px;" id="previewImage">
	                   			</c:if>
	                   			
								<label for="imageUpload" style="margin: 3px">사진 등록</label>
								<input type ="file" name="staffImageFile" id="imageUpload"  class="infobox" style="display:none">
							</div>
	       	                <div class="form-floating mb-3">
	                            <select class="form-select" id="floatingSelect"
	                                aria-label="Floating label select example" name="deptNo">
									<!-- 반복문 -->
									<c:forEach var="deptVo" items="${deptList}">
										<option value ="${deptVo.deptNo}"
											<c:if test="${staffVo.deptNo == deptVo.deptNo }">
												selected="selected"
											</c:if>
										>${deptVo.deptName}</option>
									</c:forEach>
									<!-- 반복문 -->
	                            </select>
	                            <label for="floatingSelect">부서를 선택하세요</label>
	                        </div>
	                        <input type="hidden" name="staffNo" value="${staffVo.staffNo }">
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="floatingInput" placeholder="staff_name" name="staffName" value="${staffVo.staffName }">
	                            <label for="floatingInput">staff_이름</label>
	                        </div>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="floatingInput" placeholder="staff_position" name="staffPosition" value="${staffVo.staffPosition }">
	                            <label for="floatingInput">staff_포지션</label>
	                        </div>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="floatingInput" placeholder="staff_back_no" name="staffBackNo" value="${staffVo.staffBackNo }">
	                            <label for="floatingInput">staff_등번호</label>
	                        </div>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="staffBirth" placeholder="staff_birth" max="9999-12-31" name="staffBirth" maxlength="10" value="${staffVo.staffBirth.substring(0, 10) }">
	                            <label for="floatingInput">staff_생일</label>
	                        </div>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="floatingInput" placeholder="staff_sal" name="staffSal" value="${staffVo.staffSal }">
	                            <label for="floatingInput">staff_연봉</label>
	                        </div>
<%-- 	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="contractStart" placeholder="contract_start" max="9999-12-31" name="contractStart" maxlength="10" value="${staffVo.contractStart }">
	                            <label for="floatingInput">계약 시작일</label>
	                        </div> --%>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="contractDone" placeholder="contract_done" max="9999-12-31" name="contractDone" maxlength="10" value="${staffVo.contractDone.substring(0, 10) }">
	                            <label for="floatingInput">계약 종료일</label>
	                        </div>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="floatingInput" placeholder="staff_info" name="staffInfo" value="${staffVo.staffInfo }">
	                            <label for="floatingInput">staff_정보</label>
	                        </div>
		                    <div class="firstdiv">
						    	<div class="form-floating address">
						    		<input type="text" class="form-control" id="contract" placeholder="staff_zipcode" name="staffZipcode" value="${staffVo.staffZipcode }">
							        <label for="zipcode">우편번호</label>
						    	</div>
						    	<div class="dup">
							        <input type="Button" value="우편번호 찾기" id="btnZipcode" title="새창열림" onclick="sample6_execDaumPostcode()">		    	
							        
						    	</div>
					    	</div>	
					    	<br>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="staff_addr" placeholder="staff_addr" name="staffAddr" value="${staffVo.staffAddr }">
	                            <label for="floatingInput">staff_주소</label>
	                        </div>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="staff_addr_detail" placeholder="staff_addr_detail" name="staffAddrDetail" value="${staffVo.staffAddrDetail }">
	                            <label for="floatingInput">staff_주소상세</label>
	                        </div>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="staffTel" placeholder="staff_tel" maxlength="13" name="staffTel" value="${staffVo.staffTel }">
	                            <label for="floatingInput">staff_전화번호</label>
	                        </div>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="floatingInput" placeholder="staff_id" name="staffId" value="${staffVo.staffId }">
	                            <label for="floatingInput">staff_id</label>
	                        </div>
	                        <div class="form-floating mb-4">
	                            <input type="password" class="form-control" id="floatingPassword" placeholder="staff_pwd" name="staffPwd" value="${staffVo.staffPwd }">
	                            <label for="floatingPassword">staff_pwd</label>
	                        </div>
	                        <!-- <div class="d-flex align-items-center justify-content-between mb-4">
	                            <div class="form-check">
	                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
	                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
	                            </div>
	                            <a href="">Forgot Password</a>
	                        </div> -->
	                        <button type="submit" class="btn btn-primary py-3 w-100 mb-4">스태프 수정</button>
	                        <!-- <p class="text-center mb-0">Don't have an Account? <a href="">Sign Up</a></p> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</form>
        <!-- Sign In End -->


 <%@include file="../inc/bottom.jsp"%> 