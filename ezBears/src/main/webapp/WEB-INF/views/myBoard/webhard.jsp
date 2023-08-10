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
                        <a class="nav-link tap_txt "  href="<c:url value='/myBoard/teamWorkBoard'/>">업무게시판</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt"  href="<c:url value='/myBoard/Calender'/>">스케줄</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt "  href="<c:url value='/myBoard/Approval'/>">결재</a>
                    </li>      
                    <li class="nav-item" role="presentation">
                        <a class="nav-link tap_txt active"  href="<c:url value='/myBoard/webhard'/>">웹하드</a>
                    </li>                                  
                </ul>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active">

<!-- Recent Sales Start -->
<div class="container-fluid pt-4 px-4">
   <div class="bg-secondary text-center rounded p-4">
      <div class="d-flex align-items-center justify-content-between mb-4">
         <h6 class="mb-0">웹하드</h6>
         <a href="">Show All</a>
      </div>
      <div class="table-responsive">
         <table
            class="table text-start align-middle table-bordered table-hover mb-0">
            <thead>
               <tr class="text-white">
                  <th scope="col"><input class="form-check-input"
                     type="checkbox"></th>
                  <th scope="col">날짜</th>
                  <th scope="col">제목</th> <!-- 디테일페이지 만들고 이동  -->
                  <th scope="col">이름</th>
                  <th scope="col">파일이름</th>
                  <th scope="col">파일용량</th>
                  <th scope="col">파일 다운로드</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td><input class="form-check-input" type="checkbox"></td>
                  <td>01 Jan 2045</td>
                  <td><a href="">나중에</a></td>
                  <td>Jhon Doe</td>
                  <td>test.jpg</td>
                  <td>용량계산</td>

                  <td><a class="btn btn-sm btn-primary" href="">다운로드</a></td>
               </tr>
               <tr>
                  <td><input class="form-check-input" type="checkbox"></td>
                  <td>01 Jan 2045</td>
                  <td><a href="">반복문</a></td>
                  <td>Jhon Doe</td>
                  <td>test.jpg</td>
                  <td>용량계산</td>

                  <td><a class="btn btn-sm btn-primary" href="">다운로드</a></td>
               </tr>
               <tr>
                  <td><input class="form-check-input" type="checkbox"></td>
                  <td>01 Jan 2045</td>
                  <td><a href="">바꿔야지</a></td>
                  <td>Jhon Doe</td>
                  <td>test.jpg</td>
                  <td>용량계산</td>

                  <td><a class="btn btn-sm btn-primary" href="">다운로드</a></td>
               </tr>
               <tr>
                  <td><input class="form-check-input" type="checkbox"></td>
                  <td>01 Jan 2045</td>
                  <td><a href="">INV-0123</a></td>
                  <td>Jhon Doe</td>
                  <td>test.jpg</td>
                  <td>용량계산</td>

                  <td><a class="btn btn-sm btn-primary" href="">다운로드</a></td>
               </tr>
               <tr>
                  <td><input class="form-check-input" type="checkbox"></td>
                  <td>01 Jan 2045</td>
                   <td><a href="hard_detail">TEST</a></td>
                  <td>Jhon Doe</td>
                  <td>test.jpg</td>
                  <td>용량계산</td>

                  <td><a class="btn btn-sm btn-primary" href="">다운로드</a></td>
               </tr>
            </tbody>
         </table>
         <!-- <label class="btn btn-sm btn-primary" for="input-file" id="fileup" />
            업로드 
         <input type="file" id="input-file" /> -->
         <div>
         <a href='<c:url value='/myBoard/hard_detail'/>' role="button"
          class="btn btn-sm btn-primary" id="hard">웹 하드 작성</a>
         </div>
      </div>
   </div>
</div>
<!-- Recent Sales End -->
      </div>
            </div>
            </div>
        </div>
    </div>
    <!-- Recent Sales End -->


   
 <%@include file="../inc/bottom.jsp"%>    