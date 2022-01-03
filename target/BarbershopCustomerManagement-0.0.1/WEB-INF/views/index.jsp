<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="noindex,nofollow">
<title>Barbershop customer management</title>
</head>

<body>
			<div class="page-breadcrumb bg-white">
				<div class="row align-items-center">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Dashboard</h4>
					</div>
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<div class="d-md-flex">
							<ol class="breadcrumb ms-auto">
							</ol>
							<span
								class="btn btn-danger  d-none d-md-block pull-right ms-3 
                                hidden-xs hidden-sm waves-effect waves-light text-white"
								id='date-time'></span>
						</div>
					</div>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<div class="container-fluid">
				<div class="row justify-content-center">
					<div class="col-lg-4 col-md-12">
						<div class="white-box analytics-info">
							<h3 class="box-title">Revenue in today</h3>
							<!-- insert data -->
							<ul class="list-inline two-part d-flex align-items-center mb-0">
								<li>
									<div id="sparklinedash">
										<canvas width="67" height="30"
											style="display: inline-block; width: 67px; height: 30px; vertical-align: top;"></canvas>
									</div>
								</li>
								<li class="ms-auto"><span class="counter text-success">659</span></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12">
						<div class="white-box analytics-info">
							<h3 class="box-title">Number of customers visiting the store
								today</h3>
							<ul class="list-inline two-part d-flex align-items-center mb-0">
								<li>
									<div id="sparklinedash2">
										<canvas width="67" height="30"
											style="display: inline-block; width: 67px; height: 30px; vertical-align: top;"></canvas>
									</div>
								</li>
								<li class="ms-auto"><span class="counter text-purple">869</span></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12">
						<div class="white-box analytics-info">
							<h3 class="box-title">Monthly revenue</h3>
							<ul class="list-inline two-part d-flex align-items-center mb-0">
								<li>
									<div id="sparklinedash3">
										<canvas width="67" height="30"
											style="display: inline-block; width: 67px; height: 30px; vertical-align: top;"></canvas>
									</div>
								</li>
								<li class="ms-auto"><span class="counter text-info">911</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
						<div class="white-box">
							<h3 class="box-title">Services daily Sales</h3>
							<div class="d-md-flex">
								<ul class="list-inline d-flex ms-auto">
									<li class="ps-3">
										<h5>
											<i class="fa fa-circle me-1 text-inverse"></i>Money
										</h5>
									</li>
								</ul>
							</div>
							<div id="ct-visits" style="height: 405px;">
								<div class="chartist-tooltip" style="top: -17px; left: -12px;">
									<span class="chartist-tooltip-value">6</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
						<div class="white-box">
							<div id="piechart">
								<div class="chartist-tooltip" style="top: -17px; left: -20px;">
									<span class="chartist-tooltip-value">6</span>
								</div>
							</div>
						</div>
					</div>
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

	<script>
		var today = new Date();
		var dd = String(today.getDate()).padStart(2, '0');
		var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
		var yyyy = today.getFullYear();

		today = dd + '/' + mm + '/' + yyyy;
		document.getElementById('date-time').innerHTML=today;

	</script>
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
</body>

</html>