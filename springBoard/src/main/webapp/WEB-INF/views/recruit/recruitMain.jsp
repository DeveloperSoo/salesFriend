<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>recruitMain</title>
</head>
<body>
<div align="center" class="recruitMain" border="1px solid black" width="90%" height="90%"  >
	<table align="center" class="recruitMemberInfo" >
		<tr>
			<td>
<!-- 				개인정보 보여주는 테이블 -->
				<table border ="1">
					<input name="seq" type="hidden" id="seq" value="${recruit.seq }">
					<tr>
						<td width="100" align="center">
							이름
						</td>
						<td width="100">
							<input name="name" id="name" type="text" value="${recruit.name}" readonly/>
						</td>
						<td width="100" align="center">
							생년월일
						</td>
						<td width="100">
							<input name="birth" id="birth" type="text" />
						</td>
					</tr>
					<tr>
						<td align="center">
							성별
						</td>
						<td>
							<select name="field3" id="field3">
								<option value="male">남자</option>
								<option value="female">여잔</option>
							</select>
						</td>
						<td>
							연락처
						</td>
						<td>
							<input name="phone" id="phone" type="text" value="${recruit.phone }" readonly>
						</td>
					</tr>
					<tr>
						<td>
							email
						</td>
						<td>
							<input name="email" id="email" type="text" value="${recruit.email}">
						</td>
						<td>
							주소
						</td>
						<td>
							<input name="addr" id="addr" type="text" value="${recruit.addr }"/>
						</td>
					</tr>
					<tr>
						<td>
							희망근무지
						</td>
						<td>
							<select name="location" id="recruitLocation">
							    <option value="seoul" ${recruit.location == 'seoul' ? 'selected' : ''}>서울</option>
							    <option value="kyoungki" ${recruit.location == 'kyoungki' ? 'selected' : ''}>경기도</option>
							    <option value="kangwon" ${recruit.location == 'kangwon' ? 'selected' : ''}>강원도</option>
							    <option value="choongchung" ${recruit.location == 'choongchung' ? 'selected' : ''}>충청도</option>
							    <option value="jeonra" ${recruit.location == 'jeonra' ? 'selected' : ''}>전라도</option>
							    <option value="kyoungsang" ${recruit.location == 'kyoungsang' ? 'selected' : ''}>경상도</option>
							    <option value="jeju" ${recruit.location == 'jeju' ? 'selected' : ''}>제주도</option>
							</select>
						</td>				
						<td>
							근무형태
						</td>		
						<td>
							<select name="workType" id="workType">
							    <option value="full" ${recruit.workType == 'full' ? 'selected' : ''}>정규직</option>
							    <option value="contract" ${recruit.workType == 'contract' ? 'selected' : ''}>계약직</option>
							    <option value="partTime" ${recruit.workType == 'partTime' ? 'selected' : ''}>알바</option>
							</select>
						</td>
					</tr>
				</table>
				
	
<!-- 	학력 테이블 -->
	<h1>학력</h1>
		<div class="eduTable" width="1000px">
			<div style="text-align:right">
				<input type="button" name="eduInsert" id="eduInsert" value="추가">
				<input type="button" name="eduDelete" id="eduDelete" value="삭제">
			</div>
				<table border ="1" id="eduTableContent">
					<tr>
						<td>
						</td>
						<td width="20%" align="center">
							재학기간
						</td>
						<td width="10%">
							구분
						</td>
						<td width="20%" align="center">
							학교명(소재지)
						</td>
						<td width="10%">
							전공
						</td>
						<td>
							학점
						</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" name="eduCheck" id="eduCheck">
						</td>
						<td>
							<input type="text" name="startPeriod" id="startEduPeriod">
							~
							<input type="text" name="endPeriod" id="endEduPeriod">							
						</td>
						<td>
							<select name="division">
								<option value="inSchool">재학중</option>
								<option value="graduation">졸업</option>
								<option value="graduation">졸업예정</option>
							</select>
						</td>
						<td>
							<input type="text" name="schoolName" id="schoolName">
							<select name="schoolLocation">
								<option value="seoul">서울</option>
								<option value="kyoungki">경기</option>
								<option value="kangwondo">강원도</option>
								<option value="other">그외지역</option>
							</select>
						</td>
						<td>
							<input type="text" name="major" id="major">
						</td>
						<td>
							<input type="text" name="grade" id="grade">
						</td>
					</tr>
				</table>
			</div>
