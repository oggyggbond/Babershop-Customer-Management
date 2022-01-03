<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<link rel="canonical"
	href="https://www.wrappixel.com/templates/ample-admin-lite/" />
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="<c:url value='/template/plugins/images/favicon.png'/>">
<!-- Custom CSS -->
<link
	href="<c:url value='/template/css/style.min.css'/>"
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

<script
	src="<c:url value='/template/bootstrap-toggle-master/js/bootstrap-toggle.js'/>"></script>

</head>

<body>

			<div class="page-breadcrumb bg-white">
				<div class="row align-items-center">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">
							<button type="button" class="btn btn-dark"
                                        onclick="display(this)">Customer</button>
							<button type="button" class="btn btn-warning"
								onclick="display(this)">Type of Customer</button>
						</h4>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="white-box">
							<h3 class="box-title" style="display: inline; padding-right: 5%;">Customer</h3>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#addCustomer">Add Customer</button>
							<div class="table-responsive">
								<table class="table text-nowrap">
									<thead>
										<tr>
											<th class="border-top-0">#</th>
											<th class="border-top-0">Last Name</th>
											<th class="border-top-0">First Name</th>
											<th class="border-top-0">Gender</th>
											<th class="border-top-0">Email</th>
											<th class="border-top-0">Phone Number</th>
											<th class="border-top-0">Type<br>
											<th class="border-top-0">Edit</th>
											<th class="border-top-0">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="c" items="${list}">
											<tr>
												<td>${c.getMaKh()}</td>
												<td>${c.getHo()}</td>
												<td>${c.getTen()}</td>
												<td>${c.getPhai()}</td>
												<td>${c.getEmail().email}</td>
												<td>${c.getSdt()}</td>
												<td>${c.getLoaiKh().tenLoai}</td>
												<td>
													<button class="btn btn-success btn-sm rounded-0"
														onclick="edit(this)" type="button" data-toggle="modal"
														data-placement="top" title="Edit"
														data-target="#editCustomer">
														<i class="fa fa-edit"></i>
													</button>
												</td>
												<td>

													<button class="btn btn-danger btn-sm rounded-0"
														onclick="del(this)" type="button" data-toggle="modal"
														data-placement="top" title="Delete"
														data-target="#deleteCustomer">
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
				
				<div class="row" style="display: none;">
					<div class="col-sm-12">
						<div class="white-box">
							<h3 class="box-title" style="display: inline; padding-right: 5%;">Type
								of Customer</h3>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#addType">Add Type of Customer</button>
							<div class="table-responsive">
								<table class="table text-nowrap">
									<thead>
										<tr>
											<th class="border-top-0">#</th>
											<th class="border-top-0">Name</th>
											<th class="border-top-0">Condition</th>
											<th class="border-top-0">Edit</th>
											<th class="border-top-0">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="t" items="${listType}">
											<tr>
												<td>${t.getMaLoai()}</td>
												<td>${t.getTenLoai()}</td>
												<td>${t.getDieuKien()}</td>
												<td>
													<button class="btn btn-success btn-sm rounded-0"
														onclick="editType(this)" type="button" data-toggle="modal"
														data-placement="top" title="Edit" data-target="#editType">
														<i class="fa fa-edit"></i>
													</button>
												</td>
												<td>
													<button class="btn btn-danger btn-sm rounded-0"
														onclick="delType(this)" type="button" data-toggle="modal"
														data-placement="top" title="Delete"
														data-target="#deleteType">
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
	<div class="modal fade" id="addCustomer" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add Customer</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="customer.html" modelAttribute="customer">
						<form:input path="maKh" type="hidden" />

						<div class="form-group">
							<label for="ho" class="col-form-label">Last Name</label>
							<form:input path="ho" type="text" class="form-control" id="ho"
								placeholder="Last Name" />
						</div>
						<div class="form-group">
							<label for="ten" class="col-form-label">First Name</label>
							<form:input path="ten" type="text" class="form-control" id="ten"
								placeholder="First Name" />
						</div>
						<div class="form-group">
							<label class="col-form-label" style="padding-right: 100px;">Gender</label>
							<label class="col-form-label">Male</label>
							<form:radiobutton path="phai" value="1" />
							<label class="col-form-label" style="padding-left: 50px;">Female</label>
							<form:radiobutton path="phai" value="0" />
						</div>
						<div class="form-group">
							<label for="email" class="col-form-label">Email</label>
							<form:select path="email.email" items="${email}"
								itemValue="email" itemLabel="email" />
						</div>
						<div class="form-group">
							<label for="sdt" class="col-form-label">Phone Number</label> <input
								type="text" class="form-control" id="sdt" name="sdt"
								placeholder="Phone Number" required pattern="[0-9]{10}"
								title="Enter number only(0-9)">
						</div>
						<div class="form-group">
							<label for="loaiKh" class="col-form-label">Type</label>
							<form:select path="loaiKh.maLoai" items="${listType}"
								itemValue="maLoai" itemLabel="tenLoai" />
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
	<div class="modal fade" id="editCustomer" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Edit Customer</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="customer-update.html" modelAttribute="customer">
						<div class="form-group">
							<label class="col-form-label" id="edit-customer-id"></label>
							<form:input path="maKh" type="hidden" id="edit-customer-id-input" />
						</div>
						<div class="form-group">
							<label for="edit-customer-last-name" class="col-form-label">Last
								Name</label>
							<form:input path="ho" type="text" class="form-control"
								id="edit-customer-last-name" />
						</div>
						<div class="form-group">
							<label for="edit-customer-first-name" class="col-form-label">First
								Name</label>
							<form:input path="ten" type="text" class="form-control"
								id="edit-customer-first-name" />
						</div>
						<div class="form-group">
							<label class="col-form-label" style="padding-right: 100px;">Gender</label>
							<label class="col-form-label">Male</label>
							<form:radiobutton path="phai" value="1" id="edit-phai" />
							<label class="col-form-label" style="padding-left: 50px;">Female</label>
							<form:radiobutton path="phai" id="edit-phai" value="0" />
						</div>
						<div class="form-group">
							<label for="edit-customer-email" class="col-form-label">Email</label>
							<form:select path="email.email" items="${email}"
								itemValue="email" itemLabel="email" />
						</div>
						<div class="form-group">
							<label for="edit-customer-phone-number" class="col-form-label">Phone
								Number</label> <input type="text" class="form-control"
								id="edit-customer-phone-number" name="sdt" required
								pattern="[0-9]{10}" title="Enter number only(0-9)">
						</div>
						<div class="form-group">
							<label for="edit-customer-type" class="col-form-label">Type</label>
							<form:select path="loaiKh.maLoai" items="${listType}"
								itemValue="maLoai" itemLabel="tenLoai" />
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
	<div class="modal fade" id="deleteCustomer" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Delete Customer</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="customer-delete.html" modelAttribute="customer"
						method="POST">
						<div class="form-group">
							<label id="delete-customer-id-label" class="col-form-label"></label>
							<form:input path="maKh" type="hidden"
								id="delete-customer-id-input" />
						</div>
						<div class="form-group">
							<label for="delete-customer-name" class="col-form-label">Name
								of Customer</label> <input type="text" class="form-control"
								id="delete-customer-name" readonly />
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
	
	<!-- modal-->
	<div class="modal fade" id="addType" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add Type of Customer</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="type.html" modelAttribute="type">
						<form:input path="maLoai" type="hidden" />

						<div class="form-group">
							<label for="tenLoai" class="col-form-label">Name</label>
							<form:input path="tenLoai" type="text" class="form-control" id="tenLoai"
								placeholder="Name" />
						</div>
						<div class="form-group">
							<label for="dieuKien" class="col-form-label">Condition</label>
							<form:input path="dieuKien" type="text" class="form-control" id="dieuKien"
								placeholder="Condition" />
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

	<div class="modal fade" id="editType" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Edit Type of Customer</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="type-update.html" modelAttribute="type">
						<div class="form-group">
							<label id="edit-type-id" class="col-form-label"></label>
							<form:input path="maLoai" type="hidden" id="edit-type-id-input" />
						</div>

						<div class="form-group">
							<label for="edit-type-name" class="col-form-label">Name</label>
							<form:input type="text" path="tenLoai" class="form-control"
								id="edit-type-name" />
						</div>

						<div class="form-group">
							<label for="dieuKien" class="col-form-label">Condition</label>
							<form:input type="text" path="dieuKien" class="form-control"
								id="edit-type-condition" />
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
	<div class="modal fade" id="deleteType" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Delete Type of Customer</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="type-delete.html" modelAttribute="type"
						method="POST">
						<div class="form-group">
							<label id="delete-type-id-label" class="col-form-label"></label>
							<form:input path="maLoai" type="hidden"
								id="delete-type-id-input" />
						</div>
						<div class="form-group">
							<label for="delete-type-name" class="col-form-label">Name
								</label> <input type="text" class="form-control"
								id="delete-type-name" readonly />
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
		//change gender
		function change(){
		var rad = document.form.phai;
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
		// edit Customer
		function edit(id) {

			var root = id.parentNode.parentNode;

			$("#edit-customer-id").text(
					"Customer's Id: "
							+ root.getElementsByTagName("td")[0].textContent);
			$("#edit-customer-id-input").val(
					root.getElementsByTagName("td")[0].textContent);
			$("#edit-customer-last-name").val(
					root.getElementsByTagName("td")[1].textContent);
			$("#edit-customer-first-name").val(
					root.getElementsByTagName("td")[2].textContent);
			$("#edit-customer-email").val(
					root.getElementsByTagName("td")[4].textContent);
			$("#edit-customer-phone-number").val(
					root.getElementsByTagName("td")[5].textContent);
			$("#edit-customer-type").val(
					root.getElementsByTagName("td")[6].textContent);
			change().$("#edit-phai").val(
					root.getElementsByTagName("td")[3].textContent);
		}
	</script>

	<script>
	//delete Customer
	function del(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
    	 $("#delete-customer-id-label").text("Customer's Id: " + arr[0].textContent);
         $("#delete-customer-id-input").val(arr[0].textContent);    
         $("#delete-customer-name").val(arr[1].textContent+" "+arr[2].textContent);
    }
	</script>

	<script>
		function display(id) {
			var temp = document.getElementsByClassName("container-fluid")[0];

			if (id.textContent == "Type of Customer") {
				temp.getElementsByClassName("row")[1].style.display = "block";
				temp.getElementsByClassName("row")[0].style.display = "none";
			} else {
				temp.getElementsByClassName("row")[0].style.display = "block";
				temp.getElementsByClassName("row")[1].style.display = "none";
			}
		}
	</script>
	
	<script>
	//edit Type of Customer
	function editType(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
    	 $("#edit-type-id").text("Type of Customer Id: " + arr[0].textContent);
         $("#edit-type-id-input").val(arr[0].textContent);    
         $("#edit-type-name").val(arr[1].textContent);
         $("#edit-type-condition").val(arr[2].textContent);
    }
	</script>

	<script>
	//delete Type of Customer
	function delType(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
    	 $("#delete-type-id-label").text("Type of Customer Id: " + arr[0].textContent);
         $("#delete-type-id-input").val(arr[0].textContent);    
         $("#delete-type-name").val(arr[1].textContent);
         $("#delete-type-condition").val(arr[2].textContent);
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