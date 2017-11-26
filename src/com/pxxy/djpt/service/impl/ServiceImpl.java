package com.pxxy.djpt.service.impl;

import java.io.Serializable;
import java.util.List;

import cn.pxxy.djpt.util.Conf;
import cn.pxxy.djpt.util.Tool;

import com.pxxy.djpt.action.MyActionSupport;
import com.pxxy.djpt.bean.Admin;
import com.pxxy.djpt.bean.Honor;
import com.pxxy.djpt.bean.Material;
import com.pxxy.djpt.bean.News;
import com.pxxy.djpt.bean.Student;
import com.pxxy.djpt.dao.IDao;
import com.pxxy.djpt.service.IService;

public class ServiceImpl implements IService {
	private IDao dao;
	public void setDao(IDao dao) {
		this.dao = dao;
	}
	
	//===========News=======================
	public Serializable addNews(News news) {
		news.setTime(Tool.time());
		return dao.saveEntity(news);
	}
	public List<News> loadNewsList(int from_id, int len) {
		return dao.findByHql("from News order by news_id desc",from_id,len);
	}
	public News loadNewsById(int id) {
		return dao.findOneByHql("from News where id=?", new Object[]{id});
	}
	public void delNewsById(int id) {
		dao.updateByHql("delete News where news_id=?", new Object[]{id});
	}
	public void updateNews(News news) {
		dao.updateEntity(news);
	}
	
	
	//=========Student=======================
	public void saveStudent(Student stu) {
		dao.saveEntity(stu);
	}

	public List<Student> loadStuList() {
		return dao.findByHql("from Student");
	}

	public void updateStudent(Student stu) {
		dao.updateEntity(stu);
	}

	public Student loadStuById(String stu_id) {
		return dao.findOneByHql("from Student where stuId=?",new Object[]{stu_id});
	}
	
	public List<Student> loadStuListByState(String type) {
		return dao.findByHql("from Student where state=?"
				, new Object[]{type});
	}

	//=========Admin=======================
	
	public Admin loadAdminById(String admin_id) {
		return dao.findOneByHql("from Admin where admin_id=?", new Object[]{admin_id});
	}

	public void registAdmin(String admin_id, String psw, String name, String type) {
		Admin admin = new Admin();
		admin.setAdmin_id(admin_id);
		Conf.addPermission(admin, Conf.permission_admin);
		admin.setPsw(psw);
		admin.setName(name);
		admin.setType(type);
		admin.setTime(Tool.time());
		dao.saveEntity(admin);
	}

	public IDao getIDao(MyActionSupport action) {
		return dao;
	}

	public void registAdmin(Admin admin) {
		admin.setPermission(0);
		Conf.addPermission(admin, Conf.permission_admin);
		admin.setTime(Tool.time());
		dao.saveEntity(admin);
	}

	public void saveOrUpdateMaterial(Material material) {
		Material tmp = findMaterial(material.getUserId(), material.getType());
		if(tmp == null) {
			material.setTime(Tool.time());
			material.setPassed(0);
			dao.saveEntity(material);
		} else {
			material.setPassed(0);
			dao.updateEntity(material);
		}
	}

	public Material findMaterial(String stuId, String type) {
		return dao.findOneByHql("from Material where userId=? and type=?", new Object[]{stuId, type});
	}

	public List<Material> loadMaterialByStu(String stuId) {
		return dao.findByHql("from Material where userId=?",new Object[]{stuId});
	}
	
	public void saveHonor(Honor honor) {
		honor.setTime(Tool.time());
		dao.saveEntity(honor);
	}

	public List<Honor> loadHonors(String loginedStuId) {
		return dao.findByHql("from Honor where stuId=?"
				,new Object[]{loginedStuId},0,0);
	}

	public void updateHonor(Honor honor) {
		dao.updateEntity(honor);
	}

	public Honor loadHonor(String loginedStuId, int term) {
		return dao.findOneByHql("from Honor where stuId=? and term=?"
				,new Object[]{loginedStuId,term});
	}
	
}
