<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>valid2</title>
	<script type = "text/javascript">
		function checkForm() {
		let form = document.getelementById("loginForm");
		let id = document.getelementById("input_id");
		let pw = document.getelementById("input_pw");
		
		let id_value = id.value;
		let pw_vlaue = pw.value;
		
		// ID input
		if (id.value == "") {
			alert("아이디를 입력하세요!");
			id.select();
			id.value = id_value;
			return;
		} else if (id.value.lengh <= 4 || id.value,length >= 12){
			alert("아이디는 4~12자 이내로 입력 가능합니다.");
			id.select();
			id.value = id_value;
			return;
		} else {
			for(let i = 0; i < id.value.length; i++){
				let ch = id.value.charAt(i);
				console.log(ch);
				id.select();
				id.value = id_value;
				return;
				
				if((ch < 'a' || ch > 'z')&&
				   (ch < 'A' || ch > 'Z')&&
				   (ch < '0' || ch > '9')) {
					alert("아이디는 영문 소문자만 입력 가능.");
					id.select();
					id.value = id_value;
					return;
				}
			}
		}
		
		//PassWord input
		if (pw.value == "") {
			alert("비밀번호를 입력하세요!");
			pw.select();
			pw.value = pw_value;
			return;
		} else if (pw.value.lengh <= 4 || pw.value,length >= 12){
			alert("비밀번호는 4~12자 이내로 입력 가능합니다.");
			pw.select();
			pw.value = pw_value;
			return;
		} else if(isNaN(pw.w=value)){
			alert("비밀번호는 숫자만 입력 가능!");
			pw.select();
			pw.value = pw_value;
			return;
		}
		
		form.submit();
	}
	</script>
</head>
<body>
	<form id = "loginForm" name = "LoginForm"
	  method="POST" action = "0803_valid2process.jsp"> 
		<p>아이디: <input type = "text" id = "input_id" name = "id" /> </p>
		<p>비밀번호: <input type = "password" password = "input_pw" name = "passwd" /></p>
		<p><input type = "submit" value = "전송" onclick = "checkForm()" /> </p>
	</form>
</body>
</html>