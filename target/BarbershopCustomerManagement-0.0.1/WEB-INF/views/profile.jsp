<%@ page language="java"   pageEncoding="utf-8"%>
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
                                <div class="user-bg"> <img width="100%" alt="user" src="${pageContext.servletContext.contextPath}/resources/assets/plugins/images/large/img1.jpg">
                                    <div class="overlay-box">
                                        <div class="user-content">
                                            <a href="javascript:void(0)"><img src="${pageContext.servletContext.contextPath}/resources/assets/plugins/images/users/genu.jpg"
                                                    class="thumb-lg img-circle" alt="img"></a>
                                            <h4 class="text-white mt-2">User Name</h4>
                                            <h5 class="text-white mt-2">info@myadmin.com</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="user-btm-box mt-5 d-md-flex">
                                    <div
                                        class="col-md-4 col-sm-4 text-center btn btn-danger  d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white">
                                        <h3>Vip</h3>
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
                                    <form class="form-horizontal form-material">
                                        <div class="form-group mb-4">
                                            <label class="col-md-12 p-0">Full Name</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <input type="text" placeholder="Johnathan Doe"
                                                    class="form-control p-0 border-0">
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label for="example-email" class="col-md-12 p-0">Email</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <input type="email" placeholder="johnathan@admin.com"
                                                    class="form-control p-0 border-0" name="example-email"
                                                    id="example-email">
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-md-12 p-0">Password</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <input type="password" value="password"
                                                    class="form-control p-0 border-0">
                                            </div>
                                        </div>
                                        <div class="form-group mb-4">
                                            <label class="col-md-12 p-0">Phone Number</label>
                                            <div class="col-md-12 border-bottom p-0">
                                                <input type="text" placeholder="123 456 7890"
                                                    class="form-control p-0 border-0">
                                            </div>
                                        </div>

                                        <div class="form-group mb-4">
                                            <div class="col-sm-12">
                                                <button type="submit" class="btn btn-success">Update
                                                    Information</button>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- form xử lý-->
                                </div>
                            </div>
                        </div>
                        <!-- Column -->
                    </div>
                </div>
    <!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
    
        <script src="${pageContext.servletContext.contextPath}/resources/assets/plugins/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script src="${pageContext.servletContext.contextPath}/resources/assets/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/assets/js/app-style-switcher.js"></script>
        <!--Wave Effects -->
        <script src="${pageContext.servletContext.contextPath}/resources/assets/js/waves.js"></script>
        <!--Menu sidebar -->
        <script src="${pageContext.servletContext.contextPath}/resources/assets/js/sidebarmenu.js"></script>
        <!--Custom JavaScript -->
        <script src="${pageContext.servletContext.contextPath}/resources/assets/js/custom.js"></script>
      	<script
		src="${pageContext.servletContext.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>