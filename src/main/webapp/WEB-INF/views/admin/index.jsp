<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp" %>
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
							<h3 class="box-title">Revenue for the day</h3>
							<!-- insert data -->
							<ul class="list-inline two-part d-flex align-items-center mb-0">
								<li>
									<div id="sparklinedash">
										<canvas width="67" height="30"
											style="display: inline-block; width: 67px; height: 30px; vertical-align: top;"></canvas>
									</div>
								</li>
								<li class="ms-auto"><span class="counter text-success"><c:out value = '${sumofday}'/> VNĐ</span></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12">
						<div class="white-box analytics-info">
							<h3 class="box-title">Revenue for the month</h3>
							<ul class="list-inline two-part d-flex align-items-center mb-0">
								<li>
									<div id="sparklinedash2">
										<canvas width="67" height="30"
											style="display: inline-block; width: 67px; height: 30px; vertical-align: top;"></canvas>
									</div>
								</li>
								<li class="ms-auto"><span class="counter text-purple"><c:out value = '${sumofmonth}'/> VNĐ</span></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12">
						<div class="white-box analytics-info">
							<h3 class="box-title">Revenue for the year</h3>
							<ul class="list-inline two-part d-flex align-items-center mb-0">
								<li>
									<div id="sparklinedash3">
										<canvas width="67" height="30"
											style="display: inline-block; width: 67px; height: 30px; vertical-align: top;"></canvas>
									</div>
								</li>
								<li class="ms-auto"><span class="counter text-info"><c:out value = '${sumofyear}'/> VNĐ</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
						<div class="white-box">
							<h3 class="box-title">Services daily Sales</h3>
							<form action="/admin-home" method="post">
							<ul>
								<li>
									<div class="form-group">
										<label for="start-date" class="col-form-label">Start Date</label>
										<input type="date" class="form-control" id="start-date"
											name="startDate" required>
									</div>
								</li>
								<li>
									<div class="form-group">
										<label for="end-date" class="col-form-label">End Date</label> 
										<input type="date" class="form-control" id="end-date" name="endDate"
											required>
									</div>
								</li>
							</ul>
							<h3 class="box-title">Revenue</h3>
							<ul class="list-inline two-part d-flex align-items-center mb-0">
								<li>
									<div id="sparklinedash3">
										<canvas width="67" height="30"
											style="display: inline-block; width: 67px; height: 30px; vertical-align: top;"></canvas>
									</div>
								</li>
								<li class="ms-auto"><span class="counter text-info"><c:out value = '${sumofdaytoday}'/> VNĐ</span>
								</li>
							</ul>
							<div class="form-group mb-4">
                                            <div class="col-sm-12">
                                                <button type="submit" class="btn btn-success">Find
                                                    Information</button>
                                            </div>
                                        </div>
							</form>
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