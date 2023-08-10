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
			    <li class="breadcrumb-item active" aria-current="page">업무 게시판</li>
			  </ol>
			</nav>   			
			<div id="teamWorkBoardDetail">
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
		       			
		       			<div class="detailTodoList">
		       				<div class="todoTitle">
		       					<h6 class="mb-0">To Do List(1/10)</h6>
		       					
		       					<div class="todoDate">
		       						<span>프로젝트 진행일 : </span>
		       						<span>2023-01-01 ~ 2023-01-29</span>
		       					</div>
		       				</div>
		       				
<!--                             <div class="d-flex mb-2">
                                <input class="form-control border-0 todoInput" type="text" placeholder="업무를 입력하세요">
                                <button type="button" class="btn btn-primary ms-2">Add</button>
                            </div> -->
                            <br>
                            <div class="uncheckList">
                            	<h8>[진행중]</h8>
	                            <div class="d-flex align-items-center border-bottom py-2 todoList">
	                               <input class="form-check-input m-0" type="checkbox">
	                                <div class="w-100 ms-3">
	                                    <div class="d-flex w-100 align-items-center justify-content-between">
	                                        <span>WBS 일정 확정 및 수정하기</span>
	                                    </div>
	                                </div>
	                            </div>		     				
	                            <div class="d-flex align-items-center border-bottom py-2 todoList">
	                                <input class="form-check-input m-0" type="checkbox">
	                                <div class="w-100 ms-3">
	                                    <div class="d-flex w-100 align-items-center justify-content-between">
	                                        <span>EXERD 수정 및 ERD 확정</span>
	                                    </div>
	                                </div>
	                            </div>		      
                       		</div><!-- unChec -->   
	                        <br>
	                        <div class="checkedList">
	                        	<h8>[완료]</h8>
	                            <div class="d-flex align-items-center border-bottom py-2 todoList">
	                                <input class="form-check-input m-0" type="checkbox" checked="checked">
	                                <div class="w-100 ms-3">
	                                    <div class="d-flex w-100 align-items-center justify-content-between">
	                                        <span>EXERD 수정 및 ERD 확정</span>
	                                    </div>
	                                </div>
	                            </div>	                        	
	                        </div>                 
		       			</div> <!--writeTodoList -->
		       					     			
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