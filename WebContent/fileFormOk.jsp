<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileFormOk</title>
</head>
<body>
	<%
		// fileUpDown의 실제 경로를 받는다.
		String path = application.getRealPath("fileUpDown");
		out.print("fileFolder path: " + path);
		int size = 1024 * 1024 * 10; //10M
		String file = "";
		String oriFile = "";
		
		MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());
													// 받은 값, 경로, 크기(용량), 한글, 자동으로 넘버링 해주는 객체
		file = multi.getFilesystemName("file");
		oriFile = multi.getOriginalFileName("file");
		out.print("<br>DefaultFileRenamePolicy() : 동일한 이름의 파일이 존재 한다면 1,2,3을 넣어주겠다" );
		out.print("<br>file(저장될 파일 이름) : " + file);
		out.print("<br>oriFile(실제 파일 이름) : " + oriFile);
	%>
	<!--
		<br>test : <%--=request.getParameter("test") --%><br>
		fileForm.jsp 에서 multipart로 보냈기 때문에  request로 받으면 null값이 나온다.
		multipartRequest로 받아서 multi로 값을 출력해야한다.
	-->
	<br>test : <%=multi.getParameter("test") %><br>
</body>
</html>