<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div class="popup members-popup">
	<div class="popup-background"></div>
	<div class="popup-wrapper">
		<div class="popup-inner">
			<div class="close-btn">
				<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                 	<path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z" />
               	</svg>
			</div>
			<div class="Info">
				<form class="frmchat" name="frmchat" method="post" action ="">
					<div class="memImg">
		        		<img alt="" src="<c:url value ='/img/mem_images/${memberVo.memImage }'/> " style="width:180px; height:200px;" id="previewImage" name="memImage">
		        	</div>
		        	<div class="infobox">
						<div class="first">
							<input type="text" class="firstCol" value="부서">
							<input type="text" class="secCol" name ="deptName"  id ="deptName">
						</div>
						<div class="second">
							<input type="text" class="firstCol" value="직급">
							<input type="text" class="secCol" name ="positionName"  id ="positionName" >
						</div>
						<div class="third">
							<input type="text" class="firstCol" value="이름">
							<input type="text" class="secCol" name ="memName" id ="memName">
						</div>
						<div class="fourth">
							<input type="text" class="firstCol" value="id">
							<input type="text" class="secCol" name ="memId" id ="memId">
						</div>
						<div class="fifth">
							<input type="text" class="firstCol" value="전화번호">
							<input type="text" class="secCol" name ="memTel" id ="memTel">
						</div>
						<div class="sixth">
							<input type="text" class="firstCol" value="생년월일">
							<input type="text" class="secCol" name ="memBirth" id ="memBirth">
						</div>
						<div class="chatDiv">
							<button type="submit" id="gotoChat">
								<label for="gotoChat">채팅하러 가기</label>
								<img class="gotoChatPng" src="<c:url value='/img/white arrow icon.png'/>">
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
