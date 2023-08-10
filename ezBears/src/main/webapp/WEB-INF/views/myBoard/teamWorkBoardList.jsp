<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../inc/top.jsp"%>

    <!-- Recent Sales Start -->
    <div class="container-fluid pt-4 px-4" id="board_style">
        <div class="bg-secondary text-center rounded">
            <div class="bg-secondary rounded h-100 p-4">
            	<nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="#">마이보드</a></li>
				    <li class="breadcrumb-item active" aria-current="page">개발1팀</li>
				  </ol>
				</nav>
                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt" href="<c:url value='/myBoard/teamNotice'/>">공지사항</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt active"  href="<c:url value='/myBoard/teamWorkBoard'/>">업무게시판</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt"  href="<c:url value='/myBoard/Calender'/>">스케줄</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt"  href="<c:url value='/myBoard/Approval'/>">결재</a>
                    </li>      
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt"  href="<c:url value='/myBoard/webhard'/>">웹하드</a>
                    </li>                                  
                </ul>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active">
						<div id="teamWorkBoardList">
							<br>
							<div id="teamNotice_serch">
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
							
							<br>
					      <div class="table-responsive">
					          <table class="table text-start align-middle table-bordered table-hover mb-0">
					              <thead>
					                  <tr class="text-white">
					                      <!-- <th scope="col"><input class="form-check-input" type="checkbox"></th> -->
					                      <th scope="col">번호</th>
					                      <th scope="col">제목</th>
					                      <th scope="col">작성자</th>
					                      <th scope="col">등록일</th>
					                      <th scope="col">조회수</th>
					                  </tr>
					              </thead>
					              <tbody>
					                  <tr class="table_info">
					                      <!-- <td><input class="form-check-input" type="checkbox"></td> -->
					                      <td>10</td>
					                      <td><a href="<c:url value='/myBoard/teamWorkBoardDetail'/>">개발1팀 8월 업무 리스트</a></td>
					                      <td>제이든</td>
					                      <td>2023-08-01</td>
					                      <td>5</td>
									   <!-- <td><a class="btn btn-sm btn-primary" href="">Detail</a></td> -->
					                  </tr>              
					                  <tr class="table_info">
					                      <!-- <td><input class="form-check-input" type="checkbox"></td> -->
					                      <td>9</td>
					                      <td>개발1팀 7월 업무 리스트</td>
					                      <td>제이든</td>
					                      <td>2023-07-01</td>
					                      <td>20</td>
									   <!-- <td><a class="btn btn-sm btn-primary" href="">Detail</a></td> -->
					                  </tr>
					                  <tr class="table_info">
					                      <td>4</td>
					                      <td>개발1팀 6월 업무 리스트</td>
					                      <td>제이든</td>
					                      <td>2023-06-01</td>
					                      <td>60</td>
					                  </tr>
					                  <tr class="table_info">
					                      <td>8</td>
					                      <td>개발1팀 5월 업무 리스트</td>
					                      <td>제이든</td>
					                      <td>2023-05-01</td>
					                      <td>50</td>
					                  </tr>
					                  <tr class="table_info">
					                      <td>7</td>
					                      <td>개발1팀 4월 업무 리스트</td>
					                      <td>제이든</td>
					                      <td>2023-04-01</td>
					                      <td>28</td>
					                  </tr>
					                  <tr class="table_info">
					                      <td>6</td>
					                      <td>개발1팀 4월 업무 리스트</td>
					                      <td>제이든</td>
					                      <td>2023-04-01</td>
					                      <td>30</td>
					                  </tr>
					                  <tr class="table_info">
					                      <!-- <td><input class="form-check-input" type="checkbox"></td> -->
					                      <td>5</td>
					                      <td>개발1팀 3월 업무 리스트</td>
					                      <td>제이든</td>
					                      <td>2023-03-01</td>
					                      <td>48</td>
									   <!-- <td><a class="btn btn-sm btn-primary" href="">Detail</a></td> -->
					                  </tr>
					                  <tr class="table_info">
					                      <!-- <td><input class="form-check-input" type="checkbox"></td> -->
					                      <td>4</td>
					                      <td>개발1팀 2월 업무 리스트</td>
					                      <td>제이든</td>
					                      <td>2023-02-01</td>
					                      <td>70</td>
									   <!-- <td><a class="btn btn-sm btn-primary" href="">Detail</a></td> -->
					                  </tr>
					                  <tr class="table_info">
					                      <!-- <td><input class="form-check-input" type="checkbox"></td> -->
					                      <td>3</td>
					                      <td>개발1팀 1월 업무 리스트</td>
					                      <td>제이든</td>
					                      <td>2023-01-01</td>
					                      <td>60</td>
									   <!-- <td><a class="btn btn-sm btn-primary" href="">Detail</a></td> -->
					                  </tr>
					                  <tr class="table_info">
					                      <!-- <td><input class="form-check-input" type="checkbox"></td> -->
					                      <td>2</td>
					                      <td>개발1팀 12월 업무 리스트</td>
					                      <td>제이든</td>
					                      <td>2022-12-01</td>
					                      <td>58</td>
									   <!-- <td><a class="btn btn-sm btn-primary" href="">Detail</a></td> -->
					                  </tr>
					                   <tr class="table_info">
					                      <!-- <td><input class="form-check-input" type="checkbox"></td> -->
					                      <td>1</td>
					                      <td>개발1팀 11월 업무 리스트</td>
					                      <td>제이든</td>
					                      <td>2022-11-01</td>
					                      <td>98</td>
									   <!-- <td><a class="btn btn-sm btn-primary" href="">Detail</a></td> -->
					                  </tr>                                                                                         
					              </tbody>
					          </table>
					      </div>
					      <div class="btnBox">
								<a class="btn btn-sm btn-primary" href="">삭제</a>
								<a class="btn btn-sm btn-primary" href="">수정</a>
								<a class="btn btn-sm btn-primary" href="<c:url value='/myBoard/teamWorkBoardWrite'/>">등록</a>
						</div><!-- btnBox -->
					      <div class="page_box">
						      <nav aria-label="Page navigation example">
								  <ul class="pagination justify-content-center">
								    <li class="page-item">
								      <a class="page-link">Previous</a>
								    </li>
								    <li class="page-item active"><a class="page-link" href="#">1</a></li>
								    <li class="page-item"><a class="page-link" href="#">2</a></li>
								    <li class="page-item"><a class="page-link" href="#">3</a></li>
								    <li class="page-item">
								      <a class="page-link" href="#">Next</a>
								    </li>
								  </ul>
								</nav>
							</div>
						</div><!-- teamWorkBoardList -->
					</div>
				</div>
            </div>
        </div>
    </div>
    <!-- Recent Sales End -->

 <%@include file="../inc/bottom.jsp"%>   						