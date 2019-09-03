<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WAS</title>
<style type="text/css">
	form {
		width:80%;
	}
</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-sm-6">
			<h2>거래처 등록</h2>
			<form action="/action_page.php">
				<div class="form-group">
				  <label for="cli_code">거래처코드</label>
				  <input type="cli_code" class="form-control" id="cli_code" name="cli_code" >
				</div>
				<div class="form-group">
				  <label for="client">거래처명</label>
				  <input type="client" class="form-control" id="client" name="client" >
				</div>
				<div class="form-group">
				  <label for="com_num">사업자 등록 번호</label>
				  <input class="form-control" id="com_num" name="com_num" >
				</div>
				 <div class="form-group">
				  <label for="ceo_name">대표자 성명</label>
				  <input type="ceo_name" class="form-control" id="ceo_name" name="ceo_name">
				</div>
				<div class="form-group">
				  <label for="uptae">업태</label>
				  <input type="uptae" class="form-control" id="uptae" name="uptae">
				</div>
				<div class="form-group">
				  <label for="zipcode">우편번호-</label>
				  <input type="zipcode" class="form-control" id="zipcode" name="zipcode">
				</div>
				<div class="form-group">
				  <label for="com_address">사업장 주소</label>
				  <input type="com_address" class="form-control" id="com_address" name="com_address">
				</div>
				<div class="form-group">
				  <label for="call">전화번호</label>
				  <input type="call" class="form-control" id="call" name="call">
				</div>
				<div class="form-group">
				  <label for="charge">담당자</label>
				  <input type="charge" class="form-control" id="charge" name="charge">
				</div>
				<div class="form-group">
				  <label for="charge_email">담당자 메일주소</label>
				  <input type="charge_email" class="form-control" id="charge_email" name="charge_email">
				</div>
				<div class="form-group">
				  <label for="bank_code">은행코드</label>
				  <input type="bank_code" class="form-control" id="bank_code" name="bank_code">
				</div>
				<div class="form-group">
				  <label for="acc_num">입금계좌번호</label>
				  <input type="acc_num" class="form-control" id="acc_num" name="acc_num">
				</div>   
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
  		</div>
	</div>
</div>
</body>
</html>