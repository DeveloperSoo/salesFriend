<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>list</title>
</head>
<script type="text/javascript">

// 	$j.(document).ready(function(){
	
// 	 	$j("#submit").on("click", function(){
// 	// 		var $frm = $j('.recruitLogin : input');
// 			var param = $j('.recruitLogin').serialize();
// 		$j.ajax({
// 			url : "/recruit/main.do",
// 			dataType : "json",
// 			type : "POST",
// 			data : param,
// 			success : function(data, textStatus, jqXHR)
// 			{
// 				location.href = "/recruit/main.do";
// 			},
// 			error: function(jqXHR, textStatus, errorThrown)
// 			{
// 				alert("정보가 이상합니다.");
// 			}
// 		});			
// 	});
// ; 
	
</script>
<body>
	<table  align="center">
		<tr>
			<td>
			<form class="recruitLogin" action="/recruit/main.do" method = "POST">
				<table border ="1">
					<tr>
						<td width="100" align="center">
						이름
						</td>
						<td width="100">
						<input name="name" type="text"/>
						</td>
					</tr>
					<tr>
						<td align="center">
						휴대폰 번호
						</td>
						<td>
						<input  name="phone" type="text"/>
						</td>
					</tr>
					<tr>
						<td width="100" align="center" colspan='2'>
						<input id="submit" type="submit" value="입사지원"/>
						</td>
					</tr>
				</table>
			</form>
		</td>
	</tr>
</table>
</body>
</html>