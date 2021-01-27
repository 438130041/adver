package com.lx.practice.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.DecimalFormat;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;


public class PoiInSql {
	/*
	 * 需要的jar包
		poi-ooxml-3.8.jar
		poi-ooxml-schemas-3.8.jar
		poi-scratchpad-3.8.jar
		dom4j-1.6.1.jar
		xmlbeans-2.3.0.jar
	 * 1-
	 * 2-
	 * 3-
	 */
	/*
	 * 根据不通类型获取单元格的值
	 */
	public static  Object getCellValue(Cell cell){
	    Object value = null;
	    DecimalFormat df = new DecimalFormat("0"); //格式化number String字符
	    DecimalFormat df2 = new DecimalFormat("0.00"); //格式化数字
	    switch (cell.getCellType()) {//获取单元格类型
	        case Cell.CELL_TYPE_STRING:
	            value = cell.getRichStringCellValue().getString();
	            break;
	        case Cell.CELL_TYPE_NUMERIC:
	            if("General".equals(cell.getCellStyle().getDataFormatString())) {
	                value = df.format(cell.getNumericCellValue());
	            } else {
	                value = df2.format(cell.getNumericCellValue());
	            }
	            break;
	        case Cell.CELL_TYPE_BOOLEAN:
	            value = cell.getBooleanCellValue();
	            break;
	        case Cell.CELL_TYPE_BLANK:
	            value = "";
	            break;
	        default:
	            break;
	    }
	    return value;
	}
	public static void getExcel(String filePath){
		//1-获取Excel文件所在路径
		//2-创建文件输入流
		try {
			FileInputStream fis = new FileInputStream(filePath);
			//3-创建Workbook对象
			//根据后缀名调不通方法
            Workbook workbook = null;
			if (filePath.endsWith(".xlsx")) {
				 workbook = new XSSFWorkbook(fis);//poi-ooxml-3.8.jar
            } else if (filePath.endsWith(".xls") || filePath.endsWith(".et")) {
            	 workbook = new HSSFWorkbook(fis); //poi的jar
            }
			fis.close();
			/* 读EXCEL文字内容 */
			Sheet sheet = null;
			for (int i = 0; i < workbook.getNumberOfSheets(); i++) {// 获取所以的sheet数量
				 // 获取第一个sheet表，也可使用sheet表名获取
	            sheet = workbook.getSheetAt(i);
	            System.out.println("获取sheet的名称:" + workbook.getSheetName(i) );
	            for (int j = 0; j < sheet.getLastRowNum() + 1; j++) {// 获取当前sheet的行数 ,getLastRowNum默认从第0行开始
	                Row row = sheet.getRow(j);//获取每一行的数据
	                if(row!=null){
	                	System.out.println("当前第"+j+"行");
	                	short lastCellNum = row.getLastCellNum();
	                	System.out.println("当前单元格共"+lastCellNum+"个");
	                	for (int k = 0; k < row.getLastCellNum(); k++) {
	                		Cell cell = row.getCell(k);
	                		Object cellValue = getCellValue(cell);
	                		System.out.print(cellValue+ " ");
						}
	                }
	                System.out.println();
	            }
	        }
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		String filePath="D:/Excel/poiInSql.csv";
		PoiInSql poiInSql = new PoiInSql();
		poiInSql.getExcel(filePath);
	}
}
