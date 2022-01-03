<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ page import="com.barbershop.utils.SecurityUtil"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
<meta name="description"
	content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
<meta name="robots" content="noindex,nofollow">
<title>Barbershop customer management</title>
</head>

<body>
	<!-- ============================================================== -->
	<!-- Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->
	<div class="page-breadcrumb bg-white">
		<div class="row align-items-center">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
			<h5>${messsage}</h5>
				<h4 class="page-title">Personal Information</h4>
			</div>
			<!-- /.col-lg-12 -->
		</div>

		<div class="container-fluid">

			<!-- Row -->
			<div class="row">
				<!-- Column -->
				<div class="col-lg-4 col-xlg-3 col-md-12">
					<div class="white-box">
						<div class="user-bg">

							<div class="overlay-box">
								<div class="user-content">
									<a href="javascript:void(0)"></a>
									<h4>
										<c:out value="${customerProfile.ho}"></c:out>
										<c:out value="${customerProfile.ten}"></c:out>
									</h4>
									<h5 class="text-white mt-2">
										<c:out value="<%=SecurityUtil.getPrincipal().getEmail()%>" />
									</h5>
								</div>
							</div>
						</div>
						<div class="user-btm-box mt-5 d-md-flex">
							<div
								class="col-md-4 col-sm-4 text-center btn btn-danger  d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white">
								<h3>
									<c:out value='${customerProfile.loaiKh.tenLoai}' />
								</h3>
							</div>

						</div>
					</div>
				</div>
				<!-- Column -->
				<!-- Column -->
				<div class="col-lg-8 col-xlg-9 col-md-12">
					<div class="card">
						<div class="card-body">

							<!-- form xử lý-->
							<form:form action="/member-edit-profile"
								modelAttribute="customer" method="post">
								<div class="form-group mb-4">
									<label class="col-md-12 p-0">Last Name</label>
									<div class="col-md-12 border-bottom p-0">
										<form:input path="ho" type="text" placeholder="Doe"
											class="form-control p-0 border-0"
											value="${customerProfile.ho}" />
									</div>
								</div>
								<div class="form-group mb-4">
									<label class="col-md-12 p-0">First Name</label>
									<div class="col-md-12 border-bottom p-0">
										<form:input path="ten" type="text" placeholder="Johnathan"
											class="form-control p-0 border-0"
											value="${customerProfile.ten}" />
									</div>
								</div>
								<div class="form-group mb-4">
									<label class="col-md-12 p-0">Gender</label>
									<div class="col-md-12 border-bottom p-0">
										<form:input path="phai" type="text" placeholder="JoDoe"
											class="form-control p-0 border-0"
											value="${customerProfile.phai}" />
									</div>
								</div>
								<div class="form-group mb-4">
									<label for="example-email" class="col-md-12 p-0">Email</label>
									<div class="col-md-12 border-bottom p-0">
										<form:input path="email" type="email"
											placeholder="johnathan@admin.com"
											class="form-control p-0 border-0" name="example-email"
											id="example-email"
											value="<%=SecurityUtil.getPrincipal().getEmail()%>" />
									</div>
								</div>
								<div class="form-group mb-4">
									<label class="col-md-12 p-0">Phone Number</label>
									<div class="col-md-12 border-bottom p-0">
										<form:input path="sdt" type="text" placeholder="123 456 7890"
											class="form-control p-0 border-0"
											value="${customerProfile.sdt}" />
									</div>
								</div>
								<div class="form-group mb-4">
									<div class="col-md-12 border-bottom p-0">
										<label class="col-md-12 p-0">Type of Customer</label>
										<c:out value="${customerProfile.loaiKh.tenLoai}"></c:out>
										<form:input path="loaiKh.maLoai" type="hidden"
											placeholder="123 456 7890" class="form-control p-0 border-0"
											value="${customerProfile.loaiKh.maLoai}" />
									</div>
								</div>
								<form:input path="maKh" type="hidden" placeholder="Johnathan"
									class="form-control p-0 border-0"
									value="${customerProfile.maKh}" />
								<div class="form-group mb-4">
									<div class="col-sm-12">
										<button type="submit" class="btn btn-success">Update
											Information</button>
									</div>
								</div>
							</form:form>
							<!-- form xử lý-->
						</div>
					</div>
				</div>
				<!-- Column -->
			</div>
		</div>
	</div>
	<script>
            $(function() {
              $('#toggle-two').bootstrapToggle({
                on: 'Enabled',
                off: 'Disabled'
              });
            })
          </script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>