package cn.lrxzl.web.lib;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import sun.misc.BASE64Decoder;

public class MyBase64 {
	public static String dealWithBase64(HttpServletRequest request, String files[]) {
		String tmp_htext = "";
		String upload_path = request.getRealPath("/uploads");
		for(int i=0;i<files.length;i++){
			if(files[i]==null)continue;
			String NewFileName = new Date().getTime()+""+((char)((Math.random()*26)+97))+((char)((Math.random()*26)+97));
			String Ext = getImageExtFromBase64(files[i]);
			generateImage(files[i],upload_path,NewFileName,Ext);
			tmp_htext += NewFileName+"."+Ext+(i<files.length-1?";":"");
		}
		return tmp_htext;
	}
	private static String getImageExtFromBase64(String imgStr){
		if(imgStr==null)return "";
		int p = imgStr.indexOf(",");
		String head = imgStr.substring(0, p);
		String result = head.substring(head.indexOf("/")+1,head.indexOf(";"));
		return result;
	}
	private static void generateImage(String imgStr,String path,String newFileName,String ext){
		if (imgStr != null) {
			int p = imgStr.indexOf(",");
			String head = imgStr.substring(0, p);
			String datas = imgStr.substring(p + 1);
			System.out.println("FULL-Path:" + path + "\\" + newFileName + "." + ext);
			BASE64Decoder decoder = new BASE64Decoder();
			try {
				// 解密
				byte[] b = decoder.decodeBuffer(datas);
				// 处理数据
				for (int i = 0; i < b.length; ++i) {
					if (b[i] < 0) {
						b[i] += 256;
					}
				}
				OutputStream out1 = new FileOutputStream(path + "\\" + newFileName + "." + ext);
				out1.write(b);
				out1.flush();
				out1.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
