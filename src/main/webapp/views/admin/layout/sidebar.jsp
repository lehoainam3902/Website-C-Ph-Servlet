<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/views/admin" var="url"></c:url>
<div class="sidebar-menu">
	<div class="sidebar-header">
		<div class="logo">
			<a href="index.html"><img
				src="${url }/assets/images/icon/logo.png" alt="logo"></a>
		</div>
	</div>
	<div class="main-menu">
		<div class="menu-inner">
			<nav>
				<ul class="metismenu" id="menu">
					<li class="active"><a href="/WebCoffee/views/admin/index.jsp"
						aria-expanded="true"><i class="ti-dashboard"></i><span>dashboard</span></a>
					</li>
					<li><a href="javascript:void(0)" aria-expanded="true"><i
							class="fa fa-table"></i> <span>Quản trị</span></a>
						<ul class="collapse">
							<li><a href="/WebCoffee/list-category">Quản lý Danh Mục
									Sản Phẩm</a></li>
							<li><a href="/WebCoffee/list-product">Quản lý Sản Phẩm</a></li>
							<li><a href="/WebCoffee/list-order">Quản lý Đơn Hàng</a></li>
							<li><a href="/WebCoffee/list-user">Quản lý Người Dùng</a></li>
							<li><a href="/WebCoffee/list-feedback">Quản lý Phản Hồi</a></li>
							<li><a href="/WebCoffee/list-role">Phân Quyền</a></li>
						</ul></li>
					<li>
				</ul>

			</nav>

		</div>
	</div>
</div>