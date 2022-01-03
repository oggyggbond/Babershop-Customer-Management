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
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
<meta name="description"
	content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
<meta name="robots" content="noindex,nofollow">
<title>Barbershop customer management</title>
</head>

<body>

	
			<div class="page-breadcrumb bg-white">
				<div class="row align-items-center">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
					<h5>${messsage}</h5>
						<h4 class="page-title">
							<button type="button" class="btn btn-dark"
                                        onclick="display(this)">Employee</button>
							<button type="button" class="btn btn-warning"
								onclick="display(this)">Position</button>
						</h4>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="white-box">
							<h3 class="box-title" style="display: inline; padding-right: 5%;">Employee</h3>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#addEmployee">Add Employee</button>
							<div class="table-responsive">
								<table class="table text-nowrap">
									<thead>
										<tr>
											<th class="border-top-0">#</th>
											<th class="border-top-0">Last Name</th>
											<th class="border-top-0">First Name</th>
											<th class="border-top-0">Phone Number</th>
											<th class="border-top-0">Email</th>
											<th class="border-top-0">Status</th>
											<th class="border-top-0">Position</th>
											<th class="border-top-0">Edit</th>
											<th class="border-top-0">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="e" items="${listEmployee}">
											<tr>
												<td>${e.getMaNv()}</td>
												<td>${e.getHo()}</td>
												<td>${e.getTen()}</td>
												<td>${e.getSdt()}</td>
												<td>${e.getEmail()}</td>
												<td>${e.getTrangThai()}</td>
												<td>${e.getChucVu().name}</td>
												<td>
													<button class="btn btn-success btn-sm rounded-0" onclick="edit(this)"
														type="button" data-toggle="modal" data-placement="top"
														title="Edit" data-target="#editEmployee">
														<i class="fa fa-edit"></i>
													</button>
												</td>
												<td>

													<button class="btn btn-danger btn-sm rounded-0" onclick="del(this)"
														type="button" data-toggle="modal" data-placement="top"
														title="Delete" data-target="#deleteEmployee">
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
							<h3 class="box-title" style="display: inline; padding-right: 5%;">Position</h3>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#addPosition">Add Position</button>
							<div class="table-responsive">
								<table class="table text-nowrap">
									<thead>
										<tr>
											<th class="border-top-0">#</th>
											<th class="border-top-0">Position's Name</th>
											<th class="border-top-0">Edit</th>
											<th class="border-top-0">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="p" items="${listPosition}">
											<tr>
												<td>${p.getMaCv()}</td>
												<td>${p.getName()}</td>
												<td>
													<button class="btn btn-success btn-sm rounded-0"
														onclick="editPosition(this)" type="button" data-toggle="modal"
														data-placement="top" title="Edit"
														data-target="#editPosition">
														<i class="fa fa-edit"></i>
													</button>
												</td>
												<td>

													<button class="btn btn-danger btn-sm rounded-0"
														onclick="delPosition(this)" type="button" data-toggle="modal"
														data-placement="top" title="Delete"
														data-target="#deletePosition">
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
	<div class="modal fade" id="addEmployee" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add Employee</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="/admin-employee" modelAttribute="employee" method="post">
						<form:input path="maNv" type="hidden" />

						<div class="form-group">
							<label for="ho" class="col-form-label">Last Name</label>
							<form:input path="ho" type="text" class="form-control" id="ho" placeholder="Last Name"/>
						</div>
						<div class="form-group">
							<label for="ten" class="col-form-label">First Name</label>
							<form:input path="ten" type="text" class="form-control" id="ten" placeholder="First Name"/>
						</div>
						<div class="form-group">
							<label for="sdt" class="col-form-label">Phone Number</label> 
							<input type="text" class="form-control" id="sdt" name="sdt" placeholder="Phone Number"
								required pattern="[0-9]{10}" title="Enter number only(0-9)">
						</div>
						<div class="form-group">
							<label for="email" class="col-form-label">Email</label>
							<form:input path="email" type="email" class="form-control" id="ten" placeholder="Email"/>
						</div>
						<div class="form-group">
							<label class="col-form-label" style="padding-right: 100px;">Status</label>
							<label class="col-form-label">Working</label>
							<form:radiobutton path="trangThai" value="1" />
							<label class="col-form-label" style="padding-left: 50px;">UnWorking</label>
							<form:radiobutton path="trangThai" value="0" />
						</div>
						<div class="form-group">
							<label for="chucVu" class="col-form-label">Position</label>
							<form:select path="chucVu.maCv" items="${listPosition}"
								itemValue="maCv" itemLabel="name" />
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
	<div class="modal fade" id="editEmployee" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Edit Employee</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="/admin-edit-employee" modelAttribute="employee" method = "post">

						<div class="form-group">
							<label class="col-form-label" id="edit-employee-id"></label>
							<form:input path="maNv" type="hidden" id="edit-employee-id-input" />
						</div>
						<div class="form-group">
							<label for="edit-employee-last-name" class="col-form-label">Last
								Name</label>
							<form:input path="ho" type="text" class="form-control"
								id="edit-employee-last-name" />
						</div>
						<div class="form-group">
							<label for="edit-employee-first-name" class="col-form-label">First
								Name</label>
							<form:input path="ten" type="text" class="form-control"
								id="edit-employee-first-name" />
						</div>
						<div class="form-group">
							<label for="edit-employee-phone-number" class="col-form-label">Phone Number</label> 
							<input type="text" class="form-control" id="edit-employee-phone-number" name="sdt"
								required pattern="[0-9]{10}" title="Enter number only(0-9)">
						</div>
						<div class="form-group">
							<label for="edit-employee-email" class="col-form-label">Email</label>
							<form:input path="email" type="email" class="form-control" id="ten" placeholder="Email"/>
						</div>
						<div class="form-group">
							<label class="col-form-label" style="padding-right: 100px;">Status</label>
							<label class="col-form-label">Working</label>
							<form:radiobutton path="trangThai" value="1" id="edit-employee-status"/>
							<label class="col-form-label" style="padding-left: 50px;">UnWorking</label>
							<form:radiobutton path="trangThai" id="edit-employee-status" value="0" />
						</div>
						<div class="form-group">
							<label for="edit-employee-position-name" class="col-form-label">Position</label>
							<form:select path="chucVu.maCv" items="${listPosition}"
								itemValue="maCv" itemLabel="name"/>
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
	<div class="modal fade" id="deleteEmployee" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Delete Employee</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="/admin-delete-employee" modelAttribute="employee"
						method="POST">
						<div class="form-group">
              <label id="delete-employee-id-label" class="col-form-label"></label>
              <form:input path="maNv" type="hidden" id="delete-employee-id-input" />
            </div>
            <div class="form-group">
              <label for="delete-employee-name" class="col-form-label">Name of Employee</label>
              <input type="text" class="form-control" id="delete-employee-name" readonly />
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
	<div class="modal fade" id="addPosition" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add Position</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="/admin-position" modelAttribute="position" method="post">
						<form:input path="maCv" type="hidden" />

						<div class="form-group">
							<label for="" class="col-form-label">Position's Name</label>
							<form:input path="name" type="text" class="form-control"
								id="name" placeholder="Position's Name" />
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
	<div class="modal fade" id="editPosition" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Edit Position</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="/admin-edit-position" modelAttribute="position" method ="post">

						<div class="form-group">
							<label class="col-form-label" id="edit-position-id"></label>
							<form:input path="maCv" type="hidden" id="edit-position-id-input" />
						</div>
						<div class="form-group">
							<label for="edit-position-name" class="col-form-label">Name
								of Position</label>
							<form:input path="name" type="text" class="form-control"
								id="edit-position-name" />
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
	<div class="modal fade" id="deletePosition" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Delete Position</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="/admin-delete-position" modelAttribute="position"
						method="POST">
						<div class="form-group">
							<label id="delete-position-id-label" class="col-form-label"></label>
							<form:input path="maCv" type="hidden"
								id="delete-position-id-input" />
						</div>
						<div class="form-group">
							<label for="delete-position-name" class="col-form-label">Name
								of Position</label> <input type="text" class="form-control"
								id="delete-position-name" readonly />
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
		// edit employee
		function edit(id) {

			var root = id.parentNode.parentNode;
			
			
			$("#edit-employee-id").text("Employee's Id: " + root.getElementsByTagName("td")[0].textContent);
			$("#edit-employee-id-input").val(
					root.getElementsByTagName("td")[0].textContent);
			$("#edit-employee-last-name").val(
					root.getElementsByTagName("td")[1].textContent);
			$("#edit-employee-first-name").val(
					root.getElementsByTagName("td")[2].textContent);
			$("#edit-employee-phone-number").val(
					root.getElementsByTagName("td")[3].textContent);
			$("#edit-employee-email").val(
					root.getElementsByTagName("td")[4].textContent);
			change().$("#edit-employee-status").val(
					root.getElementsByTagName("td")[5].textContent);
			$("#edit-employee-position-name").val(
					root.getElementsByTagName("td")[6].textContent);
		}
	</script>
	
	<script>
	//delete Employee
	function del(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
    	 $("#delete-employee-id-label").text("Employee's Id: " + arr[0].textContent);
         $("#delete-employee-id-input").val(arr[0].textContent);    
         $("#delete-employee-name").val(arr[1].textContent+" "+arr[2].textContent);
    }
	</script>
	
	<script>
		function display(id) {
			var temp = document.getElementsByClassName("container-fluid")[0];

			if (id.textContent == "Position") {
				temp.getElementsByClassName("row")[1].style.display = "block";
				temp.getElementsByClassName("row")[0].style.display = "none";
			} else {
				temp.getElementsByClassName("row")[0].style.display = "block";
				temp.getElementsByClassName("row")[1].style.display = "none";
			}
		}
	</script>
	
	<script>
	//edit Position
	function editPosition(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
    	 $("#edit-position-id").text("Position's Id: " + arr[0].textContent);
         $("#edit-position-id-input").val(arr[0].textContent);    
         $("#edit-position-name").val(arr[1].textContent);
    }
	</script>

	<script>
	//delete Position
	function delPosition(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
    	 $("#delete-position-id-label").text("Position's Id: " + arr[0].textContent);
         $("#delete-position-id-input").val(arr[0].textContent);    
         $("#delete-position-name").val(arr[1].textContent);
    }
	</script>
	
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
	<!--End modal-->

</body>

</html>