<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>login</title>
	</head>
	<body>
		<section class="container pt-5 mt-5">
			<div class="row justify-content-center">
				<div class="col-md-5">
					<div class="card">
						<div class="card-header"><p class="card-title m-0">Please Sign In</p></div>
						<div class="card-body">
							<c:if test="${param.incorrectAccount != null}">
								<div class="alert alert-danger">	
									Username or password incorrect
								</div>
							</c:if> <!-- j_spring_security_check -->
							<form:form action="j_spring_security_check" id="form-login">
								<div>
									<input type="text" name="j_username" id="e-mail" class="form-control " placeholder="E-mail">
									<span class="text-danger" id="checkuser"></span>
								</div>
								<div class="pt-3">
									<input type="password"  name="j_password" id="password" class="form-control" placeholder="Password">
									<span class="text-danger" id="checkpass"></span>
								</div>
								<div class="pt-3">
									<input type="checkbox" name="checkbox" id="checkbox">
									<label for="coding" class="card-text text-dark m-0">Remenber Me</label>
								</div>
								<div class="pt-2">
									<button type="submit" class="btn btn-success w-100" >Login</button>
								</div>
								<div class="pt-4"><a href="<c:url value='/register.html'/>" class="m-0 "> Click here to Register</a></div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>