<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/views/client" var="url"></c:url>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Liên hệ</title>
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
						<h1 class="mb-3 mt-5 bread">Liên hệ chúng tôi</h1>
						<p class="breadcrumbs">
							<span class="mr-2"><a href="index.jsp">Trang chủ</a></span> <span>Liên hệ</span>
						</p>
					</div>

				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section contact-section">
		<div class="container mt-5">
			<div class="row block-9">
				<div class="col-md-4 contact-info ftco-animate">
					<div class="row">
						<div class="col-md-12 mb-4">
							<h2 class="h4">Thông tin liên hệ</h2>
						</div>
						<div class="col-md-12 mb-3">
							<p>
								<span>Địa chỉ:</span> 51 P. Lê Đại Hành, P, Hai Bà Trưng, Hà Nội 113900
							</p>
						</div>
						<div class="col-md-12 mb-3">
							<p>
								<span>Điện thoại:</span> <a href="tel://1234567920">0967537415</a>
							</p>
						</div>
						<div class="col-md-12 mb-3">
							<p>
								<span>Email:</span> <a href="mailto:info@yoursite.com">lehoainam1233902@gmail.com</a>
							</p>
						</div>
						<div class="col-md-12 mb-3">
							<p>
								<span>Website:</span> <a href="#">WebCoffee HAU</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-6 ftco-animate">
					<form action="#" class="contact-form">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Họ tên">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Email">
								</div>
							</div>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Đối tượng">
						</div>
						<div class="form-group">
							<textarea name="" id="" cols="30" rows="7" class="form-control"
								placeholder="Lời nhắn"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" value="Gửi phản hồi"
								class="btn btn-primary py-3 px-5">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<div class="map__iframe">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29793.988211049866!2d105.8369637!3d21.022739599999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2sHanoi!5e0!3m2!1sen!2s!4v1697214400004!5m2!1sen!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>
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
	<script>
    // Find all elements with the class "product-remove"
    const removeButtons = document.querySelectorAll('.product-remove a');

    // Add a click event listener to each "Remove" button
    removeButtons.forEach(button => {
        button.addEventListener('click', function (event) {
            // Prevent the default link behavior
            event.preventDefault();

            // Get the cart ID from the data attribute
            const cartId = button.getAttribute('data-cart-id');

            // Find the corresponding table row and remove it
            const tableRow = button.closest('tr');
            if (tableRow) {
                tableRow.remove();
            }

            // You can also send an AJAX request to delete the item from the server-side if needed
            // Example AJAX request (requires jQuery):
            // $.post('/deleteCartItem', { cartId: cartId }, function (data) {
            //     // Handle the response from the server
            // });
        });
    });

</script>
</body>
</html>