<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>폼값 전송하기</h2>
	<form action="FormResult.jsp" method="post">
	<fieldset style="border-radius: 5px;">
		이름 : <input type="text" name="name"><br>
		성별 : 
			<input type="radio" name="gender" value="남자" checked>남자 
			<input type="radio" name="gender" value="여자">여자<br>
		학력 : 
			<select name="grade">
				<option value="중졸">중졸</option>
				<option value="고졸">고졸</option>
				<option value="대졸">대졸</option>
			</select><br>
		관심 사항 :
			<input type="checkbox" name="hobby" value="정치">정치
			<input type="checkbox" name="hobby" value="경제">경제
			<input type="checkbox" name="hobby" value="연예">연예
			<input type="checkbox" name="hobby" value="운동">운동<br>
		<input type="submit" value="전송하기">
	</fieldset>
	</form>
</body>
</html>