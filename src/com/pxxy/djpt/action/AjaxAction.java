package com.pxxy.djpt.action;

import cn.pxxy.djpt.util.Conf;

import com.jhlabs.vecmath.Matrix4f;
import com.pxxy.djpt.bean.Admin;
import com.pxxy.djpt.bean.IUser;
import com.pxxy.djpt.bean.Material;
import com.pxxy.djpt.bean.Student;

public class AjaxAction extends MyActionSupport {
	private Admin admin;
	private Student stu;
	private Material material;
	public Material getMaterial() {
		return material;
	}
	public void setMaterial(Material material) {
		this.material = material;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public Student getStu() {
		return stu;
	}
	public void setStu(Student stu) {
		this.stu = stu;
	}
	
	//reverseNewsEdit reverseStuInfosEdit reverseStuInfosEdit reverseStuInfosScan
	
	public String reverseNewsEdit() {
		int pmst = Conf.permission_news_edit;
		System.out.println(admin.getAdmin_id());
		Admin admin1 = service.loadAdminById(admin.getAdmin_id());
		return reversePermission(admin1, pmst);
	}
	
	public String reverseStuInfosEdit() {
		int pmst = Conf.permission_edit_stu_infos;
		Admin admin1 = service.loadAdminById(admin.getAdmin_id());
		return reversePermission(admin1, pmst);
	}
	
	public String reverseStuInfosScan() {
		int pmst = Conf.permission_scan_stus;
		Admin admin1 = service.loadAdminById(admin.getAdmin_id());
		return reversePermission(admin1, pmst);
	}
	
	public String reverseReview() {
		int pmst = Conf.permission_review_materils;
		Admin admin1 = service.loadAdminById(admin.getAdmin_id());
		return reversePermission(admin1, pmst);
	}
	
	private String reversePermission(IUser who, int pmst) {
		IUser adm = getLoginedAdmin();
		if(!Conf.hasPermission(adm, Conf.permission_max))
			return "denied";
		if(Conf.hasPermission(who, pmst)) {
			Conf.removePermission(who, pmst);
		} else {
			Conf.addPermission(who, pmst);
		}
		getIDao().updateEntity(who);
		return SUCCESS;
	}
	
	
	/**
	 * Progress
	 */
	public String rejectApplicationBook() {
		if(getLoginedAdmin().canReviewMaterials()==false) {
			setResult("没有权限");
			return SUCCESS;
		}
		System.out.println("material " + material.getMaterialId());
		Material mt = getIDao().findOneByHql("from Material where materialId=? and type=?"
				, new Object[]{material.getMaterialId(),material.getType()});
		mt.setPassed(-1);
		mt.setRem(material.getRem());
		getIDao().updateEntity(mt);
		setResult("success");
		return SUCCESS;
	}
	
	public String passApplicationBook() {
		if(getLoginedAdmin().canReviewMaterials()==false) {
			setResult("没有权限");
			return SUCCESS;
		}
		Material mt = getIDao().findOneByHql("from Material where materialId=? and type=?"
				, new Object[]{material.getMaterialId(),material.getType()});
		mt.setPassed(1);
		mt.setRem("审核通过");
		getIDao().updateEntity(mt);
		setResult("success");
		
		updateStudentDynamic(mt.getUserId(), mt.getType());
		return SUCCESS;
	}
	
	public String reject() {
		if(getLoginedAdmin().canReviewMaterials()==false) {
			setResult("没有权限");
			return SUCCESS;
		}
		System.out.println("material " + material.getMaterialId());
		Material mt = getIDao().findOneByHql("from Material where materialId=? and type=?"
				, new Object[]{material.getMaterialId(),material.getType()});
		mt.setPassed(-1);
		mt.setRem(material.getRem());
		getIDao().updateEntity(mt);
		setResult("success");
		return SUCCESS;
	}
	
	public String pass() {
		if(getLoginedAdmin().canReviewMaterials()==false) {
			setResult("没有权限");
			return SUCCESS;
		}
		System.out.println("material " + material.getMaterialId());
		
		Material mt = getIDao().findOneByHql("from Material where materialId=? and type=?"
				, new Object[]{material.getMaterialId(),material.getType()});
		mt.setPassed(1);
		mt.setRem("审核通过");
		getIDao().updateEntity(mt);
		setResult("success");
		updateStudentDynamic(mt.getUserId(), mt.getType());
		return SUCCESS;
	}
	
	private void updateStudentDynamic(String stuid, String current_type) {
		Student st = service.loadStuById(stuid);
		String nextOper = "application";
		if(Conf.material_application.equals(current_type)) {
			nextOper = Conf.material_report1;
			st.setState(Conf.states[1]);
		}
		if(Conf.material_report1.equals(current_type)) {
			nextOper = Conf.material_report2;
		}
		if(Conf.material_report2.equals(current_type)) {
			nextOper = Conf.material_report3;
		}
		if(Conf.material_report3.equals(current_type)) {
			nextOper = Conf.material_report4;
		}
		if(Conf.material_report4.equals(current_type)) {
			st.setState(Conf.states[2]);
			//TODO next
			nextOper = "?";
		}
		
		st.setNextop(nextOper);
		service.updateStudent(st);
	}
	
	private String result = "success";
	public String getResult() {
		return result;
	}
	@Override
	public void setResult(String result) {
		this.result = result;
	}
}
