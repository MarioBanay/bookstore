package com.bookstore.controller.admin;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

// We want to intercept all requests that are coming from admin...
@WebFilter("/admin/*")
public class AdminLoginFilter implements Filter {

    public AdminLoginFilter() {
	System.out.println("AdminLoginFilter constructor called");

    }

    public void destroy() {
	System.out.println("AdminLoginFilter.destroy() called");

    }

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
		throws IOException, ServletException {
		
	// fetching session from request	
	HttpServletRequest httpRequest = (HttpServletRequest) request;
	// false assures that if the session doesn't exist will not be created
	HttpSession session = httpRequest.getSession(false);
	
	// user is logged in if session is not null and attribute "useremail" is not null
	boolean loggedIn = session != null && session.getAttribute("useremail") != null;
	
	String loginURI = httpRequest.getContextPath() + "/admin/login";
	boolean loginRequest = httpRequest.getRequestURI().equals(loginURI);
	boolean loginPage = httpRequest.getRequestURI().endsWith("login.jsp");

	if (loggedIn && (loginRequest || loginPage)) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/");
		dispatcher.forward(request, response);	
		System.out.println("test");
		
	} else if (loggedIn || loginRequest) {
		System.out.println("logged in: " + loggedIn + ". loginRequest: " + loginRequest);
		chain.doFilter(request, response);	
	} else {
		System.out.println("user not logged in");
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
		
	}
}

    public void init(FilterConfig fConfig) throws ServletException {
	System.out.println("AdminLoginFilter.init() called");

    }

}
