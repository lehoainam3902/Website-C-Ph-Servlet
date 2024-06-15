<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/views/client" var="url"></c:url>
<%
	ProductDAO productDAO = new ProductDAO();
	Product product = productDAO.getById(Integer.parseInt(request.getParameter("id")));
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Chi tiết sản phẩm</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Great+Vibes"
	rel="stylesheet">

<link rel="stylesheet"
	href="${url }/assets/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${url }/assets/css/animate.css">

<link rel="stylesheet" href="${url }/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${url }/assets/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${url }/assets/css/magnific-popup.css">

<link rel="stylesheet" href="${url }/assets/css/aos.css">

<link rel="stylesheet" href="${url }/assets/css/ionicons.min.css">

<link rel="stylesheet"
	href="${url }/assets/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="${url }/assets/css/jquery.timepicker.css">


<link rel="stylesheet" href="${url }/assets/css/flaticon.css">
<link rel="stylesheet" href="${url }/assets/css/icomoon.css">
<link rel="stylesheet" href="${url }/assets/css/style.css">
</head>
<body>
	<!-- HEADER -->
	<%@include file="layout/header.jsp"%>
	<!-- END HEADER -->

	<section class="home-slider owl-carousel">

		<div class="slider-item"
			style="background-image: url(${url }/assets/images/bg_3.jpg);"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row slider-text justify-content-center align-items-center">

					<div class="col-md-7 col-sm-12 text-center ftco-animate">
						<h1 class="mb-3 mt-5 bread">Chi tiết sản phẩm</h1>
						<p class="breadcrumbs">
							<span class="mr-2"><a href="home.jsp">Trang chủ</a></span> <span>Chi
								tiết sản phẩm</span>
						</p>
					</div>

				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 mb-5 ftco-animate">
					<a href="${url }/assets/images/<%=product.getThumbnail() %>" class="image-popup"><img
						src="${url }/assets/images/<%=product.getThumbnail() %>" class="img-fluid"
						alt="Colorlib Template"></a>
				</div>
				<div class="col-lg-6 product-details pl-md-5 ftco-animate">
					<h3><%=product.getName()%></h3>
					<p class="price">
						<span><%=product.getPrice()%></span>
					</p>
					<p><%=product.getDescription()%></p>
					<p>
						<a href="/WebCoffee/menu" class="btn btn-primary py-3 px-5">Xem Menu</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- FOOTER -->
	<%@include file="layout/footer.jsp"%>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="${url }/assets/js/jquery.min.js"></script>
	<script src="${url }/assets/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="${url }/assets/js/popper.min.js"></script>
	<script src="${url }/assets/js/bootstrap.min.js"></script>
	<script src="${url }/assets/js/jquery.easing.1.3.js"></script>
	<script src="${url }/assets/js/jquery.waypoints.min.js"></script>
	<script src="${url }/assets/js/jquery.stellar.min.js"></script>
	<script src="${url }/assets/js/owl.carousel.min.js"></script>
	<script src="${url }/assets/js/jquery.magnific-popup.min.js"></script>
	<script src="${url }/assets/js/aos.js"></script>
	<script src="${url }/assets/js/jquery.animateNumber.min.js"></script>
	<script src="${url }/assets/js/bootstrap-datepicker.js"></script>
	<script src="${url }/assets/js/jquery.timepicker.min.js"></script>
	<script src="${url }/assets/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="${url }/assets/js/google-map.js"></script>
	<script src="${url }/assets/js/main.js"></script>
</body>
</html>