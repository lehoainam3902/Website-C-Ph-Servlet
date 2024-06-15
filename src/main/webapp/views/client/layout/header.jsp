<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav
	class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
	id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="/WebCoffee/home">Coffee<small>HAU</small></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#ftco-nav" aria-controls="ftco-nav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="oi oi-menu"></span>
		</button>
		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item "><a href="/WebCoffee/home"
					class="nav-link">Trang chủ</a></li>
				<li class="nav-item"><a href="/WebCoffee/menu" class="nav-link">Menu</a></li>



				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="room.html" id="dropdown04"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cửa
						hàng</a>
					<div class="dropdown-menu" aria-labelledby="dropdown04">
						<a class="dropdown-item"
							href="/WebCoffee/views/client/productDetail.jsp">Chi tiết sản
							phẩm</a> <a class="dropdown-item"
							href="/WebCoffee/views/client/cart.jsp">Giỏ hàng</a> <a
							class="dropdown-item" href="/WebCoffee/views/client/checkOut.jsp">Thanh
							toán</a>
					</div></li>
				<li class="nav-item"><a
					href="/WebCoffee/views/client/contact.jsp" class="nav-link">Liên
						hệ</a></li>


				<li class="nav-item cart"><a
					href="/WebCoffee/views/client/cart.jsp" class="nav-link"> <span
						class="icon icon-shopping_cart"></span> <span
						class="bag d-flex justify-content-center align-items-center">

							<small>${cart_list.size()}</small>

					</span>
				</a></li>
			</ul>
			<li class="nav-item"><c:if test="${not empty userobj }">
					<a class="btn btn-success">${userobj.userName}</a>
					<a href="/WebCoffee/user-logout" class="btn btn-danger">Đăng
						xuất</a>
				</c:if> 
				<c:if test="${empty userobj }">
					<a href="/WebCoffee/user-login" class="btn btn-success">Đăng
						nhập</a>
					<a href="/WebCoffee/views/client/registerUser.jsp" class="btn btn-primary">Đăng
						kí</a>

				</c:if></li>
		</div>
	</div>
</nav>
<!-- END nav -->
