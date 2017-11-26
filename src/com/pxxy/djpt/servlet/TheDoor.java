package com.pxxy.djpt.servlet;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

public class TheDoor extends StrutsPrepareAndExecuteFilter{
	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		String url = request.getRequestURL().toString();
		System.out.println(url);
		
		if(url.lastIndexOf("null")>0)
			return;
		if(url.lastIndexOf("upload/")==url.length()-7) 
			return;
		
		super.doFilter(req, res, arg2);
	}
}

