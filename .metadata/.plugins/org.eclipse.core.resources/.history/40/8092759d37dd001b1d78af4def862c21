$(document).ready(function(){
	//login form
	$("#form-login").submit(function(event) {	
		$("#checkuser").text("");
		$("#checkpass").text("");
		var email = $("#e-mail").val();
		var pass = $("#password").val();
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if (email.length == 0 || pass.length == 0) {
			if (email.length == 0 ) {
				$("#checkuser").text("Email is empty");
			}
			if (pass.length == 0) {
				$("#checkpass").text("Password is empty");
			}
			if (email.length != 0 && !filter.test(email)) {
				$("#checkuser").text("Email is not avalible Example@gmail.com");
			}
			if (pass.length != 0 && pass.length <5) {
				$("#checkpass").text("Password must be least 6 character");
			}
			return false;	
		}
		else if(email.length != 0 && pass.length != 0){
			if(filter.test(email) && pass.length >=5){
				return true;
			}
			else{
				if (!filter.test(email)) {
					$("#checkuser").text("Email is not avalible Example@gmail.com");
				}
				if (pass.length <5) {
					$("#checkpass").text("Password must be least 6 character");
				}
				return false;
			}
		}
		return false;
	});
});
//register form prosess 
	function checkFormRegister() {
	$("#checkuser").text("");
	$("#checkemal").text("");
	$("#checkpass").text("");
	$("#checkrepass").text("");
	var username = $("#userName").val();
	var email = $("#email").val();
	var pass = $("#passWord").val();
	var repass = $("#repassword").val();
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/; 
	if (username.length == 0 || email.length == 0 || pass.length == 0 || repass.length == 0) {
		if (username.length == 0) {
			$("#checkuser").text("Usename is empty");
		}
		if (email.length == 0) {
			$("#checkemal").text("Email is empty");
		}
		if (pass.length == 0) {
			$("#checkpass").text("Password is empty");
		}
		if (repass.length == 0) {
			$("#checkrepass").text("Repassword is empty");
		}
		if (email.length != 0 && !filter.test(email)) {
			$("#checkemal").text("Email is not avalible Example@gmail.com");
		}
		if (pass.length != 0 && pass.length<5) {
			$("#checkpass").text("Password must be least 6 character");
		}
		if (pass.length >=5 && repass.length >=5) {
			if (repass !=pass) {
				$("#checkrepass").text("The passwords do not match");
			}
		}
		return false;
	}
	else if(username.length != 0 && email.length != 0 && pass.length != 0 && repass.length != 0)
	{
		if (filter.test(email) && pass.length >=5 &&  repass.length >=5 && repass == pass) {
			return true;
		}
		else{
			if (!filter.test(email)) {
				$("#checkemal").text("Email is not avalible Example@gmail.com");
			}
			if (pass.length <5) {
				$("#checkpass").text("password must be least 6 character");
			}
			if (pass.length >=5 && repass.length >=5) {
				if (repass !=pass) {
					$("#checkrepass").text("The passwords do not match");
				}
			}
			return false;
		}
	}
	return false;
};