package com.spring.common;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.util.CellReference;

//Cell 의 이름과 값을 가져오는java 파일
public class ExcelCellRef {

	/*
	 * Cell의 이름(A, B, C, ..)을 가져오는 메소드 
	 * 매개변수로 전달된 Cell 객체가 널이 아니면 : 해당 셀의 열 인덱스를 가져온다.
     * Cell 객체가 널인 경우 : 메소드에 전달된 cellIndex를 사용
     * 열 인덱스를 열 이름으로 변환하여 반환
	 */
	
	public static String getName(Cell cell, int cellIndex) {
		int celNum = 0;
		
		if(cell != null) {
			celNum = cell.getColumnIndex();
		}else {
			celNum = cellIndex;
		}
		
		return CellReference.convertNumToColString(celNum);
	}
	
    /*
	 * Cell의 값을 문자열 형태로 가져오는 메소드
	 * 매개변수로 전달된 Cell 객체가 널이면 : 빈 문자열 반환
     * Cell 객체가 널이 아니면 : 셀의 데이터 타입(cellType)에 따라 적절한 값 읽어서 문자열로 반환
	 */
	public static String getValue(Cell cell) {
		String value="";
		
		if(cell == null) {
			value = "";
			return value;		
		}
		
		switch(cell.getCellType()) {
			case FORMULA:
					return cell.getCellFormula();
					
			case NUMERIC:
				if(DateUtil.isCellDateFormatted(cell)) {
					Date date = cell.getDateCellValue();
					return new SimpleDateFormat("yyyy-MM-dd").format(date);
				} else {
					double d = cell.getNumericCellValue();
					if(d == (long)d) {
						return String.valueOf((long)d);
					}else {
						return String.valueOf(d);						
					}
				}
			
			case STRING:
				return cell.getStringCellValue();
				
			case BOOLEAN:
				return String.valueOf(cell.getBooleanCellValue());
				
			case ERROR:
				return String.valueOf(cell.getErrorCellValue());
				
			case BLANK:
				return "";
				
			default:
				return "";	
		}
	}
	
}
