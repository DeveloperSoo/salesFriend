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
<!-- 				�������� �����ִ� ���̺� -->
				<table border ="1">
					<input name="seq" type="hidden" id="seq" value="${recruit.seq }">
					<tr>
						<td width="100" align="center">
							�̸�
						</td>
						<td width="100">
							<input name="name" id="name" type="text" value="${recruit.name}" readonly/>
						</td>
						<td width="100" align="center">
							�������
						</td>
						<td width="100">
							<input name="birth" id="birth" type="text" />
						</td>
					</tr>
					<tr>
						<td align="center">
							����
						</td>
						<td>
							<select name="field3" id="field3">
								<option value="male">����</option>
								<option value="female">����</option>
							</select>
						</td>
						<td>
							����ó
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
							�ּ�
						</td>
						<td>
							<input name="addr" id="addr" type="text" value="${recruit.addr }"/>
						</td>
					</tr>
					<tr>
						<td>
							����ٹ���
						</td>
						<td>
							<select name="location" id="recruitLocation">
							    <option value="seoul" ${recruit.location == 'seoul' ? 'selected' : ''}>����</option>
							    <option value="kyoungki" ${recruit.location == 'kyoungki' ? 'selected' : ''}>��⵵</option>
							    <option value="kangwon" ${recruit.location == 'kangwon' ? 'selected' : ''}>������</option>
							    <option value="choongchung" ${recruit.location == 'choongchung' ? 'selected' : ''}>��û��</option>
							    <option value="jeonra" ${recruit.location == 'jeonra' ? 'selected' : ''}>����</option>
							    <option value="kyoungsang" ${recruit.location == 'kyoungsang' ? 'selected' : ''}>���</option>
							    <option value="jeju" ${recruit.location == 'jeju' ? 'selected' : ''}>���ֵ�</option>
							</select>
						</td>				
						<td>
							�ٹ�����
						</td>		
						<td>
							<select name="workType" id="workType">
							    <option value="full" ${recruit.workType == 'full' ? 'selected' : ''}>������</option>
							    <option value="contract" ${recruit.workType == 'contract' ? 'selected' : ''}>�����</option>
							    <option value="partTime" ${recruit.workType == 'partTime' ? 'selected' : ''}>�˹�</option>
							</select>
						</td>
					</tr>
				</table>
				
	
<!-- 	�з� ���̺� -->
	<h1>�з�</h1>
		<div class="eduTable" width="1000px">
			<div style="text-align:right">
				<input type="button" name="eduInsert" id="eduInsert" value="�߰�">
				<input type="button" name="eduDelete" id="eduDelete" value="����">
			</div>
				<table border ="1" id="eduTableContent">
					<tr>
						<td>
						</td>
						<td width="20%" align="center">
							���бⰣ
						</td>
						<td width="10%">
							����
						</td>
						<td width="20%" align="center">
							�б���(������)
						</td>
						<td width="10%">
							����
						</td>
						<td>
							����
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
								<option value="inSchool">������</option>
								<option value="graduation">����</option>
								<option value="graduation">��������</option>
							</select>
						</td>
						<td>
							<input type="text" name="schoolName" id="schoolName">
							<select name="schoolLocation">
								<option value="seoul">����</option>
								<option value="kyoungki">���</option>
								<option value="kangwondo">������</option>
								<option value="other">�׿�����</option>
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
<!-- 	��� ���̺� -->
	<h1>���</h1>
		<div class="careerTable" width="1000px">
			<div style="text-align:right">
				<input type="button" name="careerInsert" id="careerInsert" value="�߰�">
				<input type="button" name="careerDelete" id="careerDelete" value="����">
			</div>
				<table border ="1" id="careerTableContent">
					<tr>
						<td>
						</td>
						<td width="100" align="center">
							�ٹ��Ⱓ
						</td>
						<td width="100">
							ȸ���
						</td>
						<td width="100" align="center">
							�μ�/����/��å
						</td>
						<td width="100">
							����
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
<!-- 	�ڰ��� ���̺� -->
	<h1>�ڰ���</h1>
		<div class="certificateTable" width="1000px">
			<div style="text-align:right">
			<input type="button" name="certificateInsert" id="certificateInsert" value="�߰�">
			<input type="button" name="certificateDelete" id="certificateDelete" value="����">
			</div>
				<table border ="1" id="certificateTableContent">
					<tr>
						<td>
						</td>
						<td width="100" align="center">
							�ڰ�����
						</td>
						<td width="100">
							�����
						</td>
						<td width="100" align="center">
							����ó
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
<!-- 		���� ���� ��ư -->
	</table>				
	<input type="submit" id="recruitSave" value="����">
	<input type="submit" id="recruitSubmit" value="����">		
