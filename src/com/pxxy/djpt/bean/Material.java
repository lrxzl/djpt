package com.pxxy.djpt.bean;

public class Material {
	private int materialId;
	private String userId;
	private String userName;
	private String imgRef;
	private String type;
	private String tmpType;
	private String fileRef;
	private String content;
	private String time;
	private Integer passed;
	private String rem;
	
	public String getTmpType() {
		return tmpType;
	}
	public void setTmpType(String tmpType) {
		this.tmpType = tmpType;
	}
	private String banji;
	public String getBanji() {
		return banji;
	}
	public void setBanji(String banji) {
		this.banji = banji;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getMaterialId() {
		return materialId;
	}
	public void setMaterialId(int materialId) {
		this.materialId = materialId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getImgRef() {
		return imgRef;
	}
	public void setImgRef(String imgRef) {
		this.imgRef = imgRef;
	}
	public String getFileRef() {
		return fileRef;
	}
	public void setFileRef(String fileRef) {
		this.fileRef = fileRef;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getRem() {
		return rem;
	}
	public void setRem(String rem) {
		this.rem = rem;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getPassed() {
		return passed;
	}
	public void setPassed(Integer passed) {
		this.passed = passed;
	}
	
}
