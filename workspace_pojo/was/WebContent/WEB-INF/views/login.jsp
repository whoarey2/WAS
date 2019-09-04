<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>    
<%
	List<Map<String,Object>> rList =
				(List<Map<String,Object>>)request.getAttribute("rList");
	Map<String,Object> rMap =null;
	if(rList!=null){
		rMap = rList.get(0);
	}
	if(rMap!=null){
		Object[] keys = rMap.keySet().toArray();
		for(int i=0;i<keys.length;i++){
		out.print(rMap.get(keys[i]));
		}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>