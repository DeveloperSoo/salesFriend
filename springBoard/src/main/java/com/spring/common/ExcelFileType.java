package com.spring.common;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

//Excel 파일 읽어서 확장자 비교하는 클래스

//엑셀 파일 읽어서 Workbook 객체에 리턴
//.xls , .xlsx 확장자 비교
public class ExcelFileType {

	public static Workbook getWorkbook(String filePath) {
		FileInputStream fis = null;
		
		try {
			fis = new FileInputStream(filePath);
			
		} catch (FileNotFoundException e) {
			throw new RuntimeException(e.getMessage(), e);
		}
		
		
		Workbook wb = null;
		if(filePath.toUpperCase().endsWith(".XLS")) {
			try {
				wb = new HSSFWorkbook (fis);
			} catch (IOException e) {
				throw new RuntimeException(e.getMessage(), e);
			}
		}else if(filePath.toUpperCase().endsWith(".XLSX")) {
			try {
				wb = new XSSFWorkbook(fis);
			} catch (IOException e) {
				throw new RuntimeException(e.getMessage(), e);
			}
		}
		
		if(fis!=null) {
			try {
				fis.close();
			} catch (IOException e) {
				System.out.println("예외 상황 발생");
			}
		}
	return wb;	
	}	
}
