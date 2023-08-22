<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../inc/top.jsp"%>
<script>
	function pageFunc(curPage){
		$('input[name="currentPage"]').val(curPage);
		$('form[name="teamNoticeFrom"]').submit();
	}
</script>

<form action="<c:url value='/myBoard/teamNotice?mBoardNo=${mBoardNo}'/>" method="post" name="teamNoticeFrom">
	<input type="hidden" name="currentPage">
	<input type="hidden" name="searchKeyword" value="${param.searchKeyword}">
	<input type="hidden" name="searchCondition" value="${param.searchCondition}">
</form>

    <!-- Recent Sales Start -->
    <div class="container-fluid pt-4 px-4" id="board_style">
        <div class="bg-secondary text-center rounded">
            <div class="bg-secondary rounded h-100 p-4">
 				<c:import url="/myBoard/myBoardNavTab?mBoardNo=${mBoardNo}"></c:import>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active">
						<div id="teamNoticeList">
						<br><br>
						<form name="serchFrm" method="post" action="<c:url value='/myBoard/teamNotice?mBoardNo=${mBoardNo}'/>">
							<div class="teamNotice_serch">
								<div class="serch_input">
									<div class="select_box">
										<select class="form-select" aria-label="Default select example" name="searchCondition">
										  <option selected>선택</option>
										  <option value="mem_name"
										  	<c:if test="${param.searchCondition=='mem_name'}">
							            		selected="selected"
							            	</c:if>            	
										  >이름</option>
										  <option value="team_notice_title"
										  	<c:if test="${param.searchCondition=='team_notice_title'}">
							            		selected="selected"
							            	</c:if>										  
										  >제목</option>
										  <option value="team_notice_content"
										  	<c:if test="${param.searchCondition=='team_notice_content'}">
							            		selected="selected"
							            	</c:if>											  
										  >내용</option>
										</select>				
									</div>
									<div class="text_box">
										<input type="text" class="form-control" name="searchKeyword"
											 placeholder="검색어를 입력해주세요" value="${param.searchKeyword }">
									</div>
									
									<div class="serch_btn">
										<button>검색</button>
									</div><!-- serch_btn -->
								</div><!-- serch_input -->
							</div><!-- teamNotice_serch -->
						</form>
						<br><br>
						
							<c:if test="${empty list}">
								<div class="notice_list_box">
						        	<div style="text-align:center">등록된 글이 없습니다.</div>
						        </div>
							</c:if>
							
							<c:if test="${!empty list}">
								<c:if test="${!empty param.searchKeyword}">
									<div style="text-align:center">
										${totalCount}건이 검색되었습니다.
									</div>
									<br><br>
								</c:if>	
								<!-- 반복시작 -->
								<c:forEach var="map" items="${list}">
									<div class="notice_list_box">
							        	<div>
								        	<div class="list_box_title">
								        		<div class="user_img">
								        			<c:set var="userimg" value="default_user.png"/>
								        			<c:if test="${!empty map['MEM_IMAGE']}">
								        				<c:set var="userimg" value="${map['MEM_IMAGE']}"/>
								        			</c:if>
								        			<img src="<c:url value='/img/mem_images/${userimg}'/>" alt="사원프로필">
								        		</div>
								        		<div class="user_txt">
								        			<span class="user_txt_name">${map['MEM_NAME']}</span>
								        			<span class="user_txt_time"> 
								        				&#183 <fmt:formatDate value="${map['REGDATE']}" pattern="yyyy-MM-dd a hh:mm"/>
								        			</span>
								        		</div>
								        		<div class="user_dept">${map['DEPT_NAME']}</div>
								        	</div>
								       		<div class="list_box_content">
								       			<div class="content_title">${map['TEAM_NOTICE_TITLE']}</div>
								       			<div class="content_txt">
								       			${map['TEAM_NOTICE_CONTENT']}
								       			</div>
								       		</div>
								       		<c:if test="${!empty map['FILENAME']}">
								       			<div class="list_box_file">
								       				<a href="<c:url value='/myBoard/downloadFile?teamNoticeNo=${map["TEAM_NOTICE_NO"]}&fileName=${map["FILENAME"]}'/>"> 
									       				${map['ORIGINNAME']}&nbsp;
									       				(<fmt:formatNumber value="${map['FSIZE'] /1024.0}" type="number" pattern="#.##"/> KB)
								       				</a>
								       			</div>
								       		</c:if>
								       		
							       		</div>
							       		<div class="notice_reply">
							       			<div>
							       				<a href="<c:url value='/myBoard/countUpdate?mBoardNo=${mBoardNo}&teamNoticeNo=${map["TEAM_NOTICE_NO"]}'/>">댓글 달기</a>
							       			</div>
							       		</div>
							        </div><!-- notice_list_box -->		
														
								</c:forEach>
						        <!-- 반복 끝 -->
					        </c:if>
					                    
					        <div class="list_line"></div>     
					        
					        <div class="btnBox">
					        	<!-- 
								<a class="btn btn-sm btn-primary" href="">삭제</a>
								<a class="btn btn-sm btn-primary" href="">수정</a>
								 -->
								<a class="btn btn-sm btn-primary" 
									href="<c:url value='/myBoard/teamNoticeWrite?mBoardNo=${mBoardNo}'/>">등록</a>
							</div><!-- btnBox --> 
							         
						        
						      <div class="page_box">
							      <nav aria-label="Page navigation example">
									  <ul class="pagination justify-content-center">
									  <c:if test="${pagingInfo.firstPage>1 }">
										    <li class="page-item">
										      <a class="page-link" onclick="pageFunc(${pagingInfo.firstPage-1})">
										      	<
										      </a>
										    </li>
									    </c:if>
									    <c:forEach var="i" begin="${pagingInfo.firstPage}" end="${pagingInfo.lastPage}">		
											<c:if test="${i == pagingInfo.currentPage}">		
											    <li class="page-item active" >${i}</li>
											   </c:if>
												<c:if test="${i != pagingInfo.currentPage }">
												    <li class="page-item">
												    	<a class="page-link" href="#" onclick="pageFunc(${i})">${i}</a>
												    </li>
											    </c:if>   		
											</c:forEach>
										<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage}">													    
										    <li class="page-item">
										      <a class="page-link"  href="#" onclick="pageFunc(${pagingInfo.lastPage+1})">Next</a>
										    </li>
									    </c:if>
									  </ul>
									</nav>
							</div><!-- page_box -->
					
						</div><!-- teamNoticeList -->
					</div>
				</div>
            </div>
        </div>
    </div>
    <!-- Recent Sales End -->

 <%@include file="../inc/bottom.jsp"%>    					