<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="wrappixel, admin Homepage, html css Homepage, web Homepage, bootstrap 5 admin, bootstrap 5, css3 Homepage, bootstrap 5 Homepage, Ample lite admin bootstrap 5 Homepage, frontend, responsive bootstrap 5 admin template, Ample admin lite Homepage bootstrap 5 Homepage template">
<meta name="description"
	content="Ample Admin Lite is powerful and clean admin Homepage template, inpired from Bootstrap Framework">
<meta name="robots" content="noindex,nofollow">
<title>Barbershop customer management</title>
</head>

<body>

	<div class="page-breadcrumb bg-white">
		<div class="row align-items-center">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Service</h4>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<div class="white-box">
					<h3 class="box-title" style="display: inline; padding-right: 5%;">Service</h3>
					<div class="table-responsive">
						<table class="table text-nowrap">
							<thead>
								<tr>
									<th class="border-top-0">#</th>
									<th class="border-top-0">Service's Name</th>
									<th class="border-top-0">Service's Price</th>
									<th class="border-top-0">Status</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="s" items="${listService}">
									<tr>
										<td>${s.getMaDv()}</td>
										<td>${s.getTenDv()}</td>
										<td>${s.getGia()}</td>
										<td>${s.getTrangThai()}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script>
		$('#exampleModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget)
			var recipient = button.data('whatever')
			var modal = $(this)
			modal.find('.modal-title').text('New message to ' + recipient)
			modal.find('.modal-body input').val(recipient)
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

	<!--End modal-->
</body>

</html>