<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
	<div>a</div>
	<div>b</div>
	<div>c</div>
	<script type="text/javascript">
		var div = document.getElementsByTagName("div");
			//div[0].style.color = "red";
		//dom객체 -> jquery객체 : $(dom객체)
			//$(div[0]).css("color", "blue");
			//$("div").eq(0).css("color", "blue");
		
		//제이쿼리로 가져왔다가 dom객체로 만들기
		//jquery객체 -> dom객체 : get(), item(), []
			var $div = $("div") 
			$div.get(0).style.color = "blue";
			$div.item().style.color = "red";
	</script>
</body>
</html>