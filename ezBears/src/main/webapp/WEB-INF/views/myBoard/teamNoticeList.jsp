	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div id="teamNoticeList">
		<br><br>
		<div class="teamNotice_serch">
			<div class="serch_input">
				<div class="select_box">
					<select class="form-select" aria-label="Default select example">
					  <option selected>선택</option>
					  <option value="name">이름</option>
					  <option value="subject">제목</option>
					  <option value="content">내용</option>
					</select>				
				</div>
				<div class="text_box">
					<input type="text" class="form-control" id="exampleFormControlInput1"
						 placeholder="검색어를 입력해주세요">
				</div>
				
				<div class="serch_btn">
					<button>검색</button>
				</div><!-- serch_btn -->
			</div><!-- serch_input -->
		</div><!-- teamNotice_serch -->
		
		<br><br>
        <div class="notice_list_box">
        	<div>
	        	<div class="list_box_title">
	        		<div class="user_img">
	        			<img src="<c:url value='/img/user.jpg'/>" alt="사원프로필">
	        		</div>
	        		<div class="user_txt">
	        			<span class="user_txt_name">제이든</span>
	        			<span class="user_txt_time"> &#183 오늘 오후 3:45</span>
	        		</div>
	        		<div class="user_dept">개발1팀</div>
	        	</div>
	       		<div class="list_box_content">
	       			<div class="content_title">공지사항 전달드립니다</div>
	       			<div class="content_txt">
	       			인사팀에서 법정 의무 교육을 한다고 합니다 :)<br>
	       			올해 입사한 신입사원분들을 포함해 모든 직원분들이 수강해주셔야 합니다.<br>
	       			자세한 수강방법 안내는 아래 내용을 확인해주세요.
	       			</div>
	       		</div>
	       		
	       		<div class="list_box_file">config.zip 300.42MB</div>
       		</div>
       		<div class="notice_reply">
       			<div><a href="<c:url value='/myBoard/teamNoticeDetail'/>">댓글 달기</a></div>
       		</div>
        </div><!-- notice_list_box -->		

       <div class="notice_list_box">
        	<div>
	        	<div class="list_box_title">
	        		<div class="user_img">
	        			<img src="<c:url value='/img/user.jpg'/>" alt="사원프로필">
	        		</div>
	        		<div class="user_txt">
	        			<span class="user_txt_name">박진수</span>
	        			<span class="user_txt_time"> &#183 2023-07-31 오전 10:28</span>
	        		</div>
	        		<div class="user_dept">개발1팀</div>
	        	</div>
	       		<div class="list_box_content">
	       			<div class="content_title">회식관련 공지 드립니다.</div>
	       			<div class="content_txt">
	       			금일 오후 6시부터 회식이 있을 예정입니다.<br>
	       			장소는 서울 강남구 봉은사로4길 21 "무월"이며 <br>
	       			참여 가능하신 분들을 댓글로 알려주세요
	       			</div>
	       		</div>
       		</div>
       		<div class="notice_reply">
       			<div><a href="<c:url value='/myBoard/teamNoticeDetail'/>">댓글 달기</a></div>
       		</div>
        </div><!-- notice_list_box -->		
        <div class="notice_list_box">
        	<div>
	        	<div class="list_box_title">
	        		<div class="user_img">
	        			<img src="<c:url value='/img/user.jpg'/>" alt="사원프로필">
	        		</div>
	        		<div class="user_txt">
	        			<span class="user_txt_name">어피치 (apeach)</span>
	        			<span class="user_txt_time"> &#183 오늘 오후 3:45</span>
	        		</div>
	        		<div class="user_dept">개발1팀</div>
	        	</div>
	       		<div class="list_box_content">
	       			<div class="content_title">안녕하세요. 인사팀 어피치 입니다.</div>
	       			<div class="content_txt">
	       			인사팀엣 법정 의무 교육 수강 공지 드립니다 :)<br>
	       			올해 입사한 신입사원분들을 포함해 모든 직원분들이 수강해주셔야 합니다.<br>
	       			자세한 수강방법 안내는 아래 내용을 확인해주세요.
	       			</div>
	       		</div>
	       		
	       		<div class="list_box_file">config.zip 300.42MB</div>
       		</div>
       		<div class="notice_reply">
       			<div><a href="<c:url value='/myBoard/teamNoticeDetail'/>">댓글 달기</a></div>
       		</div>
        </div><!-- notice_list_box -->		 
                    
        <div class="list_line"></div>     
        
        <div class="btnBox">
			<a class="btn btn-sm btn-primary" href="">삭제</a>
			<a class="btn btn-sm btn-primary" href="">수정</a>
			<a class="btn btn-sm btn-primary" href="<c:url value='/myBoard/teamNoticeWrite'/>">등록</a>
		</div><!-- btnBox -->          
		             
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
		</div>
	</div><!-- teamNoticeList -->