package cn.pxxy.djpt.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Tool {
	//added sth on local
	public static String time() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return df.format(new Date());
	}
	
}
