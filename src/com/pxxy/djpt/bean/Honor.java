package com.pxxy.djpt.bean;

public class Honor {
	private int honorId;
	private int term;
	private String stuId;
	private String type;
	private String jiangzhuxuejin;
	private String ronyuzhenshu;
	private String suorenganbu;
	private String canjiahuodong;
	private String chidaozaotui;
	private String kuanke;
	private String guake;
	private String qinshichayou;
	private String chufen;
	private String content;
	private String img;
	private String atTime;
	private String time;
	
	@Override
	public String toString() {
		return "Honor [honorId=" + honorId + ", term=" + term + ", stuId="
				+ stuId + ", type=" + type + ", jiangzhuxuejin="
				+ jiangzhuxuejin + ", ronyuzhenshu=" + ronyuzhenshu
				+ ", suorenganbu=" + suorenganbu + ", canjiahuodong="
				+ canjiahuodong + ", chidaozaotui=" + chidaozaotui
				+ ", kuanke=" + kuanke + ", guake=" + guake + ", qinshichayou="
				+ qinshichayou + ", chufen=" + chufen + ", content=" + content
				+ ", img=" + img + ", atTime=" + atTime + ", time=" + time
				+ "]";
	}
	public int getHonorId() {
		return honorId;
	}
	public void setHonorId(int honorId) {
		this.honorId = honorId;
	}
	public int getTerm() {
		return term;
	}
	public void setTerm(int term) {
		this.term = term;
	}
	public String getStuId() {
		return stuId;
	}
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getAtTime() {
		return atTime;
	}
	public void setAtTime(String atTime) {
		this.atTime = atTime;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getJiangzhuxuejin() {
		return jiangzhuxuejin;
	}
	public void setJiangzhuxuejin(String jiangzhuxuejin) {
		this.jiangzhuxuejin = jiangzhuxuejin;
	}
	public String getRonyuzhenshu() {
		return ronyuzhenshu;
	}
	public void setRonyuzhenshu(String ronyuzhenshu) {
		this.ronyuzhenshu = ronyuzhenshu;
	}
	public String getSuorenganbu() {
		return suorenganbu;
	}
	public void setSuorenganbu(String suorenganbu) {
		this.suorenganbu = suorenganbu;
	}
	public String getCanjiahuodong() {
		return canjiahuodong;
	}
	public void setCanjiahuodong(String canjiahuodong) {
		this.canjiahuodong = canjiahuodong;
	}
	public String getChidaozaotui() {
		return chidaozaotui;
	}
	public void setChidaozaotui(String chidaozaotui) {
		this.chidaozaotui = chidaozaotui;
	}
	public String getChufen() {
		return chufen;
	}
	public void setChufen(String chufen) {
		this.chufen = chufen;
	}
	public String getKuanke() {
		return kuanke;
	}
	public void setKuanke(String kuanke) {
		this.kuanke = kuanke;
	}
	public String getQinshichayou() {
		return qinshichayou;
	}
	public void setQinshichayou(String qinshichayou) {
		this.qinshichayou = qinshichayou;
	}
	public String getGuake() {
		return guake;
	}
	public void setGuake(String guake) {
		this.guake = guake;
	}
}
