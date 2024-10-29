<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Validation 1</title>
	<script type = "text/javascript">
		// 변수 선언할 때 키워드 세가지 종료 있다
		//var 변수 이름; -> 오래된 예약어 (주의해야됨)
		//let 변수 이름; -> ECMASript 5부터 기본 예약어
		//const 변수 이름; -> 상수 (변경하지 않은 것)
		String id = document.loginForm.id.value;
		String pw = document.loginForm.passwd.value;
		
		let id1 = document.loginForm.id.value;
		let pw2 = document.loginForm.passwd.value;
		
		console.log("Document, document")
		
		let id = document.getElementById("input_id");
		let pw = document.getElementById("input_pw");
		
		console.log("ID", id);
		
		function checkForm() {
			alert("아이디: " + id.value + "\n비밀번호: " + pw.value);
		}
	
	</script>
</head>
<body>
	<form id = "loginForm" name = "LoginForm">
		<p>아이디: <input type = "text" id = "input_id" name = "id" /> </p>
		<p>비밀번호: <input type = "password" password = "input_pw" name = "passwd" /></p>
		<p><input type = "submit" value = "전송" onclick = "checkForm()" /> </p>
	</form>
</body>
</html>