<!-- 	경력 테이블 -->
	<h1>경력</h1>
		<div class="careerTable" width="1000px">
			<div style="text-align:right">
				<input type="button" name="careerInsert" id="careerInsert" value="추가">
				<input type="button" name="careerDelete" id="careerDelete" value="삭제">
			</div>
				<table border ="1" id="careerTableContent">
					<tr>
						<td>
						</td>
						<td width="100" align="center">
							근무기간
						</td>
						<td width="100">
							회사명
						</td>
						<td width="100" align="center">
							부서/직급/직책
						</td>
						<td width="100">
							지역
						</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" name="careerCheck" id="careerCheck">
						</td>
						<td>
							<input type="text" name="startCareerPeriod" id="startCareerPeriod">
							~
							<input type="text" name="endCareerPeriod" id="endCareerPeriod">							
						</td>
						<td>
							<input type="text" name="compName" id="compName">
						</td>
						<td>
							<input type="text" name="task" id="task">
						</td>
						<td>
							<input type="text" name="location" id="careerLocation">
						</td>
					</tr>
				</table>				
			</div>
<!-- 	자격증 테이블 -->
	<h1>자격증</h1>
		<div class="certificateTable" width="1000px">
			<div style="text-align:right">
			<input type="button" name="certificateInsert" id="certificateInsert" value="추가">
			<input type="button" name="certificateDelete" id="certificateDelete" value="삭제">
			</div>
				<table border ="1" id="certificateTableContent">
					<tr>
						<td>
						</td>
						<td width="100" align="center">
							자격증명
						</td>
						<td width="100">
							취득일
						</td>
						<td width="100" align="center">
							발행처
						</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" name="certificateCheck" id="certificateCheck">
						</td>
						<td>
							<input type="text" name="certificateName" id="certificateName">
						</td>
						<td>
							<input type="text" name="acquDate" id="acquDate">						
						</td>
						<td>
							<input type="text" name="organizeName" id="organizeName">
						</td>
					</tr>
				</table>			
			</div>	
		</td>
	</tr>
<!-- 		저장 제출 버튼 -->
	</table>				
	<input type="submit" id="recruitSave" value="저장">
	<input type="submit" id="recruitSubmit" value="제출">		
</div>	


