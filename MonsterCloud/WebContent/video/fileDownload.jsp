
<%@ page import="file.FileDAO" %>
<%@ page import="file.FileDTO" %>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<%
/* 7번광좌중 삭제  
String directory="C:/jsp/upload";
String files[]=new File(directory).list();

for(String file : files){
	
	out.write("<a href=\""+request.getContextPath() +"/downloadAction?file="+
	URLEncoder.encode(file, "UTF-8")+"\">"+file+"<a><br>");
	
	
} */

ArrayList<FileDTO> fileList = new FileDAO().getlist();
for(FileDTO file : fileList){
	out.write("<a href=\""+request.getContextPath() +"/downloadAction?file="+
	java.net.URLEncoder.encode(file.getFileRealName(), "UTF-8")+"\">"+file.getFileName()+"(다운로드횟수:"+file.getDownloadCount()+")<a><br>");
	
	
}

%>
</body>
</html>