<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button type="button" id="btn1">이벤트1</button><p id="info">상세소개</p>
	<button type="button" id="btn2">이벤트2</button><p id="info2">상세소개2</p>
	<button type="button" id="btn3">이벤트3</button><p id="info3">상세소개3</p>
<script type="text/javascript">
	//이벤트 핸들러
	//이벤트를 한 개 밖에 못 건다!
		//btn1.onclick = function() {info.style.display = "none";};
	//이벤트를 여러개 걸 수 있다!
		//btn1.addEventListener("click", btnHandler);
		//btn1.addEventListener("click", function() {alert("처리됨")});
		//btn2.addEventListener("click", btnHandler);
		document.body.addEventListener("click", btnHandler);
		
		function btnHandler() {
			/* if(event.target.id == "btn1") {
				info.style.display = "none";	
			} else {
				info2.style.display = "none";
			} */
			event.target.nextSibling.style.display = "none";
			//event.stopPropagation(); //전파중지
		};
</script>
</body>
</html>