<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../inc/top.jsp"%>

    <!-- Recent Sales Start -->
    <div class="container-fluid" id="board_style">
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
                    	
                        <button class="nav-link <c:if test="${type=='notice'}">active</c:if> tap_txt" id="pills-home-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home"
                            aria-selected="true">공지사항</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tap_txt <c:if test="${type=='workBoard'}">active</c:if> " id="pills-profile-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-profile" type="button" role="tab"
                            aria-controls="pills-profile" aria-selected="false">업무게시판</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tap_txt" id="pills-contact-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-contact" type="button" role="tab"
                            aria-controls="pills-contact" aria-selected="false">스케줄</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tap_txt" id="pills-contact-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-contact1" type="button" role="tab"
                            aria-controls="pills-contact1" aria-selected="false">결재</button>
                    </li>      
                    <li class="nav-item" role="presentation">
                        <button class="nav-link tap_txt" id="pills-contact-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-contact2" type="button" role="tab"
                            aria-controls="pills-contact2" aria-selected="false">웹하드</button>
                    </li>                                  
                </ul>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
						<%@include file="teamNoticeList.jsp" %>
                    </div>
                    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
						<%@include file="teamWorkBoardList.jsp" %>
                    </div>
                    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
						<%@include file="Calender.jsp" %>
                    </div>
                    <div class="tab-pane fade" id="pills-contact1" role="tabpanel" aria-labelledby="pills-contact1-tab">
						<%@include file="Approval.jsp" %>
                    </div>
                    <div class="tab-pane fade" id="pills-contact2" role="tabpanel" aria-labelledby="pills-contact2-tab">
						<%@include file="webhard.jsp" %>
                    </div>
                                                            
                </div>
            </div>
        </div>
    </div>
    <!-- Recent Sales End -->


   
 <%@include file="../inc/bottom.jsp"%>        --%>
