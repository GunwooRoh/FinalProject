<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>	
<!-- Recent Sales Start -->
<div class="container-fluid pt-4 px-4" id="board_style">
	<div class="bg-secondary text-center rounded p-4">
    	<div class="bg-secondary rounded h-100 p-4">
          	<nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">마이보드</a></li>
			    <li class="breadcrumb-item active" aria-current="page"><a href="#">개발1팀</a></li>
			    <li class="breadcrumb-item active" aria-current="page">공지사항</li>
			  </ol>
			</nav>   			
			<div id="teamNoticeDetail">
	        	<div class="detailWrap">
	        	
		        	<div class="detail_title">
		        		<div class="detail_left">
			        		<span class="title_txt">공지사항 전달드립니다</span>
							<span class="title_date">오늘 오후 3:45</span>
						</div><!-- detail_left -->
						<div class="detail_right">조회수 10</div>
		        	</div><!-- detail_title -->
		        	
		       		<div class="user_info">		
		       			<div class="detail_left">
							<div class="user_img">
			        			<img src="<c:url value='/img/user.jpg'/>" alt="사원프로필">
			        		</div><!-- user_img -->
			        		<div class="detail_left">
			        			<span class="user_name"><a href="#">제이든</a></span>
			        			<span class="user_dept">/ 💼개발1팀</span>
			        		</div><!-- detail_left -->
		        		</div><!-- detail_left -->
		        				       		        		       				        	
		        		<div class="detail_right">
		        			첨부파일 : <a href="#">config.zip(300.42MB)</a>
		        		</div><!-- detail_right -->
		       		</div><!-- user_info -->
		       				 
		       		<div class="detail_content">
		       			<div class="detail_view"></div>
		       			인사팀에서 법정 의무 교육을 한다고 합니다 :)<br>
		       			올해 입사한 신입사원분들을 포함해 모든 직원분들이 수강해주셔야 합니다.<br>
		       			자세한 수강방법 안내는 아래 내용을 확인해주세요.
		       			
		       			<div class="detail_option_btn">
		       				<span class="user_dept"><a href="#">목록</a></span>
	       					<span class="user_dept"><a href="#">수정</a></span>
		        			<span class="user_dept"><a href="#">삭제</a></span>
		       			</div>
		       		</div><!-- detail_content -->
	       		</div><!-- detailWrap -->	 
	       		
	       		<div class="detail_reply_wrap">
	       			<div class="reply_tit">댓글(100)</div>
	       			
	       			<div class="reply_list">
	       				<div class="reply_content"> 
	       					<div class="reply_user">    					
		       					<div class="detail_left">
									<div class="user_img">
					        			<img src="<c:url value='/img/user.jpg'/>" alt="사원프로필">
					        		</div><!-- user_img -->
					        	</div>
				        		<div class="detail_left">
				        			<span class="user_name"><a href="#">박진수</a></span>
				        			<span class="user_dept">/ 💼개발1팀</span>
				        		</div><!-- detail_left -->	 					
	       					</div><!-- reply_user -->
	       					
	       					<div class="reply_txt">
		       					제이든님 공지 확인했습니다.<br>
		       					참여 신청은 인사팀에 직접 해야하나요?
	       					</div><!-- reply_txt -->
	       					
	       					<div class="reply_txt">
	       						<span>2023-08-03 13:01</span>
	       						<span><a href="#">수정</a></span>
	       						<span><a href="#">삭제</a></span>
	       						<span><a href="#">답글</a></span>
	       					</div><!-- reply_txt -->
	       				</div><!-- reply_content -->
	       				
	       					
       					<div class="r_reply_content">
	       					<div class="reply_user">    					
		       					<div class="detail_left">
									<div class="user_img">
					        			<img src="<c:url value='/img/user.jpg'/>" alt="사원프로필">
					        		</div><!-- user_img -->
					        	</div>
				        		<div class="detail_left">
				        			<span class="user_name"><a href="#">제이든</a></span>
				        			<span class="user_dept">/ 💼개발1팀</span>
				        		</div><!-- detail_left -->	 					
	       					</div><!-- reply_user -->
	       					
	       					<div class="reply_txt">
		       					넵, 첨부한 파일 참고하셔서<br>
		       					인사팀에 양식 전달해주시면 됩니다.
	       					</div><!-- reply_txt -->
	       					
	       					<div class="reply_txt">
	       						<span>2023-08-03 13:10</span>
	       						<span><a href="#">수정</a></span>
	       						<span><a href="#">삭제</a></span>
	       					</div><!-- reply_txt -->	       					
       					</div>	       				
	       			</div><!-- r_reply_content -->	      
	       			<div class="reply_line"></div> 
	       						
	       			<div class="reply_write">
						<div class="form-floating">
						  <textarea class="form-control" placeholder="Comments" 
						  id="floatingTextarea2" style="height: 100px"></textarea>
						  <label for="floatingTextarea2">Comments</label>
						</div>	
						       				
	       				<div class="reply_add">
	       					<button class="reply_add_btn">등록</button>
	       				</div>
	       			</div><!-- reply_write -->
	       			
			        <div class="page_box">
				    	<nav aria-label="Page navigation example">
						  <ul class="pagination justify-content-center">
						    <li class="page-item">
						      <a class="page-link">Previous</a>
						    </li>
						    <li class="page-item active"><a class="page-link" href="#">1</a></li>
						    <li class="page-item">
						    	<a class="page-link" href="#">2</a>
						    </li>
						    <li class="page-item">
						    	<a class="page-link" href="#">3</a>
						    </li>
						    <li class="page-item">
						      <a class="page-link" href="#">Next</a>
						    </li>
						  </ul>
						</nav>
					</div><!-- page_box -->   		
						
	       		</div><!-- detail_reply_wrap -->   		
			</div><!-- teamNoticeDetail -->
		</div>
	</div>
</div>
<%@include file="../inc/bottom.jsp"%>  