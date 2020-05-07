<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileForm</title>
</head>
<body>
	<!-- 
		servlets.com 사이트 들어가서 
		왼쪽 세번째 com.oreilly.servlet 클릭
		아래쪽 쭉 내려서 다운로드에 표에서 Version에 있는 cs-20.08.zip 파일 다운 
		압축 풀기
		폴더에 가서 cos-20.08/lib/cos.jar 파일을 WEB-INF/lib에 넣기
	-->
	
	<form action="fileFormOk.jsp" method="post" enctype="multipart/form-data">
		파일 : <input type="file" name="file"><br>
		<input type="text" name="test" value="연습중입니다"><br>
		<input type="submit" value="file upload">
	</form>
</body>
</html>