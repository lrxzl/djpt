package com.pxxy.djpt.bean;

public interface IUser {
	void setUser_id(String user_id);
	String getUser_id();
	
	void setPsw(String psw);
	String getPsw();
	
	String getName();
	int getPermission();
	void setPermission(int pmst);
}
