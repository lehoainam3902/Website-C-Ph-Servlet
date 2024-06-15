<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<c:url value="/views/admin" var="url"></c:url>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Đăng ký khách hàng</title>
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
	<!-- login area start -->
	<div class="login-area">
		<div class="container">
			<div class="login-box ptb--100">
				<form action="/WebCoffee/user-register" method="post">
					<div class="login-form-head">
						<h4>Đăng ký</h4>
						<p>Kính chào quý khách xin vui lòng nhập thông tin đăng ký</p>
					</div>
					<div class="login-form-body">
						<c:if test="${requestScope.errorUserName != null}">
							<p class="alert alert-danger text-center" role="alert">${requestScope.errorUserName}</p>
						</c:if>
						<c:if test="${not empty succMsg }">
							<p class="alert alert-success text-center" role="alert">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="alert alert-danger text-center" role="alert">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						<div class="form-gp">
							<label for="exampleFullname">Họ và tên</label> <input type="text"
								name="fullname">
						</div>
						<div class="form-gp">
							<label for="exampleUsername">Tên đăng nhập</label> <input
								type="text" name="username">

						</div>
						<div class="form-gp">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" name="password">
						</div>

						<div class="form-gp">
							<label for="exampleEmail">Email</label> <input type="email"
								name="email">
						</div>
						<div class="form-gp">
							<label for="examplePhone">Điện thoại</label> <input type="text"
								name="phone">
						</div>
						<div class="form-gp">
							<label for="exampleAddress">Địa chỉ</label> <input type="text"
								name="address">
						</div>
						<div class="form-gp" hidden="">
							<label for="exampleRole_id"></label> <input type="text"
								name="role_id" value="2">
						</div>
						<div class="form-gp" hidden="">
							<label for="exampleStatus"></label> <input type="text"
								name="status" value="1">
						</div>
						<div class="submit-btn-area">
							<button id="form_submit" type="submit">
								Đăng kí <i class="ti-arrow-right"></i>
							</button>
						</div>
						<div class="form-footer text-center mt-5">
							<p class="text-muted">
								Bạn đã có tài khoản? <a href="/WebCoffee/user-login">Đăng nhập</a>
							</p>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- login area end -->

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
</body>

</html>