</div>	


<script type="text/javascript">

	$j("#recruitSave").click(function() {
		
		if($j("#birth").val() == "") {
			alert("������ �Է����ּ���");
			$j("#birth").focus();
			return false;
		}else if($j("#field3").val() == "") {
			alert("������ �Է����ּ���");
			$j("#field3").focus();
		}else if($j("#phone").val() == ""){
			alert("��ȭ��ȣ�� �Է����ּ���");
			$j("#phone").focus();
		}else if($j("#email").val() == ""){
			alert("�̸����� �Է����ּ���");
			$j("#email").focus();
		}else if($j("#addr").val() == "") {
			alert("�ּҸ� �Է����ּ���");
			$j("#addr").focus();
		}else if($j("#startEduPeriod").val() == "") {
			alert("�з��� �ʼ� �����Դϴ�");
			$j("#startEduPeriod").focus();
		}else if($j("#endEduPeriod").val() == "") {
			alert("�з��� �ʼ� �����Դϴ�.");
			$j("#endEduPeriond").focus();
		}else if($j("#schoolName").val() == "") {
			alert("�з��� �ʼ� �����Դϴ�.");
			$j("#schoolName").focus();
		}else if($j("#major").val() == "") {
			alert("�з��� �ʼ� �����Դϴ�.");
			$j("#major").focus();
		}else if($j("#grade").val() == "") {
			alert("�з��� �ʼ� �����Դϴ�.");
			$j("#grade").focus();
		}
	
		//�з� ����Ʈ
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
				alert("����Ϸ�");
				location.href = "/recruit/login.do";
			},
			error: function (jqXHR, textStatus, errorThrow)
			{
				alert("�������");
			}	
		});	
	});

	
	$j(document).ready(function(){		
		
// 		�ڰ��� �߰�
		$j("#certificateInsert").click(function(){
			let $lastRow = $j("#certificateTableContent tr:last").clone();
			$lastRow.find("input").val("");
			$lastRow.find("input[type='checkbox']").prop("checked", false);
			$j("#certificateTableContent").append($lastRow);
		});
		
// 		�ڰ��� ����
		$j("#certificateDelete").click(function(){
			let $checked = $j("#certificateTableContent input[type='checkbox']:checked");
			
			if($checked.length === 0){
				alert("������ ���� �������ּ���");
				return;
			}
	
			let totalRows = $j("#certificateTableContent tr").length;		
			let dataRowCount = totalRows - 1;
			
			if($checked.length === dataRowCount){		
				alert("��� ���� ������ �� ����.");
				return;
			}
			
			$checked.each(function() {
				$j(this).closest("tr").remove();
			});
		});		
		
		
// 		��� �߰�
		$j("#careerInsert").click(function(){
			let $lastRow = $j("#careerTableContent tr:last").clone();
			$lastRow.find("input").val("");
			$lastRow.find("input[type='checkbox']").prop("checked", false);
			$j("#careerTableContent").append($lastRow);
		});
		
// 		��� ����
	$j("#careerDelete").click(function(){
		let $checked = $j("#careerTableContent input[type='checkbox']:checked");
		
		if($checked.length === 0){
			alert("������ ���� �������ּ���");
			return;
		}

		let totalRows = $j("#careerTableContent tr").length;		
		let dataRowCount = totalRows - 1;
		if($checked.length === dataRowCount){		
			alert("��� ���� ������ �� ����.");
			return;
		}
		
		$checked.each(function() {
			$j(this).closest("tr").remove();
		});
	});
		
		
		
		
		
// 		�з� �߰�
		$j("#eduInsert").click(function(){
			let $lastRow = $j("#eduTableContent tr:last").clone();
			$lastRow.find("input").val("");
			$lastRow.find("input[type='checkbox']").prop("checked", false);
			$j("#eduTableContent").append($lastRow);
		});
		
// 		�з� ����
	$j("#eduDelete").click(function(){
		let $checked = $j("#eduTableContent input[type='checkbox']:checked");
		
		if($checked.length === 0){
			alert("������ ���� �������ּ���");
			return;
		}

		let totalRows = $j("#eduTableContent tr").length;		
		let dataRowCount = totalRows - 1;
		if($checked.length === dataRowCount){		
			alert("��� ���� ������ �� ����.");
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