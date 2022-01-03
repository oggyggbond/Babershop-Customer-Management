<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
<link
	href="<c:url value='//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'/>" rel="stylesheet" id="bootstrap-css">
<script
	src="<c:url value='//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js'/> "></script>
<script src="<c:url value='//code.jquery.com/jquery-1.11.1.min.js'/>"></script>
<link rel="stylesheet" href="<c:url value='https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css'/>">
<title>Barbershop customer management</title>

</head>

<body>
<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Reset Password</div>
			<div class="card-body">
				<div class="text-center mb-4">
					<h4>Forgot your password?</h4>
					<p>Enter your email address and we'll send a new random
						password to your inbox.</p>
				</div>
				<h5>${tb}</h5>
				<form:form action="/forgot" name="submitForm" method="POST">
					<div align="center">
						<table>
							<tr>
								<td>Email</td>
								<td><input type="email" name="email" /></td>
							</tr>
							<tr>
								<td></td>
								<td><input class="btn btn-primary btn-block" type="submit"
									value="Send me new password" /></td>
							</tr>
						</table>
					</div>
				</form:form>
				<div class="text-center">
					<a class="d-block small mt-3" href="<c:url value='/signup.html'/>">Register an
						Account</a> <a class="d-block small" href="login.html">Login page</a>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$("#resetForm").validate({
				rules : {
					email : {
						required : true,
						email : true
					}
				},

				messages : {
					email : {
						required : "Please enter email",
						email : "Please enter a valid email address"
					}
				}
			});

		});
	</script>
</body>

</html>