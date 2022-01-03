<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<title>Barbershop customer management</title>
</head>

<body>
	<div class="form-gap"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="text-center">
							<h3>
								<i class="fa fa-lock fa-4x"></i>
							</h3>
							<h2 class="text-center">Forgot Password?</h2>
							<p>You can reset your password here.</p>
							<h5>${tb}</h5>
							<div class="panel-body">
								<form action="forgot.html" method="POST">
									<table>
										<tr>
											<td>Email:</td>
											<td><input type="email" name="email" id="email"
												size="30"></td>
										</tr>
										<tr>
											<td colspan="2" align="center">
												<button class="btn btn-primary btn-block" type="submit">Send
													me new password</button>
											</td>
										</tr>
									</table>
								</form>
								<div class="text-center">
									<a class="d-block small mt-3" href="signup.html">Register
										an Account</a> <a class="d-block small" href="login.html">Login
										Page</a>
								</div>
							</div>
						</div>
					</div>
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