<script type="text/javascript">

	$j("#recruitSave").click(function() {
		
		if($j("#birth").val() == "") {
			alert("생일을 입력해주세요");
			$j("#birth").focus();
			return false;
		}else if($j("#field3").val() == "") {
			alert("성별을 입력해주세요");
			$j("#field3").focus();
		}else if($j("#phone").val() == ""){
			alert("전화번호를 입력해주세요");
			$j("#phone").focus();
		}else if($j("#email").val() == ""){
			alert("이메일은 입력해주세요");
			$j("#email").focus();
		}else if($j("#addr").val() == "") {
			alert("주소를 입력해주세요");
			$j("#addr").focus();
		}else if($j("#startEduPeriod").val() == "") {
			alert("학력은 필수 사항입니다");
			$j("#startEduPeriod").focus();
		}else if($j("#endEduPeriod").val() == "") {
			alert("학력은 필수 사항입니다.");
			$j("#endEduPeriond").focus();
		}else if($j("#schoolName").val() == "") {
			alert("학력은 필수 사항입니다.");
			$j("#schoolName").focus();
		}else if($j("#major").val() == "") {
			alert("학력은 필수 사항입니다.");
			$j("#major").focus();
		}else if($j("#grade").val() == "") {
			alert("학력은 필수 사항입니다.");
			$j("#grade").focus();
		}
	
		//학력 리스트
		let eduList = [];
		$j("#eduTableContent tr:gt(0)").each(function() {
			let row = $j(this);
			eduList.push({
				seq : $j("#seq").val(),
				startPeriod: row.find("input[name='startPeriod']").val(),	
				endPeriod: row.find("input[name='endPeriod']").val(),
				division: row.find("select[name='division']").val(),
				schoolName: row.find("input[name='schoolName']").val(),
				location: row.find("select[name='schoolLocation']").val(),
				major: row.find("input[name='major']").val(),
				grade: row.find("input[name='grade']").val()
			});			
		});
		
		let careerList = [];
		$j("#careerTableContent tr:gt(0)").each(function() {
			let row = $j(this);
			careerList.push({
				seq : $j("#seq").val(),
				startPeriod: row.find("input[name='startCareerPeriod']").val(),
				endPeriod: row.find("input[name='endCareerPeriod']").val(),
				compName: row.find("input[name='compName']").val(),
				task: row.find("input[name='task']").val(),
				location: row.find("input[name='careerLocation']").val()
			});
		});
		
		let certificateList = [];
		$j("#certificateTableContent tr:gt(0)").each(function() {
			let row = $j(this);
			certificateList.push({
				seq : $j("#seq").val(),
				qualifiName: row.find("input[name='certificateName']").val(),
				acquDate: row.find("input[name='acquDate']").val(),
				organizeName: row.find("input[name='organizeName']").val()
			});	
		});
	
		let recruit = {
				seq : $j("#seq").val(),
				name : $j("#name").val(),
				birth : $j("#birth").val(),
				field3 : $j("#field3").val(),
				phone : $j("#phone").val(),
				email : $j("#email").val(),
				addr : $j("#addr").val(),
				location : $j("#recruitLocation").val(),
				workType : $j("#workType").val(),
				educationList : eduList,
				careerList : careerList,
				certificateList : certificateList
		};
		
		$j.ajax({
			url: "/recruit/save.do",
			type: "POST",
			dataType: "json",
			contentType: "application/json",
			data: JSON.stringify(recruit),
			success: function(data, textStatus, jqXHR){
				alert("저장완료");
				location.href = "/recruit/login.do";
			},
			error: function (jqXHR, textStatus, errorThrow)
			{
				alert("저장실패");
			}	
		});	
	});

	
	$j(document).ready(function(){		
		
// 		자격증 추가
		$j("#certificateInsert").click(function(){
			let $lastRow = $j("#certificateTableContent tr:last").clone();
			$lastRow.find("input").val("");
			$lastRow.find("input[type='checkbox']").prop("checked", false);
			$j("#certificateTableContent").append($lastRow);
		});
		
// 		자격증 삭제
		$j("#certificateDelete").click(function(){
			let $checked = $j("#certificateTableContent input[type='checkbox']:checked");
			
			if($checked.length === 0){
				alert("삭제할 행을 선택해주세요");
				return;
			}
	
			let totalRows = $j("#certificateTableContent tr").length;		
			let dataRowCount = totalRows - 1;
			
			if($checked.length === dataRowCount){		
				alert("모든 행을 삭제할 수 없음.");
				return;
			}
			
			$checked.each(function() {
				$j(this).closest("tr").remove();
			});
		});		
		
		
// 		경력 추가
		$j("#careerInsert").click(function(){
			let $lastRow = $j("#careerTableContent tr:last").clone();
			$lastRow.find("input").val("");
			$lastRow.find("input[type='checkbox']").prop("checked", false);
			$j("#careerTableContent").append($lastRow);
		});
		
// 		경력 삭제
	$j("#careerDelete").click(function(){
		let $checked = $j("#careerTableContent input[type='checkbox']:checked");
		
		if($checked.length === 0){
			alert("삭제할 행을 선택해주세요");
			return;
		}

		let totalRows = $j("#careerTableContent tr").length;		
		let dataRowCount = totalRows - 1;
		if($checked.length === dataRowCount){		
			alert("모든 행을 삭제할 수 없음.");
			return;
		}
		
		$checked.each(function() {
			$j(this).closest("tr").remove();
		});
	});
		
		
		
		
		
// 		학력 추가
		$j("#eduInsert").click(function(){
			let $lastRow = $j("#eduTableContent tr:last").clone();
			$lastRow.find("input").val("");
			$lastRow.find("input[type='checkbox']").prop("checked", false);
			$j("#eduTableContent").append($lastRow);
		});
		
// 		학력 삭제
	$j("#eduDelete").click(function(){
		let $checked = $j("#eduTableContent input[type='checkbox']:checked");
		
		if($checked.length === 0){
			alert("삭제할 행을 선택해주세요");
			return;
		}

		let totalRows = $j("#eduTableContent tr").length;		
		let dataRowCount = totalRows - 1;
		if($checked.length === dataRowCount){		
			alert("모든 행을 삭제할 수 없음.");
			return;
		}
		
		$checked.each(function() {
			$j(this).closest("tr").remove();
		});
	});
});
	
	

</script>

	
</body>
</html>