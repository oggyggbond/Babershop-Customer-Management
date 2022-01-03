<%@ page language="java" pageEncoding="utf-8"%>
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

<body>
			<div class="page-breadcrumb bg-white">
				<div class="row align-items-center">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">Promotion</h4>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="white-box">
							<h3 class="box-title" style="display: inline; padding-right: 5%;">Promotion</h3>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModal">Add Promotion</button>
							<div class="table-responsive">
								<table class="table text-nowrap">
									<thead>
										<tr>
											<th class="border-top-0">#</th>
											<th class="border-top-0">Service's Name</th>
											<th class="border-top-0">Start date</th>
											<th class="border-top-0">End date</th>
											<th class="border-top-0">Discount</th>
											<th class="border-top-0">Described</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Gội đầu</td>
											<td>01/04/2021</td>
											<td>30/04/2021</td>
											<td>100%</td>
											<td>Nhân dịp sinh nhật admin, tất cả dịch vụ gội đầu đều
												miễn phí</td>
										</tr>
										<tr>
											<td>1</td>
											<td>Cắt tóc</td>
											<td>01/04/2021</td>
											<td>30/04/2021</td>
											<td>50%</td>
											<td>Nhân dịp sinh nhật admin, tất cả dịch vụ cắt tóc đều
												giảm 50%</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

			</div>
	<!-- modal-->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add Promotion</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="/" method="POST">
						<div class="form-group">
							<label for="service-name" class="col-form-label">Service's
								Name</label> <select class="form-select"
								aria-label="Default select example" id="service-name" required>
								<option value="1">Cắt Tóc</option>
								<option value="2">Gội Đầu</option>
								<option value="3">Nhuộm Tóc</option>
							</select>
						</div>
						<div class="form-group">
							<label for="start-date" class="col-form-label">Start Date</label>
							<input type="date" class="form-control" id="start-date"
								name="startDate" required>
						</div>
						<div class="form-group">
							<label for="end-date" class="col-form-label">End Date</label> <input
								type="date" class="form-control" id="end-date" name="endDate"
								required>
						</div>
						<div class="form-group">
							<label for="discount" class="col-form-label">Discount</label> <input
								type="number" class="form-control" id="discount" name="discount"
								required>
						</div>
						<div class="form-group">
							<label for="described" class="col-form-label">Described</label> <input
								type="text" class="form-control" id="described" name="described">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Apply</button>
						</div>
					</form>
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
            $('#exampleModal').on('show.bs.modal', function (event) {
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