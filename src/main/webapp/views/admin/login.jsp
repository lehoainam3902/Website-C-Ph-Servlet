<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/views/admin" var="url"></c:url>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Đăng nhập</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png"
	href="${url}/assets/images/icon/favicon.ico">
<link rel="stylesheet" href="${url}/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${url}/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${url}/assets/css/themify-icons.css">
<link rel="stylesheet" href="${url}/assets/css/metisMenu.css">
<link rel="stylesheet" href="${url}/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="${url}/assets/css/slicknav.min.css">
<!-- amchart css -->
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<!-- others css -->
<link rel="stylesheet" href="${url}/assets/css/typography.css">
<link rel="stylesheet" href="${url}/assets/css/default-css.css">
<link rel="stylesheet" href="${url}/assets/css/styles.css">
<link rel="stylesheet" href="${url}/assets/css/responsive.css">
<!-- modernizr css -->
<script src="${url}/assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	<!-- preloader area start -->
	<div id="preloader">
		<div class="loader"></div>
	</div>
	<!-- preloader area end -->
	<!-- login area start -->
	<div class="login-area login-s2">
		<div class="container">
			<div class="login-box ptb--100">
				<form action="/WebCoffee/login" method="post">
					<div class="login-form-head">
						<h4>Đăng nhập</h4>
						<p>Xin chào, hãy đăng nhập để sử dụng trang quản trị!</p>
					</div>
					<div class="login-form-body">
						<div class="form-gp" hidden="">
							<label for="yourId">Role_id</label> <input type="text"
								name="role_id" id="yourId" value="1"> <i
								class="ti-email"></i>
						</div>
						<div class="form-gp">
							<label for="yourUsername">Tên đăng nhập</label> <input
								type="text" name="username" id="yourUsername"> <i
								class="ti-email"></i>
						</div>
						<div class="form-gp">
							<label for="yourPassword">Mật khẩu</label> <input type="password"
								id="yourPassword" name="password"> <i class="ti-lock"></i>
						</div>
						<c:if test="${requestScope.loginError != null}">
							<p class="alert alert-danger">${requestScope.loginError}</p>
						</c:if>
						<div class="row mb-4 rmber-area">
							<div class="col-6">
								<div class="custom-control custom-checkbox mr-sm-2">
									<input type="checkbox" class="custom-control-input"
										id="customControlAutosizing"> <label
										class="custom-control-label" for="customControlAutosizing">Ghi
										nhớ</label>
								</div>
							</div>

						</div>
						<div class="submit-btn-area">
							<button id="form_submit" type="submit">
								Đăng nhập <i class="ti-arrow-right"></i>
							</button>
						</div>

					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- login area end -->

	<!-- jquery latest version -->
	<script src="${url}/assets/js/vendor/jquery-2.2.4.min.js"></script>
	<!-- bootstrap 4 js -->
	<script src="${url}/assets/js/popper.min.js"></script>
	<script src="${url}/assets/js/bootstrap.min.js"></script>
	<script src="${url}/assets/js/owl.carousel.min.js"></script>
	<script src="${url}/assets/js/metisMenu.min.js"></script>
	<script src="${url}/assets/js/jquery.slimscroll.min.js"></script>
	<script src="${url}/assets/js/jquery.slicknav.min.js"></script>

	<!-- others plugins -->
	<script src="${url}/assets/js/plugins.js"></script>
	<script src="${url}/assets/js/scripts.js"></script>
</body>

</html>