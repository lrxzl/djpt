package com.pxxy.djpt.action;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Date;

import sun.misc.BASE64Decoder;
import cn.lrxzl.web.lib.MyBase64;
import cn.pxxy.djpt.util.Conf;

import com.pxxy.djpt.bean.Honor;
import com.pxxy.djpt.bean.IUser;
import com.pxxy.djpt.bean.Student;
public class StudentAction extends MyActionSupport {
	private Student stu;
	public Student getStu() {
		return stu;
	}
	public void setStu(Student stu) {
		this.stu = stu;
	}
	
	public String updateStuInfo() {
		if(!isStuLogin()) {
			return "login";
		}
		System.out.println(stu.getRudanjieshaoren());
		Student s = service.loadStuById(getLoginedStuId());
		stu.setStuId(s.getStuId());
		stu.setPsw(s.getPsw());
		stu.setTijiaorudanshenqintime(s.getTijiaorudanshenqintime());
		stu.setLieweirudanjijifenzitime(s.getLieweirudanjijifenzitime());
		stu.setLieweirudanjijifenzitime(s.getLieweirudanjijifenzitime());
		stu.setZhuangzhentime(s.getZhuangzhentime());
		stu.setFazhandanzhibushuji(s.getFazhandanzhibushuji());
		stu.setDanzhibushuji(s.getDanzhibushuji());
		stu.setSuoshudanzhibu(s.getSuoshudanzhibu());
		stu.setBiyedanjidiaobo(s.getBiyedanjidiaobo());
		stu.setBeizhu(s.getBeizhu());
		stu.setNextop(s.getNextop());
		service.updateStudent(stu);
		return loadStuInfo();
	}
	
	public String loadStuInfo() {
		if(!isStuLogin())
			return INPUT;
		stu = service.loadStuById(getLoginedStuId());
		return "stuInfo";
	}
	
	/*public String saveStu() {
		stu.setPsw("123");
		System.out.println(stu);
		service.saveStudent(stu);
		return "stuList";
	}*/
	
	public String login() {
		IUser u = service.loadStuById(stu.getUser_id());
		if(u==null) {
			setResult("账号未找到");
			return INPUT;
		} else if(!u.getPsw().equals(stu.getPsw())) {
			setResult("密码错误");
			return INPUT;
		}
		setStuLogin(u);
		return SUCCESS;
	}
	
	public String logout() {
		logoutStu();
		return "index";
	}
	
	public String regist() {
		Student st = new Student();
		st.setUser_id(stu.getStuId());
		st.setPsw(stu.getPsw());
		st.setNextop(Conf.material_application);
		service.saveStudent(st);
		return "login";
	}
	
	private String files[] = new String[9];
	public void setFile0(String file0) {
		this.files[0] = file0;
	}
	public void setFile1(String file1) {
		this.files[1] = file1;
	}
	public void setFile2(String file2) {
		this.files[2] = file2;
	}
	public void setFile3(String file3) {
		this.files[3] = file3;
	}
	public void setFile4(String file4) {
		this.files[4] = file4;
	}
	public void setFile5(String file5) {
		this.files[5] = file5;
	}
	public void setFile6(String file6) {
		this.files[6] = file6;
	}
	public void setFile7(String file7) {
		this.files[7] = file7;
	}
	public void setFile8(String file8) {
		this.files[8] = file8;
	}
	private Honor honor;
	public Honor getHonor() {
		return honor;
	}
	public void setHonor(Honor honor) {
		this.honor = honor;
	}
	
	public String loadTermHonor() {
		System.out.println(honor.getTerm());
		honor = service.loadHonor(getLoginedStuId(), honor.getTerm()==0?1:honor.getTerm());
		request.setAttribute("honor", honor);
		return "honor";
	}
	
	public String submitTermHonor() {
		Honor tmp = null;
		
		honor.setImg(MyBase64.dealWithBase64(request, files));
		
		if((tmp = service.loadHonor(getLoginedStuId(), honor.getTerm())) == null) {
			honor.setStuId(getLoginedStuId());
			service.saveHonor(honor);
		} else {
			honor.setHonorId(tmp.getHonorId());
			honor.setStuId(tmp.getStuId());
			//如果没有被固化
			service.updateHonor(honor);
		}
		request.setAttribute("honor", honor);
		return "honor";
	}
}
