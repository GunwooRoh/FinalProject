<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
#input-file {
	display: none;
}

label#fileup {
	text-align: right;
	margin-left: 960px;
	margin-top: 20px;
}
a#hard {
    margin-top: 19px;
    margin-left: 930px;
}
</style>

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