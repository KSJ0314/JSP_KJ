<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>파일 업로드</h3>
	<p style="color: red;">${errorMessage}</p>
	
	<form action="UploadProcess.jsp" name="fileForm" method="post" enctype="multipart/form-data">
		작성자 : <input type="text" name="name" value="장동건" required><br>
		제목 : <input type="text" name="title" required><br>
		카테고리(선택사항) : 
			<input type="checkbox" name="cate" value="사진" checked>사진
			<input type="checkbox" name="cate" value="과제">과제
			<input type="checkbox" name="cate" value="워드">워드
			<input type="checkbox" name="cate" value="음원">음원<br>
		첨부파일 : <input type="file" name="attachedFile"><br>
		<input type="submit" value="전송하기">
	</form>
</body>
</html>