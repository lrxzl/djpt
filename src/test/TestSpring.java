package test;

import java.util.List;

import org.springframework.beans.factory.BeanFactory;


import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;

import cn.pxxy.djpt.util.Conf;
import cn.pxxy.djpt.util.Tool;

import com.pxxy.djpt.bean.News;
import com.pxxy.djpt.bean.Student;
import com.pxxy.djpt.dao.impl.DaoImpl;
import com.pxxy.djpt.service.impl.ServiceImpl;

import junit.framework.TestCase;

public class TestSpring extends TestCase {
	BeanFactory bf = new ClassPathXmlApplicationContext("applicationContext.xml");
	HibernateTemplate hibernateTemplate =  (HibernateTemplate) bf.getBean("hibernateTemplate");
	ServiceImpl si = new ServiceImpl();
	DaoImpl di = new DaoImpl();
	
	public TestSpring() {
		di.setHibernateTemplate(hibernateTemplate);
		si.setDao(di);
	}
	
	public void testAddNews() {
		News news = new News();
		news.setTitle("TITLE");
		news.setContent("Content");
		news.setType("TYPE");
		news.setSource("source");
		news.setTime(Tool.time());
		System.out.println(si.addNews(news));
	}
	
	public void testLoadNews() {
		List<News> li = si.loadNewsList(0, 0);
		for(News t:li){
			System.out.println(t);
		}
	}
	
	public void testDelNews() {
		si.delNewsById(10);
	}
	
	public void testEditNews() {
		News news = new News();
		news.setNews_id(10);
		news.setTitle("TITLE10");
		news.setContent("Content10");
		news.setType("TYPE10");
		news.setSource("source102");
		news.setTime(Tool.time());
		si.updateNews(news);
	}
	
	String choose(String...s) {
		return s[(int)(Math.random() * s.length)];
	}
	public void testInsert() {
		for(int i=0;i<150;i++) {
			Student stu = new Student();
			stu.setUser_id(i+"");
			stu.setPsw(123+"");
			stu.setBanji(choose("15软工1","15软工2班","16软工1班","16软工2班","15软件1班","15软件2班","16信管班","16数媒班"));
			stu.setBiyedanjidiaobo(choose("在校","离校"));
			stu.setChushentime(Tool.time());
			stu.setName("小"+i);
			stu.setDanzhibushuji("党支部书记"+i%3+1);
			stu.setFazhandanzhibushuji("发展党支部书记"+i%6+1);
			stu.setJiguan(choose("江西","江苏","广东","上海","南京","苏州"));
			stu.setLianxidianhua((long)(Math.abs(Math.sin(i)) * 99999999999L) + "");
			stu.setLieweirudanjijifenzitime(Tool.time());
			stu.setSex(choose("男","女"));
			stu.setState(choose(Conf.states));
			stu.setRudanjieshaoren("入党介绍人" + i%6+1);
			stu.setZaiduxueli(choose("本科","专科"));
			stu.setJiatinzhuzhi(i%5+1+"省");
			stu.setMinzu("民族" + i%56+1);
			stu.setPeiyangren("培养人" + i%7+1);
			stu.setSuoshudanzhibu("在第"+(i%4+1)+"支部");
			stu.setNextop("application");
			si.saveStudent(stu);
		}
	}
}
