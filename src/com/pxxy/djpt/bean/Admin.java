package com.pxxy.djpt.bean;

import org.apache.struts2.json.annotations.JSON;

import cn.pxxy.djpt.util.Conf;

public class Admin implements IUser {
	private String admin_id;
	private String psw;
	private String type;
	private String xy;
	private int permission;
	private String name;
	private String time;
	
	@Override
	public String toString() {
		return "Admin [admin_id=" + admin_id + ", psw=" + psw + ", type="
				+ type + ", xy=" + xy + ", permission=" + permission
				+ ", name=" + name + ", time=" + time + "]";
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	@JSON(serialize=false)
	public String getPsw() {
		return psw;
	}
	public void setPsw(String psw) {
		this.psw = psw;
	}
	public int getPermission() {
		return permission;
	}
	public void setPermission(int permission) {
		this.permission = permission;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public void setUser_id(String user_id) {
		this.admin_id = user_id;
	}
	public String getUser_id() {
		return admin_id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getXy() {
		return xy;
	}
	public void setXy(String xy) {
		this.xy = xy;
	}
	
	public boolean canEditNews() {
		return Conf.hasPermission(this, Conf.permission_news_edit);
	}
	public boolean canEditStuInfos() {
		return Conf.hasPermission(this, Conf.permission_edit_stu_infos);
	}
	public boolean canScanStuInfos() {
		return Conf.hasPermission(this, Conf.permission_scan_stus);
	}
	public boolean isIsAdmin() {
		return Conf.hasPermission(this, Conf.permission_admin);
	}
	public boolean isIsMaxAdmin() {
		return Conf.hasPermission(this, Conf.permission_max);
	}
	public boolean canReviewMaterials() {
		return Conf.hasPermission(this, Conf.permission_review_materils);
	}
}
