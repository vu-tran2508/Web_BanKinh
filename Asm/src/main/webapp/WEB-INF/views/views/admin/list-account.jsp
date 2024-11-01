<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DanhSachKhachHang</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet" href="/templates/css/all.min.css">
<link rel="stylesheet" href="/templates/css/adminlte.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<jsp:include page="/WEB-INF/views/common/admin/aside.jsp" />

		<div class="content-wrapper">
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Danh Sách Người Dùng</h1>
						</div>
					</div>
				</div>
			</div>

			<section class="content">

				<div class="card">
					<!-- /.card-header -->
					<div class="card-body">
						<div class="row" style="right: 100px; padding-bottom: 10px;">
							<form action="/manageraccount/listaccount/page" method="get" style="margin-left: 18px;">
								<input name="keywords" value="${keywords}" style="padding-right: 50px;">
								<button>Search</button>
								<a href="/manageraccount/editaccount"
									class="btn btn-sm btn-outline-primary "
									style="margin-left: 800px;">Add Account</a>
							</form>
						</div>
						<table id="example2" class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>customername</th>
									<th>password</th>
									<th>fullname</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Role</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${LISTACCOUNT.content }" var="ac">
									<tr>
										<td>${ac.username }</td>
										<td>${ac.password }</td>
										<td>${ac.fullname }</td>
										<td>${ac.email }</td>
										<td>${ac.phone }</td>
										<td>${ac.role?"admin":"user" }</td>
										<td><a class="btn btn-primary btn-sm"
											href="/manageraccount/edit/${ac.username }">Edit</a> | <a
											class="btn btn-danger btn-sm"
											href="?btnDel=&username=${ac.username }">Del</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<div class="pagination-container">
							<nav aria-label="" style="padding-top: 20px;">
								<ul class="pagination justify-content-center">
									<li class="page-item"><a class="page-link"
										href="/manageraccount/listaccount/page?item=0">First</a>
									<li class="page-item"><a class="page-link"
										href="/manageraccount/listaccount/page?item=${LISTACCOUNT.number-1}">Previous</a></li>
									<li class="page-item active"><a class="page-link">${LISTACCOUNT.number}
									</a></li>
									<li class="page-item"><a class="page-link"
										href="/manageraccount/listaccount/page?item=${LISTACCOUNT.number+1}">Next</a>
									<li class="page-item"><a class="page-link"
										href="/manageraccount/listaccount/page?item=${LISTACCOUNT.totalPages-1}">Last</a>
									</li>
								</ul>
							</nav>
						</div>
					</div>
					<!-- /.card-body -->
				</div>
			</section>
		</div>

	</div>
</body>

</html>