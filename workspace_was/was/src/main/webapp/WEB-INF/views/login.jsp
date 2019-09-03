<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>    
<%
	String result =
				(String)request.getAttribute("result");
	if(result!=null){
		out.print(result);
		}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반환페이지</title>
</head>
<body>

</body>
</html>