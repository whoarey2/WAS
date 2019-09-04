<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String result = (String)request.getAttribute("result");
%>
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
<title>메인홈페이지</title>
<style type="text/css">

</style>
</head>
<body>
	<div class="row">
		<div class="col-sm-3">
			<img src="/erp/images/was_logo2.PNG" width="300px" height="100px">
			<div class="row">
			  <!-- 사원정보영역 -->
			  <h3 style="margin-left: 104px;">XXX</h3>
			  <p style="margin-left: 112px;">직급</p>	
			<div class="toast" data-autohide="false">
				<div class="toast-header">
					<strong class="mr-auto text-primary">마지막 접속 시간</strong>
					<small class="text-muted">5 mins ago</small>
					<button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>  
				</div>
			</div>
<script>
	$(document).ready(function(){
	  $('.toast').toast('show');
	});
</script>
			</div>

		 	<ul class="nav flex-column">
				<div class="list-group" style="width:350px">
				<button type="button" class="btn btn-link" data-toggle="collapse" data-target="#major" style="width:350px">생산/품질관리</button>
					<div id="major" class="collapse">			
						<a href="#" class="list-group-item list-group-item-action">품목조회</a>
						<a href="#" class="list-group-item list-group-item-action">재고등록</a>
						<a href="#" class="list-group-item list-group-item-action">재고조회</a>
						<a href="#" class="list-group-item list-group-item-action">생산품등록</a>
						<a href="#" class="list-group-item list-group-item-action">거래처등록/조회</a>
						<a href="#" class="list-group-item list-group-item-action">배송처조회</a>
						<a href="#" class="list-group-item list-group-item-action">배송처등록</a>
						<a href="#" class="list-group-item list-group-item-action">근태조회</a>
					</div>
				<button type="button" class="btn btn-link" data-toggle="collapse" data-target="#major2">영업/매출관리</button>
					<div id="major2" class="collapse">
						<button type="button" class="btn btn-link" >매출</button><br>
						<button type="button" class="btn btn-link" >재고등록/조회</button><br>
						<button type="button" class="btn btn-link" >생산품등록</button><br>
					</div>
				</div>
			</ul> 
		</div>
		<div class="col-sm-9"></div>
	</div>

</body>
</html>