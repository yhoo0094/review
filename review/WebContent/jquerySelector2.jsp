<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(()=>{
		//모든 li 태그중에서 첫 번째
		$("li:first").css("backgroudColor","red");
		
		//모든 li 태그의 첫 번째 자식들
		$("li:first-child").css("color","blue");
		
		//모든 li 태그의 n 번째 자식들
		$("li:nth-child(2)").css("color","pink");
	})
	
</script>
</head>
<body>
	<h3>필터링</h3>
	<ul>
		<li>자바
		<li>JSP
		<li>JSP
	</ul>
	<ul>
		<li>스프링
		<li>egov
		<li>JSP
	</ul>
</body>
</html>