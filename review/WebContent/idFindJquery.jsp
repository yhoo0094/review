<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	//https://api.jquery.com/category/ajax/shorthand-methods/ => 페이지 참고할 것
	function findUsername() {
		//$("#result").load("server/ajax_info.txt")
		var param = {userid: userid.value};
		
/*		
		$.get("server/findName.jsp", param, function(data){
			//result.innerHTML = data; // jquery => $("#result").html(data);
			//json으로 출력하기	
			//	var obj = JSON.parse(data);
			//	result.innerHTML = obj.name;
			result.innerHTML += data.name; 
		}, "json")
		
		//이렇게도 가능!
		$.getJSON("server/findName.jsp", param, function(data){
			result.innerHTML += data.name; 
		})
*/	
		
/*		
		$.ajax("server/findName.jsp", {
			data : param,
			dataType : "json",
			method : "get",
			//async : false,
			success : function(data) {
				result.innerHTML += data.name;
			},
			error : function(xhr, status) {
				result.innerHTML += status;
			}
		});
		console.log("요청 시작");
*/			
		
		$.ajax({
			url : "server/findName.jsp",
			data : param,
			dataType : "json",
			method : "get",
		}).done(function(data) {
			result.innerHTML += data.name;
		})
		  .fail(function(xhr, status) {
			result.innerHTML += status;
		  })
		  .always(function() {
			  result.innerHTML += "always 실행";
		  });
	}
</script>
</head>
<body>
	<input id="userid">
	<button type="button" id="btnFind" onclick="findUsername()">검색</button>
	<div id="result">결과</div>
</body>
</html>