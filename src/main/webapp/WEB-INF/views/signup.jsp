<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="text/html">
<meta name="author" content="text/html">

<title>Barbershop Customer Management</title>

<!-- Custom fonts for this template-->
<link
	href="${pageContext.servletContext.contextPath}/resources/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template-->
<link
	href="${pageContext.servletContext.contextPath}/resources/assets/css/sb-admin.css"
	rel="stylesheet">

<script>
	function validate() {
		var email = document.form.email.value;
		var password = document.form.password.value;
		var conpassword = document.form.conpassword.value;
		
		if (email == null || email == ""){
			alert("Email can't be blank");
			return false;
		} else if (password.length < 6) {
			alert("Password must be at least 6 characters long.");
			return false;
		} else if (password != conpassword) {
			alert("Confirm Password should match with the Password");
			return false;
		}
	}
</script>

</head>

<body class="bg-dark">

	<div class="container">
		<div class="card card-register mx-auto mt-5">
			<div class="card-header">Register an Account</div>
			<div class="card-body">
				<h5>${message}</h5>
				<form:form action="/signup.html" modelAttribute="account" name="form" onsubmit="return validate()" method="post" >
					<table align="center">
						<tr>
							<td>Email</td>
							<td><form:input path="email" type="email" name="email"/></td>
						</tr>
						<tr>
							<td>Password</td>
							<td><form:input path="password" type="password" name="password" minlength="6" AUTOCOMPLETE="off"/></td>
						</tr>
						<!-- <tr>
							<td>Confirm Password</td>
							<td><input type="password" name="conpassword"/></td>
						</tr> -->
						
						<tr>
							<td></td>
							<td><input class="btn btn-primary btn-block" type="submit"
								value="Register"></input><input
								class="btn btn-secondary btn-block" type="reset" value="Reset"></input></td>
						</tr>
					</table>
				</form:form>
				
				<div class="text-center">
					<a class="d-block small mt-3" href="login.html">Login Page</a> <a
						class="d-block small" href="forgot.html">Forgot
						Password?</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script
		src="<c:url value='/template/vendor/jquery/jquery.min.js'/> "></script>
	<script
		src="<c:url value='/template/vendor/bootstrap/js/bootstrap.bundle.min.js'/> "></script>

	<!-- Core plugin JavaScript-->
	<script
		src="<c:url value='/template/vendor/jquery-easing/jquery.easing.min.js'/> "></script>

</body>

</html>


 

 