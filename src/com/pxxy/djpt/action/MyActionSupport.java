package com.pxxy.djpt.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.pxxy.djpt.bean.Admin;
import com.pxxy.djpt.bean.IUser;
import com.pxxy.djpt.bean.Student;
import com.pxxy.djpt.dao.IDao;
import com.pxxy.djpt.service.IService;

public abstract class MyActionSupport extends ActionSupport {
	protected HttpSession session = ServletActionContext.getRequest().getSession();
	protected HttpServletRequest request = ServletActionContext.getRequest();
	protected HttpServletResponse response = ServletActionContext.getResponse();
	
	protected IService service;
	
	public void setService(IService service) {
		this.service = service;
	}
	
	public IDao getIDao() {
		return service.getIDao(this);
	}
	
	public boolean isAdminLogin() {
		return getLoginedAdmin() != null;
	}
	
	public boolean isStuLogin() {
		return getLoginedStu() != null;
	}
	
	public String getLoginedAdminId() {
		IUser u = getLoginedAdmin();
		if(u == null)
			return null;
		return u.getUser_id();
	}
	
	public String getLoginedStuId() {
		IUser u = getLoginedStu();
		if(u == null)
			return null;
		return u.getUser_id();
	}
	
	public Admin getLoginedAdmin() {
		return (Admin) session.getAttribute("admin_session");
	}
	
	public Student getLoginedStu() {
		return (Student) session.getAttribute("stu_session");
	}
	
	public void setAdminLogin(IUser user) {
		session.setAttribute("admin_session", user);
	}
	
	public void setStuLogin(IUser user) {
		session.setAttribute("stu_session", user);
	}
	
	public void logoutAdmin() {
		session.removeAttribute("admin_session");
	}
	
	public void logoutStu() {
		session.removeAttribute("stu_session");
	}
	
	
	
	public void setResult(String result) {
		request.setAttribute("result", result);
	}
	public void setIntResult(int intResult) {
		request.setAttribute("intResult", intResult);
	}
	
}