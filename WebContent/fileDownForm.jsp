<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileDownForm</title>
</head>
<body>
	<%
		String saveDir = application.getRealPath("fileUpDown");
		File dir = new File(saveDir);
		String fName[] = dir.list();
		for (String fileName : fName) {
			String en = URLEncoder.encode(fileName, "utf-8");
			// 한글파일 깨질 수 있기 때문
			out.write("<a href=http://localhost:8080" + request.getContextPath() + "/FileDown?fileName=" + en + ">"
					+ fileName + "</a><br>");
			// FileDown
		}
	%>
</body>
</html>