package com.pxxy.djpt.servlet;

import org.apache.struts2.ServletActionContext;

import cn.pxxy.djpt.util.Conf;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.pxxy.djpt.bean.IUser;

public class MyInterceptor extends MethodFilterInterceptor {
	
	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		IUser admin = (IUser) ServletActionContext.getRequest().getSession().getAttribute("admin_session");
		
		if(admin == null)
			return "input";
		
		if(!Conf.hasPermission(admin, Conf.permission_admin)) {
			return "denied";
		} else {
			return invocation.invoke();
		}
		
	}
	
}
