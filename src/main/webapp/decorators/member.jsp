<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta name="viewport" content="width=device-width" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!-- Tell the browser to be responsive to screen width -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords"
			content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
		<meta name="description"
			content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
		<meta name="robots" content="noindex,nofollow">
		<title>Barbershop customer management</title>
		<link rel="canonical"
			href="https://www.wrappixel.com/templates/ample-admin-lite/" />
		<!-- Favicon icon -->
		<link rel="icon" type="image/png" sizes="16x16"
			href="<c:url value='/template/plugins/images/favicon.png'/>">
		<!-- Custom CSS -->
		<link
			href="<c:url value='/template/css/style.min.css'/>"
			rel="stylesheet">
		<link
			href="<c:url value='/template/plugins/bower_components/chartist/dist/chartist.min.css'/>"
			rel="stylesheet">
		<link rel="stylesheet"
			href="<c:url value='/template/plugins/chbower_componentsartits-plugin-tooltips/dist/chartist-plugin-tooltip.css'/>">
		<link
			href="<c:url value='/template/css/sb-admin.css'/>"
			rel="stylesheet">
		<!--toggle button-->
		<link rel="stylesheet"
			href="<c:url value='/template/bootstrap-toggle-master/css/bootstrap-toggle.css'/>">
		<link
			href="<c:url value='/template/vendor/fontawesome-free/css/all.min.css'/>"
			rel="stylesheet" type="text/css">
		<link
			href="<c:url value='/template/css/sb-admin.css'/>"
			rel="stylesheet">
		<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
		<!--end toggle button-->
		<script
			src="<c:url value='/template/bootstrap-toggle-master/js/bootstrap-toggle.js'/>"></script>
		<title><dec:title default="Member" /></title>
	</head>
	<body>
		<div class="preloader">
			<div class="lds-ripple">
				<div class="lds-pos"></div>
				<div class="lds-pos"></div>
			</div>
		</div>
		<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5"
			data-sidebartype="full" data-sidebar-position="absolute"
			data-header-position="absolute" data-boxed-layout="full">
			<!-- header -->
			<%@ include file="/common/member/header.jsp" %>
			<!-- header -->
			
			<!-- menu -->
			<%@ include file="/common/member/menu.jsp" %>
			<!-- menu -->
			
			<div class="page-wrapper">
				<dec:body/>
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
					<a class="btn btn-primary" href="<c:url value='/logout'/> ">Logout</a>
				</div>
			</div>
		</div>
	</div>
				<!-- footer -->
				<%@ include file="/common/member/footer.jsp" %>
				<!-- footer -->
			</div>
		</div>
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
	<!--End modal-->
	</body>
	
	<script
		src="<c:url value='/template/plugins/bower_components/jquery/dist/jquery.min.js'/>"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="<c:url value='/template/bootstrap/dist/js/bootstrap.bundle.min.js'/>"></script>
	<script
		src="<c:url value='/template/js/app-style-switcher.js'/>"></script>
	<script
		src="<c:url value='/template/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js'/>"></script>
	<!--Wave Effects -->
	<script
		src="<c:url value='/template/js/waves.js'/>"></script>
	<!--Menu sidebar -->
	<script
		src="<c:url value='/template/js/sidebarmenu.js'/>"></script>
	<!--Custom JavaScript -->
	<script
		src="<c:url value='/template/js/custom.js'/>"></script>
	<!--This page JavaScript -->
	<!--chartis chart-->
	<script
		src="<c:url value='/template/plugins/bower_components/chartist/dist/chartist.min.js'/>"></script>
	<script
		src="<c:url value='/template/plugins/bower_components/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js'/>"></script>
	<script
		src="<c:url value='/template/js/pages/dashboards/dashboard1.js'/>"></script>
	<script
		src="<c:url value='/template/js/pages/dashboards/Mouseover.js'/>"></script>
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script
		src="<c:url value='/template/js/pages/dashboards/piechart.js'/>"></script>
		<script
		src="<c:url value='/template/js/sb-admin.min.js'/>"></script>
		<script
		src="<c:url value='/template/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="<c:url value='/template/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
</html>