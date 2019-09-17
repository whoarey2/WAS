<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 190917 -->
<%
//////////////////쿠키에 담기기 전에 일회용성 변수/////////////
	String emp_name = null;
	String emp_outtime = null;//아직 프로시저 완성을 기다리는 중. 
//////////////////쿠키에 담기기 전에 일회용성 변수/////////////
//////////////////쿠키에 담긴 걸 담을 변수//////////////////
	String c_emp_name = null;
	String c_outtime = null;
//////////////////쿠키에 담긴 걸 담을 변수//////////////////
//////////////////세션에 담긴 아디와 비번 담을 변수////////////
	String s_emp_no = null;
	String s_emp_pw = null;
//////////////////세션에 담긴 아디와 비번 담을 변수////////////
	if(request.getAttribute("emp_name")!=null){
		emp_name = (String)request.getAttribute("emp_name");
	}
	if(request.getCookies()!=null){
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			String name = cookies[i].getName();
				if("c_emp_name".equals(name)){
					c_emp_name = cookies[i].getValue();
				}else if("c_outtime".equals(name)){
					c_outtime = cookies[i].getValue();	
				}
		}		
	}
	if(session.getAttribute("s_emp_no")!=null && session.getAttribute("s_emp_pw")!=null){
		s_emp_no = session.getAttribute("s_emp_no").toString();
		s_emp_pw = session.getAttribute("s_emp_pw").toString();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function formSend(){
		$("#formLogin").submit();
	}
</script>
</head>
<body>
	  <form id="formLogin"action="/erp/empLogin.was" method="post">
	  <%
	  	if(s_emp_no!=null && s_emp_pw!=null){
	  %>
					<input type="hidden" value=<%= s_emp_no %> name="empno">
					<input type="hidden" value=<%= s_emp_pw %> name="emp_pw">
					<input type="hidden" value="1" name="gap">
	  <%
	  	}
	  %>
	  </form>
      <div class="row">
          <div>
              <a href="javascript:formSend()" width="300px"><img src="/erp/images/logo.png" style="width: 300px; max-width: 760px; vertical-align: middle"></a>   
           </div>
      </div>
       <div class="row">
          <div style="background-color:#383E49; width:300px; height:90px; color:#FFFFFF; text-align: center;">
             <p>반갑습니다, 사원<strong> 
             <%
             if(emp_name!=null){
            	 out.print(emp_name);
             }else if(c_emp_name!=null){
            	out.print(c_emp_name);             	 
             }
             %>
             </strong>님</p>
            <h6>최근 접속 시간은...<%if(c_outtime!=null)out.print(c_outtime); %></h6>
         </div>
   </div>
   <div class="row">
    <div style="background-color:#383E49; width:300px; height:900px; color:#FFFFFF">
       <ul class="nav flex-column">
            <div class="list-group" style="width:300px; background-color: #383E49">
            <button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#major" style="width:300px;text-align: center;font-size: large;">생산/품질관리</button>
               <div id="major" class="collapse">         
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">품목조회</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">재고등록</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">재고조회</a>
                  <a href="/erp/productList.was" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">생산품등록/조회</a>
                  <a href="registerCustomer.jsp" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">거래처등록/조회</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">배송처조회</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">배송처등록</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">근태조회</a>
               </div>
            <button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#major2" style="width:300px;text-align: center;font-size: large;">영업/매출관리</button>
               <div id="major2" class="collapse">
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">매출</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">급여</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">휴가</a>
               </div>
            <button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#major3" style="width:300px;text-align: center;font-size: large;">0000관리</button>
               <div id="major3" class="collapse">
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">ㅁㅁ</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">ㅂㅂ</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">ㄱㄱ</a>
               </div>
            </div>
         </ul> 
    </div>
     </div>
</body>
</html>