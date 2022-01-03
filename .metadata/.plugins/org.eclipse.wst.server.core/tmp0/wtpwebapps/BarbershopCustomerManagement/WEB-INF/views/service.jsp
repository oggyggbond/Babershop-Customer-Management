<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#addService">Add Service</button>
							<div class="table-responsive">
								<table class="table text-nowrap">
									<thead>
										<tr>
											<th class="border-top-0">#</th>
											<th class="border-top-0">Service's Name</th>
											<th class="border-top-0">Service's Price</th>
											<th class="border-top-0">Status</th>
											<th class="border-top-0">Edit</th>
											<th class="border-top-0">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="s" items="${list}">
											<tr>
												<td>${s.getMaDv()}</td>
												<td>${s.getTenDv()}</td>
												<td>${s.getGia()}</td>
												<td>${s.getTrangThai()}</td>
												<td>
													<button class="btn btn-success btn-sm rounded-0"
														onclick="edit(this)" type="button" data-toggle="modal"
														data-placement="top" title="Edit"
														data-target="#editService">
														<i class="fa fa-edit"></i>
													</button>
												</td>
												<td>

													<button class="btn btn-danger btn-sm rounded-0"
														onclick="del(this)" type="button" data-toggle="modal"
														data-placement="top" title="Delete"
														data-target="#deleteService">
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
	<div class="modal fade" id="addService" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add Service</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="service.html" modelAttribute="service">
						<form:input path="maDv" type="hidden" />

						<div class="form-group">
							<label for="tenDv" class="col-form-label">Service's Name</label>
							<form:input path="tenDv" type="text" class="form-control"
								id="tenDv" placeholder="Service's Name" />
						</div>
						<div class="form-group">
							<label for="gia" class="col-form-label">Service's Price</label>
							<form:input path="gia" type="text" class="form-control" id="gia"
								placeholder="Service's Price" />
						</div>
						<div class="form-group">
							<label class="col-form-label" style="padding-right: 100px;">Status</label>
							<label class="col-form-label">Working</label>
							<form:radiobutton path="trangThai" value="1" />
							<label class="col-form-label" style="padding-left: 50px;">UnWorking</label>
							<form:radiobutton path="trangThai" value="0" />
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

	<div class="modal fade" id="editService" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Edit Service</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="service-update.html" modelAttribute="service">

						<div class="form-group">
							<label class="col-form-label" id="edit-service-id"></label>
							<form:input path="maDv" type="hidden" id="edit-service-id-input" />
						</div>
						<div class="form-group">
							<label for="edit-service-name" class="col-form-label">Service's
								Name</label>
							<form:input path="tenDv" type="text" class="form-control"
								id="edit-service-name" />
						</div>
						<div class="form-group">
							<label for="edit-service-price" class="col-form-label">Service's
								Price</label>
							<form:input path="gia" type="text" class="form-control"
								id="edit-service-price" />
						</div>
						<div class="form-group">
							<label class="col-form-label" style="padding-right: 100px;">Status</label>
							<label class="col-form-label">Working</label>
							<form:radiobutton path="trangThai" value="1"
								id="edit-service-status" />
							<label class="col-form-label" style="padding-left: 50px;">UnWorking</label>
							<form:radiobutton path="trangThai" id="edit-service-status"
								value="0" />
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
	<div class="modal fade" id="deleteService" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Delete Service</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="service-delete.html" modelAttribute="service"
						method="POST">
						<div class="form-group">
							<label id="delete-service-id-label" class="col-form-label"></label>
							<form:input path="maDv" type="hidden"
								id="delete-service-id-input" />
						</div>
						<div class="form-group">
							<label for="delete-service-name" class="col-form-label">Name
								of Service</label> <input type="text" class="form-control"
								id="delete-service-name" readonly />
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
		//change status
		function change(){
		var rad = document.form.trangThai;
		var prev = null;
		for (var i = 0; i < rad.length; i++) {
			rad[i].addEventListener('change', function() {
				(prev) ? console.log(prev.value) : null;
				if (this !== prev) {
					prev = this;
				}
				console.log(this.value)
			});
		}
		}
	</script>
	
	<script>
		// edit Service
		function edit(id) {

			var root = id.parentNode.parentNode;
			
			
			$("#edit-service-id").text("Service's Id: " + root.getElementsByTagName("td")[0].textContent);
			$("#edit-service-id-input").val(
					root.getElementsByTagName("td")[0].textContent);
			$("#edit-service-name").val(
					root.getElementsByTagName("td")[1].textContent);
			$("#edit-service-price").val(
					root.getElementsByTagName("td")[2].textContent);
			change().$("#edit-service-status").val(
					root.getElementsByTagName("td")[3].textContent);
		}
	</script>
	
	<script>
	//delete Service
	function del(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
    	 $("#delete-service-id-label").text("Service's Id: " + arr[0].textContent);
         $("#delete-service-id-input").val(arr[0].textContent);    
         $("#delete-service-name").val(arr[1].textContent);
    }
	</script>

	
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