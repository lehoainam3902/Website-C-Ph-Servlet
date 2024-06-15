<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/views/client" var="url"></c:url>
<%
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("carts");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Menu Coffe HAU</title>
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
						<h1 class="mb-3 mt-5 bread">Menu Coffee HAU</h1>
						<p class="breadcrumbs">
							<span class="mr-2"><a href="${url }/home.jsp">Trang
									chủ</a></span> <span>Menu</span>
						</p>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- MENU -->
	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 mb-5 pb-3">
					<h3 class="mb-5 heading-pricing ftco-animate">Cà Phê</h3>
					<c:forEach items="${requestScope.products }" var="product">
						<c:if test="${product.category_id == 1 }">
							<div class="pricing-entry d-flex ftco-animate">
								<div class="img"
									style="background-image: url(${url }/assets/images/${product.thumbnail });"></div>
								<div class="desc pl-3">
									<div class="d-flex text align-items-center">
										<h3>
											<span>${product.name }</span>
										</h3>
										<span class="price">${product.price }VND</span>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>


				<div class="col-md-6 mb-5 pb-3">
					<h3 class="mb-5 heading-pricing ftco-animate">Trà</h3>
					<c:forEach items="${requestScope.products }" var="product">
						<c:if test="${product.category_id == 2 }">
							<div class="pricing-entry d-flex ftco-animate">
								<div class="img"
									style="background-image: url(${url }/assets/images/${product.thumbnail });"></div>
								<div class="desc pl-3">
									<div class="d-flex text align-items-center">
										<h3>
											<span>${product.name }</span>
										</h3>
										<span class="price">${product.price }VND</span>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>

				<div class="col-md-6 mb-5 pb-3 mx-auto ">
					<h3 class="mb-5 heading-pricing ftco-animate">Đồ Ăn Kèm</h3>
					<c:forEach items="${requestScope.products }" var="product">
						<c:if test="${product.category_id == 3 }">
							<div class="pricing-entry d-flex ftco-animate">
								<div class="img"
									style="background-image: url(${url }/assets/images/${product.thumbnail });"></div>
								<div class="desc pl-3">
									<div class="d-flex text align-items-center">
										<h3>
											<span>${product.name }</span>
										</h3>
										<span class="price">${product.price }VND</span>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<!-- END OF MENU -->

	<!-- BOOKING -->
	<section class="ftco-menu mb-5 pb-5">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Sản phẩm của Coffee HAU</span>
				</div>
			</div>
			<div class="row d-md-flex">
				<div class="col-lg-12 ftco-animate p-md-5">
					<div class="row">

						<!-- TITLE -->
						<div class="col-md-12 nav-link-wrap mb-5">
							<div class="nav ftco-animate nav-pills justify-content-center"
								id="v-pills-tab" role="tablist" aria-orientation="vertical">
								<a class="nav-link active" id="v-pills-1-tab" data-toggle="pill"
									href="#v-pills-1" role="tab" aria-controls="v-pills-1"
									aria-selected="true">Cà Phê</a> <a class="nav-link"
									id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2"
									role="tab" aria-controls="v-pills-2" aria-selected="false">Trà</a>

								<a class="nav-link" id="v-pills-3-tab" data-toggle="pill"
									href="#v-pills-3" role="tab" aria-controls="v-pills-3"
									aria-selected="false">Đồ Ăn</a>
							</div>
						</div>
						<!-- TITLE -->

						<!-- ADD-TO-CART -->
						<div class="col-md-12 align-items-center">
							<!-- CÀ PHÊ -->
							<div class="tab-content ftco-animate" id="v-pills-tabContent">

								<div class="tab-pane fade show active" id="v-pills-1"
									role="tabpanel" aria-labelledby="v-pills-1-tab">
									<div class="row">
										<c:forEach items="${requestScope.products }" var="product">
											<c:if test="${product.category_id == 1 }">
												<div class="col-md-4 text-center">
													<div class="menu-wrap">
														<a href="#" class="menu-img img mb-4"
															style="background-image: url(${url }/assets/images/${product.thumbnail });"></a>
														<div class="text">
															<h3>
																<a href="#">${product.name }</a>
															</h3>
															<p>${product.description }</p>
															<p class="price">
																<span>${product.price }VND</span>
															</p>
															<button class="btn btn-primary btn-outline-primary"
																onclick="window.location ='add-to-cart?id=${product.id}'">
																<i>Thêm vào giỏ hàng</i>
															</button>
															<button class="btn btn-primary btn-outline-primary"
																onclick="window.location ='${url }/productDetail.jsp?id=${product.id}'">
																<i>Chi tiết sản phẩm</i>
															</button>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
								<!-- CÀ PHÊ -->

								<!-- TRÀ -->
								<div class="tab-pane fade" id="v-pills-2" role="tabpanel"
									aria-labelledby="v-pills-2-tab">
									<div class="row">

										<c:forEach items="${requestScope.products }" var="product">
											<c:if test="${product.category_id == 2 }">
												<div class="col-md-4 text-center">
													<div class="menu-wrap">
														<a href="#" class="menu-img img mb-4"
															style="background-image: url(${url }/assets/images/${product.thumbnail });"></a>
														<div class="text">
															<h3>
																<a href="#">${product.name }</a>
															</h3>
															<p>${product.description }</p>
															<p class="price">
																<span>${product.price }VND</span>
															</p>
															<button class="btn btn-primary btn-outline-primary"
																onclick="window.location ='add-to-cart?id=${product.id}'">
																<i>Thêm vào giỏ hàng</i>
															</button>
															<button class="btn btn-primary btn-outline-primary"
																onclick="window.location ='${url }/productDetail.jsp?id=${product.id}'">
																<i>Chi tiết sản phẩm</i>
															</button>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>

									</div>
								</div>

								<div class="tab-pane fade" id="v-pills-3" role="tabpanel"
									aria-labelledby="v-pills-3-tab">
									<div class="row">

										<c:forEach items="${requestScope.products }" var="product">
											<c:if test="${product.category_id == 3 }">
												<div class="col-md-4 text-center">
													<div class="menu-wrap">
														<a href="#" class="menu-img img mb-4"
															style="background-image: url(${url }/assets/images/${product.thumbnail });"></a>
														<div class="text">
															<h3>
																<a href="#">${product.name }</a>
															</h3>
															<p>${product.description }</p>
															<p class="price">
																<span>${product.price }VND</span>
															</p>
															<button class="btn btn-primary btn-outline-primary"
																onclick="window.location ='add-to-cart?id=${product.id}'">
																<i>Thêm vào giỏ hàng</i>
															</button>
															<button class="btn btn-primary btn-outline-primary"
																onclick="window.location ='${url }/productDetail.jsp?id=${product.id}'">
																<i>Chi tiết sản phẩm</i>
															</button>
														</div>
													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
						<!-- ADD-TO-CART -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END OF BOOKING -->

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