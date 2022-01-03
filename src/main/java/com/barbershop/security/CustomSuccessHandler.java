package com.barbershop.security;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.barbershop.utils.SecurityUtil;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
	
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException {
		String targetUrl = determineTargetUrl(authentication);
		if (response.isCommitted()) {
			return;
		}
		redirectStrategy.sendRedirect(request, response, targetUrl);
	}

	public RedirectStrategy getRedirectStrategy() {
		return redirectStrategy;
	}
	
	public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
		this.redirectStrategy = redirectStrategy;
	}
	
	private String determineTargetUrl(Authentication authentication)
	{
		String url = "";
		List<String> roles = SecurityUtil.getAuthorities();
		if (isAdmin(roles)) {
			url = "/admin-home";
		}
		else {
			if (isEmployee(roles)) {
				url = "/employee-profile";
			}
			else {
				if (isMember(roles)) {
					url = "/member-profile";
				}
			}
		}
		return url;
	}

	private boolean isAdmin(List<String> roles) {
		if(roles.contains("ADMIN"))
		{
			return true;
		}
		return false;
	}
	private boolean isEmployee(List<String> roles) {
		if(roles.contains("EMPLOYEE"))
		{
			return true;
		}
		return false;
	}
	private boolean isMember(List<String> roles) {
		if(roles.contains("MEMBER"))
		{
			return true;
		}
		return false;
	}
}