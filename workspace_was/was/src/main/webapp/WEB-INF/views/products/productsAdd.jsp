<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html;">
<%@ include file="/common/bootStrap4.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<title>생산품 등록/조회</title>
<script type="text/javascript">
	function change() {
		var frm = document.frm;	
		var combo = frm.combo;
		var txt = frm.combo_nm;	
		var comboVal = combo.value;	
		for(var i=0; i<combo.options.length; i++ ) {
			if(combo.options[i].value == comboVal ) {
				combo.options[i].checked = true;
				txt.value= combo.options[i].name;
			}
		}
	
	}

</script>
<style>
 
 tr:nth-child(even) {
	background-color: #f2f2f2;
 } 

 #box{margin:0; padding:10px 30px 5px}
	
</style>
</head>
<body>
<div class="container-fluid">
<div class="row">
	<div style="width:20%">
		<%@ include file="/common/MenuCommon.jsp" %>
    </div>
  <div style="width:80%">
  <!-- ========================================생산품 상세조회 영역================================= -->
  <div class="w3-container w3-light-gray" style=" margin-top: 25px; height: 60px;">
  <div class="box-container">
  <div id="box">
  <table>
  	<thead>
  		<th>
  			<td>
  				<button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown">생산품명</button>
						    <div class="dropdown-menu">
						      <a class="dropdown-item" href="#">어선명</a>
						    </div>
  			</td>
  			<td>
  				<input type="text" width="200px;" height="35px;" data-options="prompt:'생산품명을 선택하세요.'">
  			</td>
  		</th>
  		<th>
  			<td><button type="button" class="btn btn-dark">입고등록일</button></td>
  			<td>
  				<input type="date" class="form-control">
  			</td>
  			<td><i class='fas fa-minus-square' style='font-size:36px'></i></td>
  			<td>
  				<input type="date" class="form-control">
  			</td>
  			<td><button onclick="location.href='#'" class="btn btn-dark" style="float: right;">조회</button></td>
  		</th>
  	</thead>
  </div>
  </div>
  </table>
  </div>
  <!-- =======================================생산품 상세조회 영역 끝================================= -->
  <!-- =======================================생산품 목록 영역 ================================= -->
  <div class="row">
  	<div class="col-sm-6" style="margin-top: 35px;">
  		<!-- 429*328 -->
  		<button type="button" class="btn btn-dark" style="margin-left: 10px;">선택</button>
		<table style="margin: 11px;width: 510px;">	
			<thead>
			<tr style="background-color: black;color: aliceblue; text-align:center; width:300px; height:45px;">
				<td></td>
				<td>
				<div class="checkbox checkbox-primary">
				<input id="checkbox" type="checkbox" check>
				</div>
				</td>
				<td>입고등록일</td>
				<td>입고수량</td>
				<td>품목명</td>
			</tr>
			</thead>
			<tbody>
			<tr style="text-align:center; width:100px; height:58px;">
				<td>1</td>
				<td>
				<div class="checkbox checkbox-primary">
				<input id="checkbox" type="checkbox" check>
				</div>
				</td>
				<td>2019-09-04</td>
				<td>QRS20190904</td>
				<td>1002</td>
				
			</tr>
			<tr style="text-align:center; width:100px; height:58px;">
				<td>2</td>
				<td>
				<div class="checkbox checkbox-primary">
				<input id="checkbox" type="checkbox" check>
				</div>
				</td>
				<td>2019-09-05</td>
				<td>QRS20190905</td>
				<td>1003</td>
				
			</tr>
			<tr style="text-align:center; width:100px; height:58px;">
				<td>3</td>
				<td>
				<div class="checkbox checkbox-primary">
				<input id="checkbox" type="checkbox" check>
				</div>
				</td>
				<td>2019-09-06</td>
				<td>QRS20190906</td>
				<td>1004</td>
			</tr>
			</tbody>
		</table>
  	</div>
  <!-- =======================================생산품 목록 영역 끝================================= -->
  <!-- =======================================생산품 상세보기 영역================================= -->
  	<div class="col-sm-6" style="margin-top: 35px;">
  		<table class="table" style="width:100%; height:180px;">
					  <tr>
						<h2><th colspan="2" style="background-color: black;color: aliceblue; text-align:center;">생산품 등록</th></h2>  	
					  </tr>
					  <tr>
					    <td>
					    <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown">어선선택</button>
						    <div class="dropdown-menu">
						      <a class="dropdown-item" href="#">어선1</a>
						      <a class="dropdown-item" href="#">어선2</a>
						      <a class="dropdown-item" href="#">어선3</a>
						    </div>
					    </td>
					    <td><input type="text" width="200px;" height="35px;" data-options="prompt:'선택한 어선종류 값'"></td>
					  </tr>
					  <tr>
					    <td>
					    <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown">어종선택</button>
						    <div class="dropdown-menu">
						      <a class="dropdown-item" href="#">참치</a>
						      <a class="dropdown-item" href="#">명태</a>
						      <a class="dropdown-item" href="#">오징어</a>
						    </div>
					    </td>
					    <td><input type="text" width="200px;" height="35px;" data-options="prompt:'선택한 어종 값'"></td>
					  </tr>
					  <tr>
					    <td>
					    <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown">선택</button>
					    <div class="dropdown-menu">
					      <a class="dropdown-item" href="#">kg</a>
					      <a class="dropdown-item" href="#">t</a>
					    </div>
					    </td>
					    <td><input type="ceo_name" class="form-control" id="ceo_name" name="ceo_name" style="width:120px; height:35px;"></td>
					  </tr>
					  <tr>
					    <td><button onclick="location.href='#'" class="btn btn-dark">입고등록일</button></td>
					    <td>						  
			               <i class="fa fa-calendar-check-o" style="font-size:24px"></i>
			               <input type="date" id="enrollment">
					    </td>
					  </tr>
					  <tr>
					    <td><button onclick="location.href='#'" class="btn btn-dark">미정</button></td>
					    <td>
					   	</td>
					  </tr>				
					  <tr>
					    <td></td>
					    <td><button onclick="location.href='#'" class="btn btn-dark" style="float: right;">등록</button></td>
					  </tr>	  
					</table>
  	</div>
  <!-- =======================================생산품 상세보기/등록 영역 끝================================= -->
   </div>
   </div>
</div>
</body>
</html>