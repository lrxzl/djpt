package cn.pxxy.djpt.util;

import java.net.UnknownHostException;

import com.pxxy.djpt.bean.IUser;

public class Conf {
	public static final int list_count_perload = 10;
	public static final int permission_default = 0x0;//默认权限
	public static final int permission_student = 0x1;//学生权限
	
	public static final int permission_admin = 0x1 << 1;//管理员权限
	public static final int permission_news_edit = 0x1 << 2;//新闻编辑权限
	public static final int permission_teacher = 0x1 << 3;//教师修改学生信息权限
	public static final int permission_scan_stus = 0x1 << 4;//查看学生信息权限
	public static final int permission_edit_stu_infos = 0x1<<5;//修改学生信息
	public static final int permission_review_materils = 0x1<<6;//审查上交的材料
	
	public static final int permission_max = 0xffffff;//最高权限
	
	public static final int permissions[] = {
		permission_default
		,permission_student
		,permission_admin
		,permission_news_edit
		,permission_teacher
	};
	
	public static final String permissionsDescription[] = {
		"默认权限（无权限）"
		,"学生权限（学生可修改自己的信息）"
		,"管理员权限（仅可以进入管理界面查看信息）"
		,"新闻编辑权限（可以修改新闻）"
		,"教师1权限（可以修改学生信息，不可编辑新闻）"
	};
	
	public static final int admin_type_admin = 1;
	public static final int admin_type_teacher = 2; 
	public static final int admin_type_newsEditor = 3;
	
/*
   1、申请入党阶段（提交入党申请书；党组织是否派人谈话CheckBox）
   2、确定为入党积极分子（时间和状态）
   3、入党积极分子培养阶段（图片和文字上传；党课结业证书图片；函调证明图片；团员入党推荐表图片，自传图片
   			（定死了的）思想汇报是从确定为入党积极分子这个时间点开始与最接近3、6、9、12月份写起，总共四个季度
   	）
   4、发展对象的确定（时间和状态）	
   5、发展对象的考察阶段（填写入党志愿书CheckBox；3份党员评议和5份非党员评议图片；业绩汇报图片；党组织派人谈话；确定入党介绍人；开展集中培训；定期向党组织汇报思想）
   6、确定为预备党员
   7、预备党员考察阶段（4个季度的思想汇报；入党宣誓；转正申请图片和文字）
*/
	public static final String material_application = "application";
	public static final String material_dankejieyezhenshu = "dankejieyezhenshu";//党课结业证书
	public static final String material_handiaozhenmin = "handiaozhenmin";//函调证明
	public static final String material_tuanyuanrudantuijianbiao = "tuanyuanrudantuijianbiao";//团员入党推荐表图片
	public static final String material_zizhuan = "zizhuan";//自传图片
	
	public static final String material_report1 = "report1";//3月份思想汇报
	public static final String material_report2 = "report2";//6月份思想汇报
	public static final String material_report3 = "report3";//9月份思想汇报
	public static final String material_report4 = "report4";//12月份思想汇报
	
	public static final String material_rudanzhiyuanshu = "rudanzhiyuanshu";//入党志愿书
	public static final String material_danyuanpinyi1 = "danyuanpinyi1";//党员评议1
	public static final String material_danyuanpinyi2 = "danyuanpinyi2";//党员评议2
	public static final String material_danyuanpinyi3 = "danyuanpinyi3";//党员评议3
	public static final String material_feidanyuanpinyi1 = "feidanyuanpinyi1";//非党员评议1
	public static final String material_feidanyuanpinyi2 = "feidanyuanpinyi2";//非党员评议2
	public static final String material_feidanyuanpinyi3 = "feidanyuanpinyi3";//非党员评议3
	public static final String material_feidanyuanpinyi4 = "feidanyuanpinyi4";//非党员评议4
	public static final String material_feidanyuanpinyi5 = "feidanyuanpinyi5";//非党员评议5
	
