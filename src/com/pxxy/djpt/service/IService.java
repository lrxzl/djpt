package com.pxxy.djpt.service;

import java.io.Serializable;
import java.util.List;

import com.pxxy.djpt.action.MyActionSupport;
import com.pxxy.djpt.bean.Admin;
import com.pxxy.djpt.bean.Honor;
import com.pxxy.djpt.bean.Material;
import com.pxxy.djpt.bean.News;
import com.pxxy.djpt.bean.Student;
import com.pxxy.djpt.dao.IDao;

public interface IService {
	//=========偷懒=========
	IDao getIDao(MyActionSupport action);
	//==============News================
	
	Serializable addNews(News news);

	List<News> loadNewsList(int from_id, int len);

	News loadNewsById(int id);

	void delNewsById(int id);
	
	void updateNews(News news);

	//==============Student================
	
	void saveStudent(Student stu);

	List<Student> loadStuList();
	List<Student> loadStuListByState(String type);
	
	void updateStudent(Student stu);
	
	Student loadStuById(String stu_id);
	void updateStuFields(String stuId, String whichFields[], Object values[]);
	
	//==============admin================
	Admin loadAdminById(String admin_id);

	void registAdmin(Admin admin);

	Material findMaterial(String loginedStuId, String materialApplication);

	void saveOrUpdateMaterial(Material material);

	//===============Material================
	List<Material> loadMaterialByStu(String stuId);

	void saveHonor(Honor honor);
	Honor loadHonor(String loginedStuId, int term);
	List<Honor> loadHonors(String loginedStuId);
	void updateHonor(Honor honor);
	
}
