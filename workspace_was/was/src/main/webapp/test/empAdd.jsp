<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WAS,AQUA - 사원등록</title>
<meta charset="utf-8">
<%@ include file="/common/bootStrap4.jsp" %>
	<script type="text/JavaScript" src="http://code.jquery.com/jquery-1.7.min.js"></script>
	<script type="text/JavaScript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script type="text/javascript">
		function openDaumZipAddress() {
			new daum.Postcode({
				oncomplete:function(data) {
					jQuery("#postcode1").val(data.postcode1);
					jQuery("#postcode2").val(data.postcode2);
					jQuery("#zonecode").val(data.zonecode);
					jQuery("#address").val(data.address);
					jQuery("#address_etc").focus();
					console.log(data);
				}
			}).open();
		}
		function saveZipcode(){
			var zipcode =$("#zonecode").val();
			$("#zipcode").val(zipcode);
			var adrr1 = $("#address").val();
			var adrr2 = $("#address_etc").val();
			$("#adrr1").val(adrr1);
			$("#adrr2").val(adrr2);
			
			
		}
	</script>
</head>
<body>
<div class="container-fluid ">
<div class="row">
<div style="width:20%">
	 <%@ include file="/common/MenuCommon.jsp" %>
</div>
<div style="width:80%">
<div class="row">
 <!-- 
================================================================================================================================
												사원목록 부분(왼쪽) - 지금은 상수로 박아놨지만, DB로 연동해서 뿌려줘야함.
================================================================================================================================
-->
<div class="col-sm-6">
 <div class="card bg-dark text-white" style="height:50px; margin-top:70px">
    <div class="card-body">사원목록</div>
  </div>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>부서명</th>
        <th>직급</th>
        <th>사원명</th>
        <th>핸드폰번호</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>영업부</td>
        <td>대리</td>
        <td>김태리</td>
        <td>010-9999-1212</td>
      </tr>
      <tr>
        <td>영업부</td>
        <td>사원</td>
        <td>오나라</td>
        <td>010-3339-1662</td>
      </tr>
      <tr>
        <td>생산부</td>
        <td>팀장</td>
        <td>예수정</td>
        <td>010-5734-1212</td>
      </tr>
      <tr>
        <td>영업부</td>
        <td>대리</td>
        <td>김태리</td>
        <td>010-9999-1212</td>
      </tr>
      <tr>
        <td>영업부</td>
        <td>사원</td>
        <td>오나라</td>
        <td>010-3339-1662</td>
      </tr>
      <tr>
        <td>생산부</td>
        <td>팀장</td>
        <td>예수정</td>
        <td>010-5734-1212</td>
      </tr>
      <tr>
        <td>영업부</td>
        <td>대리</td>
        <td>김태리</td>
        <td>010-9999-1212</td>
      </tr>
      <tr>
        <td>영업부</td>
        <td>사원</td>
        <td>오나라</td>
        <td>010-3339-1662</td>
      </tr>
      <tr>
        <td>생산부</td>
        <td>팀장</td>
        <td>예수정</td>
        <td>010-5734-1212</td>
      </tr>
      <tr>
        <td>총무부</td>
        <td>팀장</td>
        <td>김혜수</td>
        <td>010-5734-7212</td>
      </tr>
      <tr>
        <td>총무부</td>
        <td>사원</td>
        <td>원빈</td>
        <td>010-9994-7222</td>
      </tr>
    </tbody>
  </table>
</div>
 <!-- 
================================================================================================================================
												사원등록 부분(오른쪽)
================================================================================================================================
-->
<div class="col-sm-6">
 <div class="card bg-dark text-white" style="height:50px; margin-top:70px">
    <div class="card-body">사원등록</div>
  </div>
  <table class="table table-striped">
	<tr>
		<td style="width:130px"><button onclick="location.href='#'" class="btn btn-dark">사원명&nbsp;&nbsp;</button></td>
		<td align="left">
			<input type="text" style="height:35px;width:130px;" placeholder="&nbsp;사원명">
		</td>
	</tr>
	<tr>
		<td style="width:130px"><button class="btn btn-dark">영문성명</button></td>
		<td align="left">
			<input type="text" style="height:35px;width:130px;" placeholder="&nbsp;영문성명">
		</td>
	</tr>
	<tr>
		<td style="width:130px"><button class="btn btn-dark">주민번호</button></td>
		<td align="left">
			<input type="text" style="height:35px;width:250px;" placeholder="&nbsp;주민등록번호">
		</td>
	</tr>
	<tr>
		<td style="width:130px"><button class="btn btn-dark">우편번호</button></td>
		<td align="left">
			<input id="zipcode" type="text" style="height:35px;width:170px;" placeholder="&nbsp;버튼을 클릭하세요.">
			<button type="button" class="btn btn-dark" data-toggle="modal" data-target="#myModal" style="height:38px;width:55px;">
			  <i id="btn_zipcode" style="font-size:28px;" class='far' onclick="location.href='#'">&#xf0e0;</i>
			</button>
		</td>
	</tr>
	<tr>
		<td style="width:130px"><button class="btn btn-dark">주&nbsp;&nbsp;소</button></td>
		<td align="left">
			<input id="adrr1" type="text" style="height:35px;width:220px;" placeholder="&nbsp;주소">
			<input id="adrr2" type="text" style="height:35px;width:220px;">
		</td>
	</tr>
	<tr>
        <td style="width:130px;"><button class="btn btn-dark"">입사날짜</button></td>
        <td>                    
            <input type="date" id="enrollment" name="enrollment" style="height:35px;">
            <i class="fa fa-calendar-check-o" style="font-size:24px"></i>
        </td>
    </tr>
	<tr>
        <td style="width:130px;"><button class="btn btn-dark">퇴사날짜</button></td>
        <td>                    
            <input type="date" id="enrollment" name="enrollment" style="height:35px;">
            <i class="fa fa-calendar-check-o" style="font-size:24px"></i>
        </td>
    </tr>
    <tr>
		<td style="width:130px"><button class="btn btn-dark">부서코드</button></td>
		
	</tr>
  </table>
</div>
</div>
</div>
</div>
</div>
<!-- 
================================================================================================================================
												Modal 다이얼로그 창 (우편번호 검색기)
================================================================================================================================
-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"></h4>
      </div>
      <div class="modal-body">
			<h3>우편번호 검색</h3>
			<input id="postcode1" type="text" value="" style="width:50px; margin-top:10px;" readonly/>
			&nbsp;-&nbsp;
			<input id="postcode2" type="text" value="" style="width:50px;" readonly/>
			&nbsp;&nbsp;
			<input id="zonecode" type="text" value="" style="width:70px;" readonly/>
			&nbsp;
			<button class="btn btn-dark" onClick="openDaumZipAddress();"style="height:39px;">우편번호</button>
			<br/>
			<input type="text" id="address" value="" style="width:240px; margin-top:5px;" readonly/>
			<input type="text" id="address_etc" value="" style="width:200px;"/>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" onclick="saveZipcode();" data-dismiss="modal">저장</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
  </div>
</body>
</html>
