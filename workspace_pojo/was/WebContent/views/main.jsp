<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>    
<%
	List<Map<String,Object>> rList =
				(List<Map<String,Object>>)request.getAttribute("rList");
	Map<String,Object> rMap =null;
	if(rList!=null){
		out.print("getAttribute 값 있음. <br>");
		rMap = rList.get(0);
	}
	if(rMap!=null){
		Object[] keys = rMap.keySet().toArray();
		for(int i=0;i<keys.length;i++){
		out.print(rMap.get(keys[i])+"<br>");
		}
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