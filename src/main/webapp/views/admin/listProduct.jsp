<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/views/admin" var="url"></c:url>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Danh sách Sản Phẩm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png"
	href="${url }/assets/images/icon/favicon.ico">
<link rel="stylesheet" href="${url }/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${url }/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${url }/assets/css/themify-icons.css">
<link rel="stylesheet" href="${url }/assets/css/metisMenu.css">
<link rel="stylesheet" href="${url }/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="${url }/assets/css/slicknav.min.css">
<!-- amchart css -->
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<!-- others css -->
<link rel="stylesheet" href="${url }/assets/css/typography.css">
<link rel="stylesheet" href="${url }/assets/css/default-css.css">
<link rel="stylesheet" href="${url }/assets/css/styles.css">
<link rel="stylesheet" href="${url }/assets/css/responsive.css">
<!-- modernizr css -->
<script src="${url }/assets/js/vendor/modernizr-2.8.3.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.css" />
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.js"></script>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- preloader area start -->
	<div id="preloader">
		<div class="loader"></div>
	</div>
	<!-- preloader area end -->
	<!-- page container area start -->
	<div class="page-container">
		<!-- sidebar menu area start -->
		<%@include file="layout/sidebar.jsp"%>
		<!-- sidebar menu area end -->
		<!-- main content area start -->
		<div class="main-content">
			<!-- header area start -->
			<%@include file="layout/header.jsp"%>
			<!-- header area end -->
			<!-- page title area start -->
			<div class="page-title-area">
				<div class="row align-items-center">
					<div class="col-sm-6">
						<div class="breadcrumbs-area clearfix">
							<h4 class="page-title pull-left">Dashboard</h4>
							<ul class="breadcrumbs pull-left">
								<li><a href="index.jsp">Home</a></li>
								<li><span>Danh sách Sản Phẩm</span></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6 clearfix">
						<div class="user-profile pull-right">
							<img class="avatar user-thumb"
								src="${url }/assets/images/author/avatar.png" alt="avatar">
							<h4 class="user-name dropdown-toggle" data-toggle="dropdown">
								Admin <i class="fa fa-angle-down"></i>
							</h4>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">Message</a> <a
									class="dropdown-item" href="#">Settings</a> <a
									class="dropdown-item" href="/WebCoffee/admin-logout">Log Out</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- page title area end -->
			<div class="main-content-inner">
				<div class="row">
					<!-- Hoverable Rows Table start -->
					<div class="col-lg-12 mt-5">
						<div class="card-body">
							<div class="card-title">
								<h4 class="header-title">Danh sách sản phẩm</h4>
								<a class="btn btn-primary "
									href="/WebCoffee/views/admin/addProduct.jsp">Thêm mới</a>
								<table class="table table-hover text-center">
									<thead class="text-uppercase">
										<tr>
											<th>Mã sản phẩm</th>
											<th>Tên sản phẩm</th>
											<th>Giá</th>
											<th>Giảm Giá</th>
											<th>Ảnh Minh Họa</th>
											<th>Mô Tả</th>
											<th>Mã Loại Sản Phẩm</th>
											<th>Ngày Tạo</th>
											<th>Ngày Sửa</th>
											<th>Chức năng</th>
											
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${requestScope.products }" var="product">
											<tr>
												<td>${product.id }</td>
												<td>${product.name }</td>
												<td>${product.price }</td>
												<td>${product.discount }</td>
												<td>${product.thumbnail }</td>
												<td>${product.description }</td>
												<td>${product.category_id }</td>
												<td>${product.created_at }</td>
												<td>${product.updated_at }</td>
												<td><a href="update-product?id=${product.id }">Sửa</a> | <a
													href="#" onclick="deleteProduct('${product.id}')">Xóa</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Hoverable Rows Table end -->
		</div>
	</div>
	<!-- main content area end -->
	<!-- footer area start-->
	<%@include file="layout/footer.jsp"%>
	<!-- offset area end -->
	<!-- jquery latest version -->
	<script src="${url }/assets/js/vendor/jquery-2.2.4.min.js"></script>
	<!-- bootstrap 4 js -->
	<script src="${url }/assets/js/popper.min.js"></script>
	<script src="${url }/assets/js/bootstrap.min.js"></script>
	<script src="${url }/assets/js/owl.carousel.min.js"></script>
	<script src="${url }/assets/js/metisMenu.min.js"></script>
	<script src="${url }/assets/js/jquery.slimscroll.min.js"></script>
	<script src="${url }/assets/js/jquery.slicknav.min.js"></script>

	<!-- others plugins -->
	<script src="${url }/assets/js/plugins.js"></script>
	<script src="${url }/assets/js/scripts.js"></script>
	<!-- Template Main JS File -->
	<script>
		function deleteProduct(id) {
			let answer = confirm("Bạn có đồng ý xóa?");
			if (answer) {
				window.location = "delete-product?id=" + id;
			}
		}
	</script>
</body>

</html>
