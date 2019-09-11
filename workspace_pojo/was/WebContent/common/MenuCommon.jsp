<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

      <div class="row">
          <div>
              <a href="index.jsp" width="320px"><img src="/erp/images/logo.png" style="width: 320px; max-width: 760px; vertical-align: middle"></a>   
           </div>
      </div>
       <div class="row">
          <div style="background-color:#383E49; width:320px; height:90px; color:#FFFFFF; text-align: center;">
             <p>반갑습니다, 사원<strong> <%= msg %></strong>님</p>
            <h6>최근 접속 시간은...</h6>
         </div>
   </div>
   <div class="row">
    <div style="background-color:#383E49; width:320px; height:900px; color:#FFFFFF">
       <ul class="nav flex-column">
            <div class="list-group" style="width:320px; background-color: #383E49">
            <button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#major" style="width:320px;text-align: center;font-size: large;">생산/품질관리</button>
               <div id="major" class="collapse">         
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">품목조회</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">재고등록</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">재고조회</a>
                  <a href="productsAdd.jsp" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">생산품등록</a>
                  <a href="registerCustomer.jsp" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">거래처등록/조회</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">배송처조회</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">배송처등록</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">근태조회</a>
               </div>
            <button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#major2" style="width:320px;text-align: center;font-size: large;">영업/매출관리</button>
               <div id="major2" class="collapse">
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">매출</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">급여</a>
                  <a href="#" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">휴가</a>
               </div>
            <button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#major3" style="width:320px;text-align: center;font-size: large;">0000관리</button>
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