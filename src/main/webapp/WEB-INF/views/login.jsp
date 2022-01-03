<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="/common/taglib.jsp" %>


	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Login</div>
			<div class="card-body">
				<form:form action="j_spring_security_check" name="submitForm" method="POST">
					<div align="center">
						<table>
							<tr>
								<td>Email</td>
								<td><input type="email" name="j_username" /></td>
							</tr>
							<tr>
								<td>Password</td>
								<td><input type="password" name="j_password" AUTOCOMPLETE="off"/></td>
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
					<a class="d-block small mt-3" href="<c:url value='/signup.html'/>">Register an
						Account</a> <a class="d-block small" href="forgot.html">Forgot
						Password?</a>
				</div>
			</div>
		</div>
	</div>
