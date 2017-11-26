package com.pxxy.xy.excel;

import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

public class fileOutExcel {
	
	public static void main(String[] args) throws Exception{
		HSSFWorkbook wb=new HSSFWorkbook();
		HSSFSheet sheet=wb.createSheet("工作薄1");
		HSSFRow row=sheet.createRow(0);
		HSSFCell cell=row.createCell(0);
		cell.setCellValue("名字");
		cell=row.createCell(1);
		cell.setCellValue("性别");
		cell=row.createCell(2);
		cell.setCellValue("联系方式");
		cell=row.createCell(3);
		cell.setCellValue("意向部门");
		cell=row.createCell(4);
		cell.setCellValue("寝室");
		cell=row.createCell(5);
		cell.setCellValue("QQ");
		
		//填写实体数据，实际上这些是从数据库中得到
		/*List list = fileOutExcel.getWork();
		
		for(int i=0;i<list.size();i++){
			row=sheet.createRow(i+1);
			work work=(work) list.get(i);
			//创建单元格并设置值
			row.createCell(0).setCellValue(work.getName());
			row.createCell(1).setCellValue(work.getSex());
			row.createCell(2).setCellValue(work.getPhone());
			row.createCell(3).setCellValue(work.getPart());
			row.createCell(4).setCellValue(work.getDepartment());
			row.createCell(5).setCellValue(work.getQQ());
			
			//将文件存入指定位置
			try {
				FileOutputStream fileOut=new FileOutputStream("d:/工作薄1.xls");
				wb.write(fileOut);
				fileOut.close();
			} catch (Exception e) {  
			        e.printStackTrace();  
			}  

		}*/
	}
}
