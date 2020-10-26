<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function findUsername() {
		//1. xhr객체 생성
		var xhttp = new XMLHttpRequest();
		//2.콜백함수 정의
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4) { //서버 응답 완료(4)
		    	if(this.status == 200) { //정살실행(200)
		    		//document.getElementById("result").innerHTML += this.responseText;
		    		//json 출력하기
			    		var obj = JSON.parse(this.responseText)
			    		document.getElementById("result").innerHTML += obj.name;
		    	
		    	} else {
		    		document.getElementById("result").innerHTML = "error: " + this.status;
		    	}
		    } else {
		    	document.getElementById("result").innerHTML = "로딩중";
		    		
		    }
		  };
		//3.서버 연결
		var param = "userid=" + userid.value;
		  //get방식
		  	//xhttp.open("GET", "server/findName.jsp?" + param, true); //3번째 인수 true|생략 => 비동기, false => 동기,
		  //post방식
		  	xhttp.open("post", "server/findName.jsp", true); //3번째 인수 true|생략 => 비동기, false => 동기,
		  	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		//4.요청 시작
		  //get방식
		  	//xhttp.send();
		  //post방식
		  	xhttp.send(param);
		  console.log("요청시작");
	}
</script>
</head>
<body>
	<input id="userid">
	<button type="button" id="btnFind" onclick="findUsername()">검색</button>
	<div id="result">결과</div>
</body>
</html>