<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/views/client" var="url"></c:url>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Coffee HAU Cafe&Tea</title>
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
			style="background-image: url(${url }/assets/images/bg_1.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row slider-text justify-content-center align-items-center"
					data-scrollax-parent="true">

					<div class="col-md-8 col-sm-12 text-center ftco-animate">
						<span class="subheading">CHÀO MỪNG</span>
						<h1 class="mb-4">MỜI THỬ LY CÀ PHÊ CHẤT LƯỢNG</h1>
						<p class="mb-4 mb-md-5">Từ những niềm đam mê chúng tôi tạo ra
							những hạt cà phê</p>
						<p>
							<a href="/WebCoffee/menu"
								class="btn btn-primary p-3 px-xl-4 py-xl-3">Xem menu</a>
						</p>
					</div>

				</div>
			</div>
		</div>

		<div class="slider-item"
			style="background-image: url(${url }/assets/images/bg_2.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row slider-text justify-content-center align-items-center"
					data-scrollax-parent="true">

					<div class="col-md-8 col-sm-12 text-center ftco-animate">
						<span class="subheading">CHÀO MỪNG</span>
						<h1 class="mb-4">CÀ PHÊ &amp; TRÀ</h1>
						<p class="mb-4 mb-md-5">Những ly cà phê, ly trà luôn được
							chúng tôi đảm bảo giữ được mức nhiệt tốt nhất.</p>
						<p>
							<a href="/WebCoffee/menu"
								class="btn btn-primary p-3 px-xl-4 py-xl-3">Xem menu</a>
						</p>
					</div>

				</div>
			</div>
		</div>

		<div class="slider-item"
			style="background-image: url(${url }/assets/images/bg_3.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row slider-text justify-content-center align-items-center"
					data-scrollax-parent="true">

					<div class="col-md-8 col-sm-12 text-center ftco-animate">
						<span class="subheading">CHÀO MỪNG</span>
						<h1 class="mb-4">Đội ngũ nhân viên tràn đầy nhiệt huyết</h1>
						<p class="mb-4 mb-md-5">Trong suốt quá trình hoạt động và
							phát triển, đội ngũ quản lý và nhân viên của Coffee HAU, qua
							bao thế hệ, đã cùng nhau xây dựng, nuôi dưỡng niềm đam mê
							dành cho trà và cà phê với mong muốn được thử thách bản
							thân trong ngành dịch vụ năng động và sáng tạo.</p>
						<p>
							<a href="/WebCoffee/menu"
								class="btn btn-primary p-3 px-xl-4 py-xl-3">Xem menu</a>
						</p>
					</div>

				</div>
			</div>
		</div>
	</section>
	<section class="ftco-about d-md-flex">
		<div class="one-half img"
			style="background-image: url(${url }/assets/images/about.jpg);"></div>
		<div class="one-half ftco-animate">
			<div class="overlap">
				<div class="heading-section ftco-animate mb-2">
					<span class="subheading">Đôi lời tâm sự</span>
				</div>
				<div>
					<p>Đối với mỗi người, thời sinh viên có lẽ không nhiều người có
						kỷ niệm về cafe. Đối với tôi, kỷ niệm về cà phê có lẽ là những lần
						họp team làm bài tập nhóm. Sự gắn kết của những con người chỉ biết
						nhau trên giảng đường được khắng khít hơn qua những ly cà phê. Mỗi
						một môn học mới, tôi lại có những người bạn mới, nhóm mới. Rồi làm
						bài nhóm thì vẫn hẹn nhau ra những quán cafe, ngồi lỳ trong đó từ
						sáng đến tối, chỉ để làm xong phần bài tập. Xong môn học, chẳng có
						ai nhớ đến nó nữa vì mục đích cũng đã xong.</p>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 pr-md-5">
					<div class="heading-section text-md-right ftco-animate">
						<span class="subheading">Thức uống</span>
						<p class="mb-4 mt-3">Đến với Coffee HAU, thực khách sẽ có
							nhiều hơn những sự lựa chọn. Nếu những ngày thong dong, bạn có
							thể thưởng thức những ly cà phê sữa pha phin với hương vị nổi
							tiếng của Coffee HAU. Sự ấn tượng từ cà phê nguyên chất được pha
							phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà,
							hài hoà giữa vị đắng và ngọt nơi đầu lưỡi. Hứa hẹn sẽ mang lại
							cho thực khách những hương vị mới mẻ sẽ khiến một ngày học tập và
							làm việc trở nên năng động hơn</p>
						<p>
							<a href="/WebCoffee/menu"
								class="btn btn-primary btn-outline-primary px-4 py-3">Xem
								sản phẩm</a>
						</p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-6">
							<div class="menu-entry">
								<a href="#" class="img"
									style="background-image: url(${url }/assets/images/menu-1.jpg);"></a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="menu-entry mt-lg-4">
								<a href="#" class="img"
									style="background-image: url(${url }/assets/images/menu-2.jpg);"></a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="menu-entry">
								<a href="#" class="img"
									style="background-image: url(${url }/assets/images/menu-3.jpg);"></a>
							</div>
						</div>
						<div class="col-md-6">
							<div class="menu-entry mt-lg-4">
								<a href="#" class="img"
									style="background-image: url(${url }/assets/images/menu-4.jpg);"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-gallery">
		<div class="container-wrap">
			<div class="row no-gutters">
				<div class="col-md-3 ftco-animate">
					<a href="gallery.html"
						class="gallery img d-flex align-items-center"
						style="background-image: url(${url }/assets/images/gallery-1.jpg);">
						<div
							class="icon mb-4 d-flex align-items-center justify-content-center">
							<span class="icon-search"></span>
						</div>
					</a>
				</div>
				<div class="col-md-3 ftco-animate">
					<a href="gallery.html"
						class="gallery img d-flex align-items-center"
						style="background-image: url(${url }/assets/images/gallery-2.jpg);">
						<div
							class="icon mb-4 d-flex align-items-center justify-content-center">
							<span class="icon-search"></span>
						</div>
					</a>
				</div>
				<div class="col-md-3 ftco-animate">
					<a href="gallery.html"
						class="gallery img d-flex align-items-center"
						style="background-image: url(${url }/assets/images/gallery-3.jpg);">
						<div
							class="icon mb-4 d-flex align-items-center justify-content-center">
							<span class="icon-search"></span>
						</div>
					</a>
				</div>
				<div class="col-md-3 ftco-animate">
					<a href="gallery.html"
						class="gallery img d-flex align-items-center"
						style="background-image: url(${url }/assets/images/gallery-4.jpg);">
						<div
							class="icon mb-4 d-flex align-items-center justify-content-center">
							<span class="icon-search"></span>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>

	<!-- FEEDBACK -->
	<section class="ftco-section img" id="ftco-testimony"
		style="background-image: url(${url }/assets/images/bg_1.jpg);"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 heading-section text-center ftco-animate">
					<span class="subheading">Phản Hồi Của Khách Hàng</span>
				</div>
			</div>
			<div class="container-wrap">
				<div class="row d-flex no-gutters">
					<di v class="col-lg align-self-sm-end ftco-animate">
					<div class="testimony">
						<blockquote>
							<p>&ldquo;Even the all-powerful Pointing has no control about
								the blind texts it is an almost unorthographic life One day
								however a small.&rdquo;</p>
						</blockquote>
						<div class="author d-flex mt-4">
							<div class="image mr-3 align-self-center">
								<img src="${url }/assets/images/person_1.jpg" alt="">
							</div>
							<div class="name align-self-center">
								Louise Kelly <span class="position">Illustrator Designer</span>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- END OF FEEDBACK -->

	<!-- DESCRIPTION -->
	<section class="ftco-section ftco-services">
		<div class="container">
			<div class="row">
				<div class="col-md-4 ftco-animate">
					<div class="media d-block text-center block-6 services">
						<div
							class="icon d-flex justify-content-center align-items-center mb-5">
							<span class="flaticon-choices"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">DỄ DÀNG ĐẶT HÀNG</h3>
							<p>Giao diện đặt hàng đơn giản dễ sử dụng.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="media d-block text-center block-6 services">
						<div
							class="icon d-flex justify-content-center align-items-center mb-5">
							<span class="flaticon-delivery-truck"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">GIAO HÀNG NHANH</h3>
							<p>Chúng tôi liên kết với công ty chuyển phát sẵn sàng phục vụ quý khách.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="media d-block text-center block-6 services">
						<div
							class="icon d-flex justify-content-center align-items-center mb-5">
							<span class="flaticon-coffee-bean"></span>
						</div>
						<div class="media-body">
							<h3 class="heading">Cà phê chất lượng</h3>
							<p>Tự tin là một trong những hãng cà phê tốt nhất trên thị trường.</p>
						</div>
					</div>
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