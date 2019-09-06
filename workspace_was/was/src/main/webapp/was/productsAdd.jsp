<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html;">
<%@ include file="/common/bootStrap4.jsp" %>
<title>Insert title here</title>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

td {
	text-align: center;
	padding: 8px;
	width:300px;
} 

tr:nth-child(even) {
	background-color: #f2f2f2;
}

th {
	background-color: #343a40;
	color: white;
}
body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}
input[type="submit"]{
	font-family: FontAwesome;
	
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 20%;
  background: #f1f1f1;
  
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #383E49;
  color: white;
  font-size: 17px;
  border: solid;
 /*  border: 1px solid grey; */
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
#proc_add{
	width:150px;
	height:35px;
}
</style>
</head>
<body>
<div class="row">
	<div class="col-sm-3">
		<div class="row">
			 <div>
       		 <a href="index.jsp" width="300px"><img src="/erp/images/logo.png" style="width: 300px; max-width: 760px; vertical-align: middle"></a>   
    		 </div>
		</div>
		 <div class="row">
    		<div style="background-color:#383E49; width:300px; height:90px; color:#FFFFFF; text-align: center;">
      	    <p>반갑습니다, 사원<strong> 박막례</strong>님</p>
            <h6>최근 접속 시간은...</h6>
         </div>
	</div>
	<div class="row">
    <div style="background-color:#383E49; width:300px; height:700px; color:#FFFFFF">
       <ul class="nav flex-column">
            <div class="list-group" style="width:300px; background-color: #383E49">
            <button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#major" style="width:300px;text-align: center;font-size: x-large;">생산/품질관리</button>
               <div id="major" class="collapse">         
                  <a href="#" class="list-group-item list-group-item-action">품목조회</a>
                  <a href="#" class="list-group-item list-group-item-action">재고등록</a>
                  <a href="#" class="list-group-item list-group-item-action">재고조회</a>
                  <a href="productsAdd.jsp" class="list-group-item list-group-item-action">생산품등록</a>
                  <a href="registerCustomer.jsp" class="list-group-item list-group-item-action">거래처등록/조회</a>
                  <a href="#" class="list-group-item list-group-item-action">배송처조회</a>
                  <a href="#" class="list-group-item list-group-item-action">배송처등록</a>
                  <a href="#" class="list-group-item list-group-item-action">근태조회</a>
               </div>
            <button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#major2" style="width:300px;text-align: center;font-size: x-large;">영업/매출관리</button>
               <div id="major2" class="collapse">
                  <a href="#" class="list-group-item list-group-item-action">매출</a>
                  <a href="#" class="list-group-item list-group-item-action">급여</a>
                  <a href="#" class="list-group-item list-group-item-action">휴가</a>
               </div>
            <button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#major3" style="width:300px;text-align: center;font-size: x-large;">0000관리</button>
               <div id="major3" class="collapse">
                  <a href="#" class="list-group-item list-group-item-action">ㅁㅁ</a>
                  <a href="#" class="list-group-item list-group-item-action">ㅂㅂ</a>
                  <a href="#" class="list-group-item list-group-item-action">ㄱㄱ</a>
               </div>
            </div>
         </ul> 
    </div>
  	</div>
  </div>
  <div class="col-sm-9">
  <!-- ========================================생산품 조회 영역================================= -->
  <div class="row">
  	<h2>생산품 입고 등록 조회 </h2>
  	<table class="proc_add">  		
  			<td>지시일자</td>
  			<td id="proc_add" style="width:200px; height:35px;">품목<form class="example" action="/pro_search.jsp" id="proc_add">
	  				<input type="text" class="search">
	  				<button type="submit"><i class="fa fa-search" value="\f128;"></i></button>
				   </form> 		
			</td>
  			<td>입고일</td>
  			<td>공정</td>		
  	</table>
  </div>
  <!-- =======================================생산품 조회 영역 끝================================= -->
  <!-- =======================================생산품 등록 영역 ================================= -->
  <div class="row">
  	<div class="col-sm-6">
		<table>
			<tr>
				<th></th>
				<th>
				<div>
				</div>
				</th>
				<th>지시일자</th>
				<th>지시번호</th>
				<th>품목코드</th>
				<th>품명</th>
			</tr>
			<tr>
				<td></td>
				<td>
				</td>
				<td>2019-09-03</td>
				<td>QRS20190903</td>
				<td>1001</td>
				<td>품명은 뭘로?</td>
			</tr>
			<tr>
				<td></td>
				<td>
				</td>
				<td>2019-09-04</td>
				<td>QRS20190904</td>
				<td>1002</td>
				<td>품명은 뭘로?</td>
			</tr>
			<tr>
				<td></td>
				<td>
				</td>
				<td>2019-09-05</td>
				<td>QRS20190905</td>
				<td>1003</td>
				<td>품명은 뭘로?</td>
			</tr>
			<tr>
				<td></td>
				<td>
				</td>
				<td>2019-09-06</td>
				<td>QRS20190906</td>
				<td>1004</td>
				<td>품명은 뭘로?</td>
			</tr>
		</table>
  	</div>
  <!-- =======================================생산품 등록 영역 끝================================= -->
  <!-- =======================================생산품 상세보기/등록 영역================================= -->
  	<div class="col-sm-6">
  		<table class="table" style="width:100%; height:180px;">
		  <tr>
			<th colspan="2" style="background-color: black;color: aliceblue; text-align:center;">거래처 등록</th>  	
		  </tr>
		  <tr>
		    <td style="width:100%;">입고일자</td>
		    <td><input type="cli_code" class="form-control" id="cli_code" name="cli_code" style="width:120px; height:35px;"></td>
		  </tr>
		  <tr>
		    <td style="width:200px;">작업지시</td>
		    <td><input type="client" class="form-control" id="client" name="client" style="width:250px; height:35px;"></td>
		  </tr>
		  <tr>
		    <td style="width:200px;">품목코드</td>
		    <td> <input class="form-control" id="com_num" name="com_num" style="width:120px; height:35px;"></td>
		  </tr>
		  <tr>
		    <td style="width:200px;">품명</td>
		    <td><input type="ceo_name" class="form-control" id="ceo_name" name="ceo_name" style="width:120px; height:35px;"></td>
		  </tr>
		  <tr>
		    <td style="width:200px;">지시순번</td>
		    <td><input type="uptae" class="form-control" id="uptae" name="uptae" style="width:100px; height:35px;"></td>
		  </tr>
		  <tr>
		    <td style="width:200px;">수량</td>
		    <td>
		    <input type="zipcode" class="form-control" id="zipcode" name="zipcode" style="width:100px; height:35px;">
		   	<td><button type="button" id="search"/></td>
		    </td>
		  </tr>
		  <tr>
		    <td style="width:200px;">LOT</td>
		    <td>
		    <input type="com_address" class="form-control" id="com_address" name="com_address" style="width:300px; height:35px;">
		    <input type="com_address2" class="form-control" id="com_address2" name="com_address2" style="width:300px; height:35px;">
		    </td>
		    <td></td>
		  </tr>
		  <tr>
		    <td style="width:200px;">입고수량</td>
		    <td><input type="call" class="form-control" id="call" name="call" style="width:200px; height:35px;"></td>
		  </tr>
		  <tr>
		    <td style="width:200px;">입고창고?필요해?</td>
		    <td><input type="charge" class="form-control" id="charge" name="charge" style="width:120px; height:35px;"></td>
		  </tr>
		    <td></td>
		    <td><button onclick="location.href='#'" class="btn btn-dark" style="float: right;">등록</button></td>
		  </tr>	  
		</table>
  	</div>
  <!-- =======================================생산품 상세보기/등록 영역 끝================================= -->
   </div>
   </div>
</body>
</html>