package com.spring.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

public class ExcelRead {

	public static List<Map<String, String>> read (ExcelReadOption excelReadOption) {
		
		//WorkBook : Apache POI 라이브러리에서 Excel 파일 전체를 나타내는 객체임
		// 해당 경로에 해당하는 Excel 파일을 로드해서 WorkBook 객체 생성함
		
		Workbook wb = ExcelFileType.getWorkbook(excelReadOption.getFilePath());
	
		System.out.println("Sheet 이름 : " + wb.getSheetName(0));
		System.out.println("데이터가 있는 Sheet의 수 : " + wb.getNumberOfSheets());
		
		int sheetNum = wb.getNumberOfSheets();
		
		//Sheet내의 행, 접근법 : sheet.getRow(rowIndex)
		Row row = null;
		//Sheet 내의 셀. 접근법 : row.getCell(cellIndex)
		Cell cell = null;
		//해당셀의 헤더(컬럼명)
		String cellName="";
		
		int numOfCells = 0;
		//추출된 데이터 저장하는 Map객체
		Map<String, String> paramMap = null;
		List<Map<String,String>> result = new ArrayList<Map<String,String>>();
		
		
		for(int sheetIndex = 0; sheetIndex < wb.getNumberOfSheets(); sheetIndex++) {
			
			//해당 sheetIndex에 해당하는 특정 개별시트 가져옴
			Sheet sheet = wb.getSheetAt(sheetIndex);
			
			// 각 Row만큼 반복한다.
				for(int rowIndex = excelReadOption.getStartRow() - 1; 
						rowIndex < sheet.getLastRowNum() + 1; 
						rowIndex++) 
					{
						row = sheet.getRow(rowIndex);
						Row HeaderRow = sheet.getRow(0);
						if(row!=null) {
							numOfCells = row.getLastCellNum();
							paramMap = new HashMap<String, String>(); //데이터 담을 맵 객체 초기화
							
							for(int cellIndex = 0; cellIndex < numOfCells; cellIndex++) {
								
								// Row에서 CellIndex에 해당하는 Cell을 가져옴
								cell = row.getCell(cellIndex);
								
								// 현재 cell의 header 이름 가져옴
								cellName = ExcelCellRef.getValue(HeaderRow.getCell(cellIndex));
								
								// 추출대상 칼럼인지 확인, 추출대상 아니면 for로 다시 올라감
								if(!excelReadOption.getOutputColumns().contains(cellName)) {
									
									continue;
								}//  if 문의 끝
								paramMap.put(cellName, ExcelCellRef.getValue(cell));
							}// if문의 긑
							result.add(paramMap);
						} // if문의 끝
					}
		}//for문 끝부분
		return result;
	}
}
