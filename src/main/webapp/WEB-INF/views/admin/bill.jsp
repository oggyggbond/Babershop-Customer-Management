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
</head>

<body>

	<div class="page-breadcrumb bg-white">
		<div class="row align-items-center">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Bill</h4>
			</div>
		</div>
	</div>

	<div class="container-fluid">

		<div class="row">
			<div class="col-sm-12">
				<div class="white-box">
				<h5>${messsage}</h5>
					<h3 class="box-title" style="display: inline; padding-right: 5%;">Bill</h3>
					<!-- <button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#addBill">Add Bill</button> -->
					<div class="table-responsive">
						<table class="table text-nowrap" id="myTable">
							<thead>
								<tr>
									<th class="border-top-0">Bill's Id</th>
									<th class="border-top-0">Customer's Name</th>
									<th class="border-top-0">Employee's Name</th>
									<th class="border-top-0">Date</th>
									<th class="border-top-0">Money</th>
									<th class="border-top-0">Edit</th>
									<th class="border-top-0">Delete</th>
							</thead>
							<tbody>
								<c:forEach var="c" items="${listBill}">
									<tr>
										<td>${c.getMaHd()}</td>
										<td>${c.hoTenKh.getTen()}</td>
										<td>${c.getHoTenNv().getTen()}</td>
										<td>${c.getNgay()}</td>
										<td>${c.getTongTien()}</td>
										<td>
											<button class="btn btn-success btn-sm rounded-0"
												onclick="editBill(this)" type="button" data-toggle="modal"
												data-placement="top" title="Edit" data-target="#editBill">
												<i class="fa fa-edit"></i>
											</button>
										</td>
										<td>

											<button class="btn btn-danger btn-sm rounded-0"
												onclick="delBill(this)" type="button" data-toggle="modal"
												data-placement="top" title="Delete"
												data-target="#deleteBill">
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
	<%-- <div class="modal fade" id="addBill" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Add Bill</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="/admin-bill" modelAttribute="bill" method="POST">
						<form:input path="maHd" type="hidden" />
						
						<div class="form-group">
							<label for="hoTenKh" class="col-form-label">Customer's Name</label>
							<form:select path="hoTenKh.maKh" items="${listCustomer}"
								itemValue="maKh" itemLabel="ten" />
						</div>
						<div class="form-group">
							<label for="idNV" class="col-form-label">Employee's Name</label>
							<form:select path="idNV.maNv" items="${listEmployee}"
								itemValue="maNv" itemLabel="ten"/>
						</div>
						<div class="form-group">
							<label for="ngay" class="col-form-label">Date</label> <input
								type="text" class="form-control" id="ngay" name="ngay"
								placeholder="YYYY-MM-DD" required
								pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}"
								title="Enter a date in this formart YYYY-MM-DD">
						</div>
						<div class="form-group">
							<label for="tongTien" class="col-form-label">Total</label> <input
								class="form-control" id="tongTien" name="tongTien" readonly>
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
	</div> --%>

	<div class="modal fade" id="editBill" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Edit Bill</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="/admin-edit-bill" modelAttribute="bill"
						method="POST">
						<div class="form-group">
							<label class="col-form-label" id="edit-bill-id"></label>
							<form:input path="maHd" type="hidden" id="edit-bill-id-input" />
						</div>
						<div class="form-group">
							<label for="edit-tenKh" class="col-form-label">Customer's
								Name</label>
							<form:select path="hoTenKh.maKh" items="${listCustomer}"
								itemValue="maKh" itemLabel="ten" />
						</div>
						<div class="form-group">
							<label for="edit-tenNv" class="col-form-label">Employee's
								Name</label>
							<form:select path="idNV.maNv" items="${listEmployee}"
								itemValue="maNv" itemLabel="ten" />
						</div>
						<div class="form-group">
							<label for="edit-ngay" class="col-form-label" id="edit-ngay">Date</label>
							<input type="text" class="form-control" id="edit-ngay"
								name="ngay" placeholder="YYYY-MM-DD" required
								pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}"
								title="Enter a date in this formart YYYY-MM-DD">
						</div>
						<div class="form-group">
							<label for="edit-tongTien" class="col-form-label">Total</label> <input
								class="form-control" id="edit-tongTien" name="tongTien">
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
	<div class="modal fade" id="deleteBill" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Delete Bill</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form:form action="/admin-delete-bill" modelAttribute="bill"
						method="POST">
						<div class="form-group">
							<label id="delete-bill-id-label" class="col-form-label"></label>
							<form:input path="maHd" type="hidden" id="delete-bill-id-input" />
						</div>
						<div class="form-group">
							<label for="delete-tenKh" class="col-form-label">Name of
								Customer</label> <input type="text" class="form-control"
								id="delete-tenKh" readonly />
						</div>
						<div class="form-group">
							<label for="delete-tenNv" class="col-form-label">Name of
								Employee </label> <input type="text" class="form-control"
								id="delete-tenNv" readonly />
						</div>
						<div class="form-group">
							<label for="delete-ngay" class="col-form-label">Date </label> <input
								type="text" class="form-control" id="delete-ngay" readonly />
						</div>
						<div class="form-group">
							<label for="delete-tongTien" class="col-form-label">Total
							</label> <input type="text" class="form-control" id="delete-tongTien"
								readonly />
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
		// edit Bill
		function editBill(id) {

			var root = id.parentNode.parentNode;
			
			
			$("#edit-bill-id").text("Bill's Id: " + root.getElementsByTagName("td")[0].textContent);
			$("#edit-bill-id-input").val(
					root.getElementsByTagName("td")[0].textContent);
			$("#edit-tenKh").val(
					root.getElementsByTagName("td")[1].textContent);
			$("#edit-tenNv").val(
					root.getElementsByTagName("td")[2].textContent);
			$("#edit-ngay").val(
					root.getElementsByTagName("td")[3].textContent);
			$("#edit-tongTien").val(
					root.getElementsByTagName("td")[4].textContent);
		}
	</script>

	<script>
	//delete Bill
	function delBill(id){
        var arr = id.parentNode.parentNode.getElementsByTagName("td");
    	 $("#delete-bill-id-label").text("Bill's Id: " + arr[0].textContent);
         $("#delete-bill-id-input").val(arr[0].textContent);    
         $("#delete-tenKh").val(arr[1].textContent);
         $("#delete-tenNv").val(arr[2].textContent);
         $("#delete-ngay").val(arr[3].textContent);
         $("#delete-tongTien").val(arr[4].textContent);
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

	<script>
            $(function() {
              $('#toggle-two').bootstrapToggle({
                on: 'Enabled',
                off: 'Disabled'
              });
            })
          </script>
</body>

</html>