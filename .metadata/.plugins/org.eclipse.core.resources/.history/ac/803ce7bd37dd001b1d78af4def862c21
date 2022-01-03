<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="registerAPI" value="/api-register"/>
<c:url var="loginURL" value="/login.html"/>
<c:url var="registerURL" value="/register.html"/>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>register</title>
	</head>
	<body>
		<section class="container pt-5 mt-5">
			<div class="row justify-content-center">
				<div class="col-md-5">
					<div class="card">
						<div class="card-header"><p class="card-title m-0">Register</p></div>
						<div class="card-body">
							<c:if test="${param.message eq 'Register_success'}">
							<div class="alert alert-success">
								Register Success
							</div>
							</c:if>
							<c:if test="${param.message eq 'error_system'}">
							<div class="alert alert-danger">
								Email already exists
							</div>
							</c:if>
							<form:form class="form-horizontal" role="form" id="formSubmit" >
								<div>
									<input type="text" id="userName" name="userName" class="form-control " placeholder="User name">
									<span class="text-danger" id="checkuser"></span>
								</div>
								<div class="pt-3">
									<input type="email" id="email" name="email" class="form-control" placeholder="E-mail">
									<span class="text-danger" id="checkemal"></span>
								</div>
								<div class="pt-3">
									<input type="password" id="passWord" name="passWord" class="form-control" placeholder="Password">
									<span class="text-danger" id="checkpass"></span>
								</div>
								<div class="pt-3">
									<input type="password" id="repassword" name="repassword" class="form-control" placeholder="Re Password">
									<span class="text-danger" id="checkrepass"></span>
								</div>
								<div class="pt-3">
									<button type="button" class="btn btn-success w-100" id="btnRegister">Register</button>
								</div>
								<div class="pt-4"><a href="<c:url value='/login.html'/>" class="m-0 "> Click to Login</a></div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<script>
			$('#btnRegister').click(function (e) {
				if(checkFormRegister()==true) {
					e.preventDefault();
					var data = {};
					var formData = $('#formSubmit').serializeArray();
					$.each(formData, function (i, v) {
						data[""+v.name+""] = v.value;
					});
					addNew(data);
				}
				else{
					checkFormRegister();
					return false;
				}
			});
			
			
			function addNew(data) {
				$.ajax({
					url: '${registerAPI}',
					type: 'POST',
					contentType: 'application/json',
					data: JSON.stringify(data),
					success: function (result) {
						window.location.href = "${registerURL}?message=Register_success";
					},
					error: function (error) {
						window.location.href = "${registerURL}?message=error_system";
					}
				});
			}
		</script>
	</body>
</html>
