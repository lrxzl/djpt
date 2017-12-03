package com.pxxy.djpt.action;

import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts2.ServletActionContext;

import cn.pxxy.djpt.util.Conf;
import cn.pxxy.djpt.util.Tool;

import com.pxxy.djpt.bean.Admin;
import com.pxxy.djpt.bean.Honor;
import com.pxxy.djpt.bean.IUser;
import com.pxxy.djpt.bean.Material;
import com.pxxy.djpt.bean.Student;

public class AdminAction extends MyActionSupport {
	private Admin admin;
	private Student stu;
	private List<Student> stuList;
	private List<Admin> adminList;
	public Student getStu() {
		return stu;
	}
	public void setStu(Student stu) {
		this.stu = stu;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public Admin getAdmin() {
		return admin;
	}
	public List<Student> getStuList() {
		return stuList;
	}
	public void setStuList(List<Student> stuList) {
		this.stuList = stuList;
	}
	public List<Admin> getAdminList() {
		return adminList;
	}
	public void setAdminList(List<Admin> adminList) {
		this.adminList = adminList;
	}
	
	public String loadAdminPage() {
		return loadAdminList();
	}
	
	
	private String type;
	public void setType(String type) {
		this.type = type;
	}
	public String getType() {
		return type;
	}
	public String loadStuList() {
		if(!((Admin)getLoginedAdmin()).canScanStuInfos()) {
			return "denied";
		}
		
		if (type == null || "".equals(type)) {
			stuList = service.loadStuList();
		} else {
			stuList = service.loadStuListByState(type);
		}
		
		return "stuList";
	}
	
	public String loadStuListAjax() {
		stuList = service.loadStuList();
		return "success";
	}
	private List<Honor> honors;
	public List<Honor> getHonors() {
		return honors;
	}
	public void setHonors(List<Honor> honors) {
		this.honors = honors;
	}
	
	private List<String> states;
	public List<String> getStates() {
		return states;
	}
	public String loadStuInfo() {
		if(!((Admin)getLoginedAdmin()).canScanStuInfos())
			return "denied";
		
		stuList = service.loadStuList();
		stu = service.loadStuById(stu.getStuId());
		
		materials = service.loadMaterialByStu(stu.getStuId());
		dealWithMaterials(materials);
		
		states = new ArrayList<String>();
		for(int i=0;i<Conf.states.length;i++)
			states.add(Conf.states[i]);
		
		honors = service.loadHonors(stu.getStuId());
		return "stuInfo";
	}
	
	private Honor honor;
	private int term;
	public int getTerm() {
		return term;
	}
	public void setTerm(int term) {
		this.term = term;
	}
	public Honor getHonor() {
		return honor;
	}
	public void setHonor(Honor honor) {
		this.honor = honor;
	}
	public String updateStuHonor() {
		if(!((Admin)getLoginedAdmin()).canEditStuInfos())
			return "denied";
		
		Honor tmpHonor = service.loadHonor(stu.getStuId(), honor.getTerm());
		System.out.println(tmpHonor);
		if(tmpHonor!=null) {
			tmpHonor.setCanjiahuodong(honor.getCanjiahuodong());
			tmpHonor.setChidaozaotui(honor.getChidaozaotui());
			tmpHonor.setChufen(honor.getChufen());
			tmpHonor.setGuake(honor.getGuake());
			tmpHonor.setJiangzhuxuejin(honor.getJiangzhuxuejin());
			tmpHonor.setKuanke(honor.getKuanke());
			tmpHonor.setQinshichayou(honor.getQinshichayou());
			tmpHonor.setRonyuzhenshu(honor.getRonyuzhenshu());
			tmpHonor.setSuorenganbu(honor.getSuorenganbu());
			service.updateHonor(tmpHonor);
		}
		
		return loadStuInfo();
	}
	
	public String updateStuInfo() {
		if(!((Admin)getLoginedAdmin()).canEditStuInfos())
			return "denied";
		Student tmp = service.loadStuById(stu.getStuId());
		stu.setPsw(tmp.getPsw());
		tmp = stu;
		service.updateStudent(tmp);
		return "stuInfo";
	}
	
	
	public String login() {
		/*IUser u = service.loadAdminById(admin.getUser_id());
		if(u==null) {
			setResult("账号未找到");
			return INPUT;
		} else if(!u.getPsw().equals(admin.getPsw())) {
			setResult("密码错误");
			return INPUT;
		}
		setAdminLogin(u);
		return loadAdminPage();*/
		Admin a = service.loadAdminById(admin.getUser_id());
		if(a==null) {
			setResult("账号未找到");
			return INPUT;
		} else if(!a.getPsw().equals(admin.getPsw())) {
			setResult("密码错误");
			return INPUT;
		}
		setAdminLogin(a);
		if(Conf.admin_type_teacher.equals(a.getType())) {
			return loadTeacherAdminPage(a.getAdmin_id());
		}
		
		if(Conf.admin_type_newsEditor.equals(a.getType())) {
			
		}
		
		return loadAdminPage();
	}
	
	public String logout() {
		logoutAdmin();
		return INPUT;
	}
	
	public String createNewAdmin() {
		IUser u = getLoginedAdmin();
		if(u == null || !Conf.hasPermission(u, Conf.permission_max)) {
			return "denied";
		}
		System.out.println(admin);
		service.registAdmin(admin);
		return loadAdminList();
	}
	
	public String loadAdminList() {
		adminList = getIDao().findByHql("from Admin order by admin_id desc");
		return "adminList";
	}
	
	private String fields = Arrays.toString(Student.getFieldNames());
	private String ids;
	public void setFields(String fields) {
		this.fields = fields.trim();
	}
	public void setIds(String ids) {
		this.ids = ids.trim();
	}
	
	private List<Student> loadStuByIds(String ids[]) {
		StringBuilder hql = new StringBuilder("from Student where ");
		Object[] vals = new Object[ids.length];
		for(int i=0;i<ids.length-1;i++) {
			hql.append("stuId=? or ");
			vals[i] = ids[i];
		}
		hql.append("stuId=? ");
		vals[ids.length-1] = ids[ids.length-1];
		return getIDao().findByHql(hql.toString(), vals, 0, 0);
	}
	
	public String exportAll() {
		String final_path = ServletActionContext.getRequest().getRealPath("")+"admin/files/stus.xls";
		setResult("admin/files/stus.xls");
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet=wb.createSheet("工作薄1");
		HSSFRow row=sheet.createRow(0);
		HSSFCell cell;
		for(int i=0;i<Student.getFieldNames().length;i++) {
			if(fields.indexOf(Student.getFieldNames()[i])>=0) {
				cell = row.createCell(i);
				cell.setCellValue(Student.getFieldCNs()[i]);
			}
		}
		/*HSSFCell cell=row.createCell(0);
		cell.setCellValue("名字");
		cell=row.createCell(1);
		cell.setCellValue("性别");
		cell=row.createCell(2);
		cell.setCellValue("联系方式");
		cell=row.createCell(3);
		cell.setCellValue("当前状态");
		cell=row.createCell(4);
		cell.setCellValue("家庭住址");
		cell=row.createCell(5);
		cell.setCellValue("Email");*/
		
		//填写实体数据，实际上这些是从数据库中得到
		System.out.println("_" + Arrays.toString(ids.split(" ")) + "_");
		List<Student> list = loadStuByIds(ids.split(" "));//service.loadStuList();
		for(int j=0;j<list.size();j++) {
			//row = sheet.createRow(i+1);
			//st work = (work) list.get(i);
			row=sheet.createRow(j+1);
			Student student = list.get(j);
			//创建单元格并设置值
			for(int i=0;i<Student.getFieldNames().length;i++) {
				if(fields.indexOf(Student.getFieldNames()[i])>=0) {
					row.createCell(i).setCellValue((String)(student.getVars()[i]==null?"":student.getVars()[i]));
				}
			}
			/*row.createCell(0).setCellValue(student.getName());
			row.createCell(1).setCellValue(student.getSex());
			row.createCell(3).setCellValue(student.getState());*/
			//将文件存入指定位置
			try {
				FileOutputStream fileOut = new FileOutputStream(final_path);
				wb.write(fileOut);
				fileOut.close();
			} catch (Exception e) {
			    e.printStackTrace();
			}
		}
		return "export";
	}
	
	public String export() {
		System.out.println("Export");
		String final_path = ServletActionContext.getRequest().getRealPath("")+"admin/files/"+stu.getUser_id()+".xls";
		setResult("admin/files/"+stu.getUser_id()+".xls");
		
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = wb.createSheet("工作薄1");
		HSSFRow row = sheet.createRow(0);
		HSSFCell cell;
		for(int i=0;i<Student.getFieldNames().length;i++) {
			cell = row.createCell(i);
			cell.setCellValue(Student.getFieldCNs()[i]);
		}
		/*HSSFCell cell=row.createCell(0);
		cell.setCellValue("名字");
		cell=row.createCell(1);
		cell.setCellValue("性别");
		cell=row.createCell(2);
		cell.setCellValue("联系方式");
		cell=row.createCell(3);
		cell.setCellValue("当前状态");
		cell=row.createCell(4);
		cell.setCellValue("家庭住址");
		cell=row.createCell(5);
		cell.setCellValue("Email");*/
		
		//填写实体数据，实际上这些是从数据库中得到
		Student student = service.loadStuById(stu.getUser_id());
		//for(int i=0;i<list.size();i++){
			//row = sheet.createRow(i+1);
			//st work = (work) list.get(i);
			row=sheet.createRow(1);
			//创建单元格并设置值
			for(int i=0;i<Student.getFieldNames().length;i++) {
				row.createCell(i).setCellValue((String)(student.getVars()[i]==null?"":student.getVars()[i]));
			}
			/*row.createCell(0).setCellValue(student.getName());
			row.createCell(1).setCellValue(student.getSex());
			row.createCell(3).setCellValue(student.getState());*/
			
			//将文件存入指定位置
			try {
				FileOutputStream fileOut = new FileOutputStream(final_path);
				wb.write(fileOut);
				fileOut.close();
			} catch (Exception e) {  
			    e.printStackTrace();  
			}
		//}
		return "export";
	}
	
	/*public String updateAdmin() {
		IUser u = getLoginedAdmin();
		if(u == null || !Conf.hasPermission(u, Conf.permission_max)) {
			return "denied";
		}
		
		Admin a = service.loadAdminById(admin.getAdmin_id());
		a.setName(admin.getName());
		a.setPermission(admin.getPermission());
		
		service.updateAdmin(a);
	}*/
	
	
	/*public String deleteAdmin() {
		if(!Conf.hasPermission(getLoginedAdmin(), Conf.permission_max)) {
			
		}
		return loadAdminList();
	}*/
	
	public String deleteAdmin() {
		if(!Conf.hasPermission(getLoginedAdmin(), Conf.permission_max)) {
			return "denied";
		}
		getIDao().deleteEntity(service.loadAdminById(admin.getAdmin_id()));
		return loadAdminList();
	}
	
	public String deleteStu() {
		if(!Conf.hasPermission(getLoginedAdmin(), Conf.permission_edit_stu_infos)) {
			return "denied";
		}
		getIDao().deleteEntity(service.loadStuById(stu.getUser_id()));
		return loadStuList();
	}
	
	public String test() {
		System.out.println(stu.getName());
		return SUCCESS;
	}
	
	/*public String updateStuInfo() {
		if(!isStuLogin()) {
			return "login";
		}
		
		Student s = service.loadStuById(getLoginedStuId());
		stu.setTijiaorudanshenqintime(s.getTijiaorudanshenqintime());
		stu.setLieweirudanjijifenzitime(s.getLieweirudanjijifenzitime());
		stu.setLieweirudanjijifenzitime(s.getLieweirudanjijifenzitime());
		stu.setZhuangzhentime(s.getZhuangzhentime());
		stu.setFazhandanzhibushuji(s.getFazhandanzhibushuji());
		stu.setDanzhibushuji(s.getDanzhibushuji());
		stu.setSuoshudanzhibu(s.getSuoshudanzhibu());
		stu.setBiyedanjidiaobo(s.getBiyedanjidiaobo());
		service.updateStudent(stu);
		System.out.println("updateStuInfo3");
		
		return loadStuInfo();
	}*/
	
	/**
	 * For Progress
	 */
	private List<Material> materials;
	public List<Material> getMaterials() {
		return materials;
	}
	public void setMaterials(List<Material> materials) {
		this.materials = materials;
	}
	
	public String loadUnderReviews() {
		if(!getLoginedAdmin().canReviewMaterials()) {
			return "denied";
		}
		materials = getIDao().findByHql("from Material where passed=0 order by materialId desc");
		dealWithMaterials(materials);
		return "materialList";
	}

	private void dealWithMaterials(List<Material> materials2) {
		for(int i=0;i<materials2.size();i++) {
			materials2.get(i).setContent(materials2.get(i).getContent().replaceAll("\n", "<br>"));
			materials2.get(i).setTmpType(materials2.get(i).getType());
			for(int j=0;j<Conf.materials_en.length;j++) {
				if(Conf.materials_en[j].equals(materials2.get(i).getType())) {
					materials2.get(i).setType(Conf.materials_cn[j]);
					break;
				}
			}
		}
	}
	
	public String loadPassedReviews() {
		if(!getLoginedAdmin().canReviewMaterials()) {
			return "denied";
		}
		materials = getIDao().findByHql("from Material where passed=1 order by materialId desc");
		dealWithMaterials(materials);
		return "materialPassed";
	}
	
	public String loadRejectReviews() {
		if(!getLoginedAdmin().canReviewMaterials()) {
			return "denied";
		}
		materials = getIDao().findByHql("from Material where passed=-1 order by materialId desc");
		dealWithMaterials(materials);
		return "materialReject";
	}
	
	/**
	 * 身份所对应的首页
	 */
	private String loadTeacherAdminPage(String admin_id) {
		admin = service.loadAdminById(admin_id);
		loadAdminList();
		return "teacherAdminPage";
	}
	
	public String updateTeacherAdminInfo() {
		Admin tmp = service.loadAdminById(getLoginedAdminId());
		admin.setPermission(tmp.getPermission());
		admin.setPsw(tmp.getPsw());
		service.updateAdmin(admin);
		return loadTeacherAdminPage(admin.getAdmin_id());
	}
	
}
