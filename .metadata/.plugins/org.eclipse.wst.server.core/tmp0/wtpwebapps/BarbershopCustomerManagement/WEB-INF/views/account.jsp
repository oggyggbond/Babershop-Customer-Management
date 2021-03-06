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

</head>

<body>
			<div class="page-breadcrumb bg-white">
				<div class="row align-items-center">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">
							<button type="button" class="btn btn-dark"
                                        onclick="display(this)">Account</button>
							<button type="button" class="btn btn-warning"
								onclick="display(this)">Role</button>
						</h4>
					</div>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="white-box">
							<h3 class="box-title" style="display: inline; padding-right: 5%;">Account</h3>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#addAccount">Add Account</button>
							<div class="table-responsive">
								<table class="table text-nowrap">
									<thead>
										<tr>
											<th class="border-top-0">Email</th>
											<th class="border-top-0">Password</th>
											<th class="border-top-0">Role</th>
											<th class="border-top-0">Edit</th>
											<th class="border-top-0">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="a" items="${list}">
											<tr>
												<td>${a.getEmail()}</td>
												<td>${a.getPassword()}</td>
												<td>${a.getQuyen().quyen}</td>
												<td>
													<button class="btn btn-success btn-sm rounded-0" onclick="edit(this)"
														type="button" data-toggle="modal" data-placement="top"
														title="Edit" data-target="#editAccount">
														<i class="fa fa-edit"></i>
													</button>
												</td>
												<td>

													<button class="btn btn-danger btn-sm rounded-0" onclick="del(this)"
														type="button" data-toggle="modal" data-placement="top"
														title="Delete" data-target="#deleteAccount">
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
							<h3 class="box-title" style="display: inline; padding-right: 5%;">Role</h3>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#addRole">Add Role</button>
							<div class="table-responsive">
								<table class="table text-nowrap">
									<thead>
										<tr>
											<th class="border-top-0">#</th>
											<th class="border-top-0">Role's Name</th>
											<th class="border-top-0">Edit</th>
											<th class="border-top-0">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="r" items="${listRole}">
											<tr>
												<td>${r.getMaQ()}</td>
												<td>${r.getQuyen()}</td>
												<td>
													<button class="btn btn-success btn-sm rounded-0"
														onclick="editRole(this)" type="button" data-toggle="modal"
														data-placement="top" title="Edit"
														data-target="#editRole">
														<i class="fa fa-edit"></i>
													</button>
												</td>
												<td>

													<button class="btn btn-danger btn-sm rounded-0"
														onclick="delRole(this)" type="button" data-toggle="modal"
														data-placement="top" title="Delete"
														data-target="#deleteRole">
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
	<div class="modal fade" id="addAccount" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add Account</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="account.html" modelAttribute="account">
					
						<div class="form-group">
							<label for="email" class="col-form-label">Email</label> <input
								type="email" class="form-control" id="email" name="email"
								placeholder="E-mail" required
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
								title="Enter a e-mail in this formart: example@gmail.com">
						</div>
						<div class="form-group">
							<label for="password" class="col-form-label">Password</label> <input
								type="password" class="form-control" id="password"
								name="password" placeholder="Password" minlength="6" required>
						</div>
						<div class="form-group">
							<label for="quyen" class="col-form-label">Role</label>
							<form:select path="quyen.maQ" items="${listRole}"
								itemValue="maQ" itemLabel="quyen"/>
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
	<div class="modal fade" id="editAccount" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Edit Account</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="account-update.html" modelAttribute="account">

						<div class="form-group">
							<label for="edit-email" class="col-form-label">Email</label> <input
								type="email" class="form-control" id="edit-email" name="email"
								placeholder="E-mail" required
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
								title="Enter a e-mail in this formart example@gmail.com">
						</div>
						<div class="form-group">
							<label for="edit-password" class="col-form-label">Password</label>
							<input type="password" class="form-control" id="edit-password"
								name="password" placeholder="Password" minlength="6" required>
						</div>
						<div class="form-group">
							<label for="edit-role-name" class="col-form-label">Role</label>
							<form:select path="quyen.maQ" items="${listRole}"
								itemValue="maQ" itemLabel="quyen"/>
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
	<div class="modal fade" id="deleteAccount" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Delete Account</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="account-delete.html" modelAttribute="account"
						method="POST">
						<div class="form-group">
							<label for="delete-email" class="col-form-label">Email</label>
							<input type="email" class="form-control"
								id="delete-email" readonly />
						</div>
						<div class="form-group">
							<label for="delete-password" class="col-form-label">Password</label>
							<input type="password" class="form-control"
								id="delete-password" readonly />
						</div>
						<div class="form-group">
							<label for="delete-role" class="col-form-label">Role</label>
							<input type="text" class="form-control"
								id="delete-role" readonly />
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
	<div class="modal fade" id="addRole" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add Role</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="role.html" modelAttribute="role">
						<form:input path="maQ" type="hidden" />

						<div class="form-group">
							<label for="" class="col-form-label">Role's Name</label>
							<form:input path="quyen" type="text" class="form-control"
								id="quyen" placeholder="Role's Name"/>
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
	<div class="modal fade" id="editRole" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Edit Role</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="role-update.html" modelAttribute="role">

						<div class="form-group">
							<label class="col-form-label" id="edit-role-id"></label>
							<form:input path="maQ" type="hidden" id="edit-role-id-input" />
						</div>
						<div class="form-group">
							<label for="edit-role-name" class="col-form-label">Name
								of Role</label>
							<form:input path="quyen" type="text" class="form-control"
								id="edit-role-name" />
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
	<div class="modal fade" id="deleteRole" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Delete Role</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="role-delete.html" modelAttribute="role"
						method="POST">
						<div class="form-group">
							<label id="delete-role-id-label" class="col-form-label"></label>
							<form:input path="maQ" type="hidden"
								id="delete-role-id-input" />
						</div>
						<div class="form-group">
							<label for="delete-role-name" class="col-form-label">Name
								of Role</label> <input type="text" class="form-control"
								id="delete-role-name" readonly />
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
		// edit Account
		function edit(id) {

			var root = id.parentNode.parentNode;
			
			$("#edit-email").val(
					root.getElementsByTagName("td")[0].textContent);
			$("#edit-password").val(
					root.getElementsByTagName("td")[1].textContent);
			$("#edit-role-name").val(
					root.getElementsByTagName("td")[2].textContent);
		}
	</script>
	
	<script>
	//delete Account
	function del(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
        
         $("#delete-email").val(arr[0].textContent);
         $("#delete-password").val(arr[1].textContent);
         $("#delete-role").val(arr[2].textContent);
    }
	</script>
	
	<script>
		function display(id) {
			var temp = document.getElementsByClassName("container-fluid")[0];

			if (id.textContent == "Role") {
				temp.getElementsByClassName("row")[1].style.display = "block";
				temp.getElementsByClassName("row")[0].style.display = "none";
			} else {
				temp.getElementsByClassName("row")[0].style.display = "block";
				temp.getElementsByClassName("row")[1].style.display = "none";
			}
		}
	</script>
	
	<script>
	//edit Role
	function editRole(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
    	 $("#edit-role-id").text("Role's Id: " + arr[0].textContent);
         $("#edit-role-id-input").val(arr[0].textContent);    
         $("#edit-role-name").val(arr[1].textContent);
    }
	</script>

	<script>
	//delete Role
	function delRole(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
    	 $("#delete-role-id-label").text("Role's Id: " + arr[0].textContent);
         $("#delete-role-id-input").val(arr[0].textContent);    
         $("#delete-role-name").val(arr[1].textContent);
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
	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">??</span>
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
</body>

</html>