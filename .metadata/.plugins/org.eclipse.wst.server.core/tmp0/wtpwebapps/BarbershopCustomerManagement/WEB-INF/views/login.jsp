<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
</head>
<body class="bg-dark">

	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Login</div>
			<div class="card-body">
				<form:form name="submitForm" method="POST">
					<div align="center">
						<table>
							<tr>
								<td>Email</td>
								<td><input type="email" name="email" /></td>
							</tr>
							<tr>
								<td>Password</td>
								<td><input type="password" name="password" /></td>
							</tr>
							<tr>
								<td></td>
								<td><input class="btn btn-primary btn-block" type="submit"
									value="Login" /></td>
							</tr>
						</table>
						<div style="color: red">${error}</div>
					</div>
				</form:form>
				<div class="text-center">
					<a class="d-block small mt-3" href="signup.html">Register an
						Account</a> <a class="d-block small" href="forgot.html">Forgot
						Password?</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
</body>

</html>
