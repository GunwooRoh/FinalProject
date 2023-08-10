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
			    <li class="breadcrumb-item active" aria-current="page"><a href="#">공지사항</a></li>
			    <li class="breadcrumb-item active" aria-current="page">공지사항 등록</li>
			  </ol>
			</nav>   			
			<div id="teamNoticeWrite">
	        	<div class="writeWrap">
	        	
		        	<div class="write_title">
		        		<input type="text" class="form-control" id="exampleFormControlInput1"
						 placeholder="제목을 입력해주세요">
		        	</div><!-- write_title -->
		        
		       				 
		       		<div class="write_content">
		       			<div class="write_view">
			       			 <div class="form-floating">
							  <textarea class="form-control write_form" placeholder="내용을 입력해주세요" id="#"></textarea>
							</div>	
		       			</div>
		       			
		       			<div class="write_file">
							<input class="form-control" type="file" id="formFile">
		       			</div>
		       			<div class="write_option_btn">
		       				<button class="btn btn-sm btn-primary">등록</button>&nbsp;
		       				<button class="btn btn-sm btn-primary">취소</button>
		       			</div>
		       		</div><!-- write_content -->
	       		</div><!-- writeWrap -->	 
	       		
	   		
			</div><!-- teamNoticeWrite -->
		</div>
	</div>
</div>
<%@include file="../inc/bottom.jsp"%>  