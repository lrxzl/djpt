package com.pxxy.djpt.bean;

import cn.pxxy.djpt.util.Conf;

public class Student implements IUser {
	private String stuId;
	private String psw;
	private String name;//姓名
	private String sex;//性别
	private String headImg;//证件照
	private String state;//状态
	private String time;//注册时间
	
	private String minzu;//民族
	private String banji;//班级
	private String jiguan;//籍贯
	private String chushentime;//出生日期
	private String zaiduxueli;//在读学历
	private String peiyangren;//培养人
	private String tijiaorudanshenqintime;//提交入党申请时间
	private String lieweirudanjijifenzitime;//列为入党积极份子时间
	private String liewweiyubeidantime;//列为预备党员时间
	private String zhuangzhentime;//转正时间
	private String rudanjieshaoren;//入党介绍人
	private String fazhandanzhibushuji;//发展党支部书记
	private String danzhibushuji;//党支部书记
	private String suoshudanzhibu;//所属党支部
	private String jiatinzhuzhi;//家庭住址
	private String lianxidianhua;//联系电话
	private String biyedanjidiaobo;//毕业党籍调拨
	private String beizhu;//备注
	public static String[] getFieldCNs() {
		return new String[]{
				"学号"
				,"姓名"
				,"性别"
				,"状态"
				,"民族"
				,"班级"
				,"籍贯"
				,"出生日期"
				,"在读学历"
				,"培养人"
				,"提交入党申请时间"
				,"列为入党积极份子时间"
				,"列为预备党员时间"
				,"转正时间"
				,"发展党支部书记"
				,"党支部书记"
				,"所属党支部"
				,"家庭住址"
				,"联系电话"
				,"毕业党籍调拨"
		};
	}
	public static String[] getFieldNames() {
		return new String[]{
				"stuId"
				,"name"
				,"sex"
				,"state"
				,"minzu"
				,"banji"
				,"jiguan"
				,"chushentime"
				,"zaiduxueli"
				,"peiyangren"
				,"lieweirudanjijifenzitime"
				,"liewweiyubeidantime"
				,"zhuangzhentime"
				,"rudanjieshaoren"
				,"fazhandanzhibushuji"
				,"danzhibushuji"
				,"suoshudanzhibu"
				,"jiatinzhuzhi"
				,"lianxidianhua"
				,"biyedanjidiaobo"
				};
	}
	public Object[] getVars() {
		return new Object[]{
				stuId
				,name
				,sex
				,state
				,minzu
				,banji
				,jiguan
				,chushentime
				,zaiduxueli
				,peiyangren
				,lieweirudanjijifenzitime
				,liewweiyubeidantime
				,zhuangzhentime
				,rudanjieshaoren
				,fazhandanzhibushuji
				,danzhibushuji
				,suoshudanzhibu
				,jiatinzhuzhi
				,lianxidianhua
				,biyedanjidiaobo
				};
	}
	
	
	
	
	private String nextop;
	public String getNextop() {
		return nextop;
	}
	public void setNextop(String nextop) {
		this.nextop = nextop;
	}
	
	public String getStuId() {
		return stuId;
	}
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getHeadImg() {
		return headImg;
	}
	public void setHeadImg(String headImg) {
		this.headImg = headImg;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getJiguan() {
		return jiguan;
	}
	public void setJiguan(String jiguan) {
		this.jiguan = jiguan;
	}
	public String getChushentime() {
		return chushentime;
	}
	public void setChushentime(String chushentime) {
		this.chushentime = chushentime;
	}
	public String getZaiduxueli() {
		return zaiduxueli;
	}
	public void setZaiduxueli(String zaiduxueli) {
		this.zaiduxueli = zaiduxueli;
	}
	public String getMinzu() {
		return minzu;
	}
	public void setMinzu(String minzu) {
		this.minzu = minzu;
	}
	public String getBanji() {
		return banji;
	}
	public void setBanji(String banji) {
		this.banji = banji;
	}
	public String getTijiaorudanshenqintime() {
		return tijiaorudanshenqintime;
	}
	public void setTijiaorudanshenqintime(String tijiaorudanshenqintime) {
		this.tijiaorudanshenqintime = tijiaorudanshenqintime;
	}
	public String getLieweirudanjijifenzitime() {
		return lieweirudanjijifenzitime;
	}
	public void setLieweirudanjijifenzitime(String lieweirudanjijifenzitime) {
		this.lieweirudanjijifenzitime = lieweirudanjijifenzitime;
	}
	public String getLiewweiyubeidantime() {
		return liewweiyubeidantime;
	}
	public void setLiewweiyubeidantime(String liewweiyubeidantime) {
		this.liewweiyubeidantime = liewweiyubeidantime;
	}
	public String getZhuangzhentime() {
		return zhuangzhentime;
	}
	public void setZhuangzhentime(String zhuangzhentime) {
		this.zhuangzhentime = zhuangzhentime;
	}
	public String getRudanjieshaoren() {
		return rudanjieshaoren;
	}
	public void setRudanjieshaoren(String rudanjieshaoren) {
		this.rudanjieshaoren = rudanjieshaoren;
	}
	public String getFazhandanzhibushuji() {
		return fazhandanzhibushuji;
	}
	public void setFazhandanzhibushuji(String fazhandanzhibushuji) {
		this.fazhandanzhibushuji = fazhandanzhibushuji;
	}
	public String getDanzhibushuji() {
		return danzhibushuji;
	}
	public void setDanzhibushuji(String danzhibushuji) {
		this.danzhibushuji = danzhibushuji;
	}
	public String getSuoshudanzhibu() {
		return suoshudanzhibu;
	}
	public void setSuoshudanzhibu(String suoshudanzhibu) {
		this.suoshudanzhibu = suoshudanzhibu;
	}
	public String getJiatinzhuzhi() {
		return jiatinzhuzhi;
	}
	public void setJiatinzhuzhi(String jiatinzhuzhi) {
		this.jiatinzhuzhi = jiatinzhuzhi;
	}
	public String getLianxidianhua() {
		return lianxidianhua;
	}
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	public String getBiyedanjidiaobo() {
		return biyedanjidiaobo;
	}
	public void setBiyedanjidiaobo(String biyedanjidiaobo) {
		this.biyedanjidiaobo = biyedanjidiaobo;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public String getPeiyangren() {
		return peiyangren;
	}
	public void setPeiyangren(String peiyangren) {
		this.peiyangren = peiyangren;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPermission() {
		return Conf.permission_student;
	}
	public void setPermission(int pmst) {
		return;
	}
	public void setUser_id(String user_id) {
		this.stuId = user_id;
	}
	public String getUser_id() {
		return stuId;
	}
	public void setPsw(String psw) {
		this.psw = psw;
	}
	public String getPsw() {
		return psw;
	}
	public String getName() {
		return name;
	}
}