	public static final String material_rudanxuanshi = "rudanxuanshi";//入党宣誓
	public static final String material_zhuanzhenshenqin = "zhuanzhenshenqin";//转正申请
	
	public static final String materials_en[] = new String[] {
		material_application,material_dankejieyezhenshu,material_handiaozhenmin
		,material_tuanyuanrudantuijianbiao,material_zizhuan,material_report1,material_report2
		,material_report3,material_report4,material_rudanzhiyuanshu,material_danyuanpinyi1
		,material_danyuanpinyi2,material_danyuanpinyi3
		,material_feidanyuanpinyi1,material_feidanyuanpinyi2,material_feidanyuanpinyi3,material_feidanyuanpinyi4,material_feidanyuanpinyi5
		,material_rudanxuanshi,material_zhuanzhenshenqin
	};
	public static final String materials_cn[] = new String[]{
		"入党申请书","党课结业证书","函调证明"
		,"团员入党推荐表图片","自传图片","3月份思想汇报","6月份思想汇报"
		,"9月份思想汇报","12月份思想汇报","入党志愿书","党员评议1"
		,"党员评议2","党员评议3"
		,"非党员评议1","非党员评议2","非党员评议3","非党员评议4","非党员评议5"
		,"入党宣誓","转正申请"
	};
	public static final int aquire_none = 0;
	public static final int aquire_text = 1;
	public static final int aquire_img = 2;
	public static final int aquire_both = 3;
	
	public static final int materials_aquire[] = new int[] {
		aquire_both,aquire_img,aquire_img
		,aquire_img,aquire_img,aquire_both,aquire_both
		,aquire_both,aquire_both,aquire_both,aquire_img
		,aquire_img,aquire_img
		,aquire_img,aquire_img,aquire_img,aquire_img,aquire_img
		,aquire_none,aquire_both
	};
	
	public static final String states[] = new String[]{"团员","入党积极分子","发展对象","预备党员","正式党员"};
	
	public static void addPermission(IUser user, int permission) {
		user.setPermission((user.getPermission() | permission));
	}
	
	public static void removePermission(IUser user, int permission) {
		user.setPermission(user.getPermission() & (~permission));
	}
	
	public static boolean hasPermission(IUser user, int permission) {
		if(user == null)
			return false;
		return ((user.getPermission() & permission) == permission);
	}
	static IUser u = new IUser(){

		public void setUser_id(String user_id) {
			// TODO Auto-generated method stub
			
		}

		public String getUser_id() {
			// TODO Auto-generated method stub
			return null;
		}

		public void setPsw(String psw) {
			// TODO Auto-generated method stub
			
		}

		public String getPsw() {
			// TODO Auto-generated method stub
			return null;
		}

		public String getName() {
			// TODO Auto-generated method stub
			return null;
		}

		public int getPermission() {
			return pmst;
		}
		int pmst;

		public void setPermission(int pmst) {
			this.pmst = pmst;
		}
		
	};
	public static void main(String[] args) throws UnknownHostException {
		/*long t = new Date().getTime();
		String ip = new String(InetAddress.getByName("xyht.lrxzl.cn").getHostAddress());
		System.out.println(ip);
		System.out.println(new Date().getTime() - t);
		*/
		
		System.out.println("permission_admin:" + permission_admin);
		System.out.println("permission_news_edit:" + permission_news_edit);
		System.out.println("permission_teacher:" + permission_teacher);
		System.out.println("permission_all:" + permission_max);
		//added on local(MyEclipse)
		//added on page
		
		//added sth on local
		//added sth on page
		addPermission(u, permission_news_edit);
		System.out.println(u.getPermission());
		//System.out.println(hasPermission(u, permission_admin));
		System.out.println(hasPermission(u, permission_news_edit));
		System.out.println(hasPermission(u, permission_teacher));
		System.out.println(hasPermission(u, permission_scan_stus));
		System.out.println(hasPermission(u, permission_edit_stu_infos));
	}
}
