<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp" %>
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
								data-target="#addPromotion">Add Promotion</button>
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
											<th class="border-top-0">Edit</th>
											<th class="border-top-0">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="s" items="${listPromotion}">
											<tr>
												<td>${s.getMaKm()}</td>
												<td>${s.getTenDv().tenDv}</td>
												<td>${s.getNgayBd()}</td>
												<td>${s.getNgayKt()}</td>
												<td>${s.getGiamGia()}</td>
												<td>${s.getMoTa()}</td>
												<td>
													<button class="btn btn-success btn-sm rounded-0"
														onclick="edit(this)" type="button" data-toggle="modal"
														data-placement="top" title="Edit"
														data-target="#editPromotion">
														<i class="fa fa-edit"></i>
													</button>
												</td>
												<td>
													<button class="btn btn-danger btn-sm rounded-0"
														onclick="del(this)" type="button" data-toggle="modal"
														data-placement="top" title="Delete"
														data-target="#deletePromotion">
														<i class="fa fa-trash"></i>
													</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

			</div>
	<!-- modal-->
	<div class="modal fade" id="addPromotion" tabindex="-1" role="dialog"
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
					<form:form action="/admin-promotion" modelAttribute="promotion" method="post">
						<form:input path="maKm" type="hidden" />
						
						<div class="form-group">
							<label for="tenDv" class="col-form-label">Service's Name</label>
							<form:select path="tenDv.maDv" items="${listService}"
								itemValue="maDv" itemLabel="tenDv" />
						</div>
						<div class="form-group">
							<label for="ngayBd" class="col-form-label">Start Date</label> <input
								type="text" class="form-control" id="ngayBd" name="ngayBd"
								placeholder="YYYY-MM-DD" required
								pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}"
								title="Enter a date in this formart YYYY-MM-DD">
						</div>
						<div class="form-group">
							<label for="ngayKt" class="col-form-label">End Date</label> <input
								type="text" class="form-control" id="ngayKt" name="ngayKt"
								placeholder="YYYY-MM-DD" required
								pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}"
								title="Enter a date in this formart YYYY-MM-DD">
						</div>
						<div class="form-group">
							<label for="giamGia" class="col-form-label">Discount</label> <input
								type="number" class="form-control" id="giamGia" name="giamGia"
								required >
						</div>
						<div class="form-group">
							<label for="moTa" class="col-form-label">Described</label> <input
								type="text" class="form-control" id="moTa" name="moTa">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Apply</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="editPromotion" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Edit Promotion</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="/admin-edit-promotion"
						modelAttribute="promotion" method="post">

						<div class="form-group">
							<label class="col-form-label" id="edit-promotion-id"></label>
							<form:input path="maKm" type="hidden"
								id="edit-promotion-id-input" />
						</div>
						<div class="form-group">
							<label for="edit-service-name" class="col-form-label">Service's
								Name</label>
							<form:select path="tenDv.maDv" items="${listService}"
								itemValue="maDv" itemLabel="tenDv" />
						</div>
						<div class="form-group">
							<label for="edit-ngayBd" class="col-form-label">Start
								Date</label>
							<input type="text" class="form-control" id="edit-ngayBd"
								name="ngayBd" placeholder="YYYY-MM-DD" required
								pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}"
								title="Enter a date in this formart YYYY-MM-DD">
						</div>
						<div class="form-group">
							<label for="edit-ngayKt" class="col-form-label">End
								Date</label>
							<input type="text" class="form-control" id="edit-ngayKt"
								name="ngayKt" placeholder="YYYY-MM-DD" required
								pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}"
								title="Enter a date in this formart YYYY-MM-DD">
						</div>
						<div class="form-group">
							<label for="edit-giamGia" class="col-form-label">Discount
							</label>
							<form:input path="giamGia" type="number" class="form-control"
								id="edit-giamGia" />
						</div>
						<div class="form-group">
							<label for="edit-moTa" class="col-form-label">Described </label>
							<form:input path="moTa" type="text" class="form-control"
								id="edit-moTa" />
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Apply</button>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>

	<!-- Deletemodal-->
	<div class="modal fade" id="deletePromotion" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Delete Promotion</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="/admin-delete-promotion" modelAttribute="promotion"
						method="POST">
						<div class="form-group">
							<label id="delete-promotion-id-label" class="col-form-label"></label>
							<form:input path="maKm" type="hidden"
								id="delete-promotion-id-input" />
						</div>
						<div class="form-group">
							<label for="delete-service-name" class="col-form-label">Name
								of Service</label> <input type="text" class="form-control"
								id="delete-service-name" readonly />
						</div>
						<div class="form-group">
							<label for="delete-giamGia" class="col-form-label">Discount
							</label> <input type="text" class="form-control"
								id="delete-giamGia" readonly />
						</div>
						<div class="form-group">
							<label for="delete-moTa" class="col-form-label">Described
								</label> <input type="text" class="form-control"
								id="delete-moTa" readonly />
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Apply</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		// edit Promotion
		function edit(id) {

			var root = id.parentNode.parentNode;
			
			
			$("#edit-promotion-id").text("Promotion's Id: " + root.getElementsByTagName("td")[0].textContent);
			$("#edit-promotion-id-input").val(
					root.getElementsByTagName("td")[0].textContent);
			$("#edit-service-name").val(
					root.getElementsByTagName("td")[1].textContent);
			$("#edit-ngayBd").val(
					root.getElementsByTagName("td")[2].textContent);
			$("#edit-ngayKt").val(
					root.getElementsByTagName("td")[3].textContent);
			$("#edit-giamGia").val(
					root.getElementsByTagName("td")[4].textContent);
			$("#edit-moTa").val(
					root.getElementsByTagName("td")[5].textContent);
		}
	</script>
	
	<script>
	//delete Promotion
	function del(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
    	 $("#delete-promotion-id-label").text("Promotion's Id: " + arr[0].textContent);
         $("#delete-promotion-id-input").val(arr[0].textContent);    
         $("#delete-service-name").val(arr[1].textContent);
         $("#delete-giamGia").val(arr[4].textContent);
         $("#delete-moTa").val(arr[5].textContent);
    }
	</script>
	
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