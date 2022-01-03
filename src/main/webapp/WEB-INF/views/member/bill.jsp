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
							<h3 class="box-title" style="display: inline; padding-right: 5%;">Bill</h3>
							<div class="table-responsive">
								<table class="table text-nowrap" id="myTable">
									<thead>
										<tr>
											<th class="border-top-0">Customer's Name</th>
											<th class="border-top-0">Employee's Name</th>
											<th class="border-top-0">Date</th>
											<th class="border-top-0">Money</th>
											<th class="border-top-0">Service</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="c" items="${listBill}">
											<tr>
												<td>${c.getIdBill().getHoTenKh().ten}</td>
												<td>${c.getIdBill().getHoTenNv().ten}</td>
												<td>${c.getIdBill().getNgay()}</td>
												<td>${c.getIdBill().getTongTien()}</td>
												<td>${c.getTenDv().tenDv}</td>
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