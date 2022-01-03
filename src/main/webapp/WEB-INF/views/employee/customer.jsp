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
<link href="<c:url value='/template/css/style.min.css'/>"
	rel="stylesheet">
<!--toggle button-->
<link rel="stylesheet"
	href="<c:url value='/template/bootstrap-toggle-master/css/bootstrap-toggle.css'/>">
<link
	href="<c:url value='/template/vendor/fontawesome-free/css/all.min.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/template/css/sb-admin.css'/>"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

<script
	src="<c:url value='/template/bootstrap-toggle-master/js/bootstrap-toggle.js'/>"></script>

</head>

<body>

	<div class="page-breadcrumb bg-white">
		<div class="row align-items-center">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
			<h5>${messsage}</h5>
				<h4 class="page-title">
					<button type="button" class="btn btn-dark" onclick="display(this)">Customer</button>
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
								</tr>
							</thead>
							<tbody>
								<c:forEach var="c" items="${listCustomer}">
									<tr>
										<td>${c.getMaKh()}</td>
										<td>${c.getHo()}</td>
										<td>${c.getTen()}</td>
										<td>${c.getPhai()}</td>
										<td>${c.getEmail()}</td>
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
					<form:form action="/employee-customer" modelAttribute="customer">
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
							<form:input path="email" type="text" class="form-control"
								id="email" placeholder="Email" />
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
								itemValue="maLoai" itemLabel="tenLoai" class="form-select"
								aria-label="Default select example" />
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
					<form:form action="/employee-edit-customer" modelAttribute="customer">
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
							<form:input path="email" type="text" class="form-control"
								id="email" placeholder="Email" />
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