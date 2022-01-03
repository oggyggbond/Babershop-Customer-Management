<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ page import="com.barbershop.utils.SecurityUtil"%>
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
			<h5>${messsage}</h5>
				<h4 class="page-title">Bill</h4>
			</div>
		</div>
	</div>

	<div class="container-fluid">

		<div class="row">
			<div class="col-sm-12">
				<div class="white-box">
					<h3 class="box-title" style="display: inline; padding-right: 5%;">Bill</h3>
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#addBill">Add Bill</button>
					<div class="table-responsive">
						<table class="table text-nowrap" id="myTable">
							<thead>
								<tr>
									<th class="border-top-0">Customer's Name</th>
									<th class="border-top-0">Employee's Name</th>
									<th class="border-top-0">Date</th>
									<th class="border-top-0">Money</th>
							</thead>
							<tbody>
								<c:forEach var="c" items="${listBill}">
									<tr>
										<td>${c.hoTenKh.getTen()}</td>
										<td>${c.getHoTenNv().getTen()}</td>
										<td>${c.getNgay()}</td>
										<td>${c.getTongTien()}</td>
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
	<div class="modal fade" id="addBill" tabindex="-1" role="dialog"
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
					<form:form action="/employee-bill" modelAttribute="billDetails2"
						method="POST">
						<div class="form-group">
							<label for="customer-name" class="col-form-label">Customer's
								Email</label>
							<form:input path="emailCus" type="text" class="form-control"
								id="customer-name" name="customer-name" />
						</div>
						<div class="form-group">
							<label for="service-name" class="col-form-label">Service's
								Name</label>
							<%-- <input type="text" class="form-control" name="number-phone"
								value="<%=SecurityUtil.getPrincipal().getEmail()%>" /> --%>
							<form:select path="tendv" items="${listService}" itemValue="maDv"
								itemLabel="tenDv" class="form-select"
								aria-label="Default select example" id="service-name">
							</form:select>
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

	<script>
		$(function() {
			$('#toggle-two').bootstrapToggle({
				on : 'Enabled',
				off : 'Disabled'
			});
		})
	</script>
</body>

</html>