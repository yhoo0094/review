<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input id="txtFruit"><button id="btn">추가</button>
	<div id="result">
		<p class="pf">사과</p>
		<p class="pf">바나나</p>
	</div>
	
	<script type="text/javascript">
		//var p = document.getElementsByClassName("pf");
		//p[0].addEventListener("mouseover", mouseHandler);
		//p[1].addEventListener("mouseover", mouseHandler);
		result.addEventListener("click", mouseHandler);
		
		//this = event.target => 부모태그에 걸면 event.target 써야한다.
		function mouseHandler() {
			console.log(event.target);//클릭한 태그를 나타낸디
			console.log(this); //실제 이벤트가 걸린태그(div)를 나타낸다
			event.target.style.color = "red";
		};
		
		//버튼 클릭 이벤트
		btn.addEventListener("click", function() {
			result.innerHTML += '<p class="pf">' + txtFruit.value + '</p>';
		});
	</script>
</body>
</html>