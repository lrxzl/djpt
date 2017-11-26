package com.pxxy.djpt.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.pxxy.djpt.bean.Student;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class ChartAction extends MyActionSupport {
	private Student stu;
	private List<Student> stuList;
	private String result;

	public List<Student> getStuList() {
		return stuList;
	}

	public void setStuList(List<Student> stuList) {
		this.stuList = stuList;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public String updateSex() {
		
		stuList = service.loadStuList();
		// 获取男生数量和女生数量
		
		JSONArray jsonArray = JSONArray.fromObject(stuList);
		result = jsonArray.toString();
		
		try {
			response.setHeader("Cache-Control", "no-cache");
			response.setContentType("aplication/json;charset=UTF-8");
			response.getWriter().print(result);// 发送到页面
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println(result);
		return null;
	}

}
