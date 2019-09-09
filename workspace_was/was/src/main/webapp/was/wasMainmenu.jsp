<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html;">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
   .col-sm-3{
   }
</style>
</head>
<body>
<div class="row">
   <div class="col-sm-3">
      <div class="row">
          <div>
              <a href="index.jsp" width="300px"><img src="/sample/images/logo.png" style="width: 300px; max-width: 760px; vertical-align: middle"></a>   
           </div>
      </div>
       <div class="row">
          <div style="background-color:#383E49; width:300px; height:90px; color:#FFFFFF; text-align: center;">
             <p>반갑습니다, 사원<strong> 박막례</strong>님</p>
            <h6>최근 접속 시간은...</h6>
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
                  <a href="productsAdd.jsp" class="list-group-item list-group-item-action" style="background-color: #434a57; color:#FFFFFF;text-align: center">생산품등록</a>
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
  </div>
   <div class="col-sm-9">
   <div class="row" style="height: 100px;"></div>
         <%@ include file="/common/chart.jsp" %>
      <div class="row">
         <!-- 공지사항 -->
      <div id="notice" style="width: 700px;height: 500px;margin-top: 50px;">
          <h2>사내 공지사항</h2>
           <p>The .table-striped class adds zebra-stripes to a table:</p>            
           <table class="table table-striped">
             <thead>
                  <tr>
                 <th>번호</th>
                 <th>제목</th>
                 <th>작성자</th>
                 <th>작성일</th>
                 <th>조회수</th>
                  </tr>
             </thead>
             <tbody>
                  <tr>
                    <td>3</td>
                    <td>2019년도 직원 건강검진 안내</td>
                    <td>김시성</td>
                    <td>2019-08-30</td>
                    <td>3</td>
                  </tr>
                     <tr>
                    <td>2</td>
                    <td>9월 사내행사 일정 안내</td>
                    <td>김희원</td>
                    <td>2019-08-29</td>
                    <td>7</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>임직원 영어교육비 지원안내</td>
                    <td>유종남</td>
                    <td>2019-08-23</td>
                    <td>12</td>
                  </tr>
             </tbody>
         </table>
      </div>
      </div>
   </div>
   </div>
</body>
</html>