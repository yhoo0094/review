<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<style type="text/css">
	.back {
		font-size: 1.2em;
		background-color: cyan;
	};
	table {border-collapse : collapse;}
</style>
<script type="text/javascript">
	$(()=> {
		/*
		$("td").bind("click", function() {
			$(this).prevAll().last().css("backgroundColor", "cyan");
			//$(this).parent().children().first().css("backgroundColor", "cyan");
		});
		$("td").bind("click", function() {
			$(this).closest("table").prev().css("backgroundColor", "yellow");
		});
		
		$("td").bind("dblclick", function() {
			$(this).css("backgroundColor", "red");
		});
		$("td").bind("dblclick", function() {
			$(this).closest("table").prev().css("backgroundColor", "white");
		});
		$("table").bind("click", function() {
			console.log($(this).find("td"));
			$(this).find("td").eq(7).css("backgroundColor", "black");
		});
		
		//클래스 줘서 css넣기
		$("td").bind("click", function() {
			//$(this).addClass("back");
			$(this).toggleClass("back");
		});
		*/
		
		//클릭한 행의 td값을 조회
		$("td").bind("click", function() {
			var tds = $(this).parent().children();
			var str = "";
			for(i=0; i<tds.length; i++) {
				str += $(tds[i]).text();
			}
			//alert("for: " + str);
			
			str = "";
			tds.each(function(index, ele) {
				str += $(this).text();
			})
			//alert("tds.each: " + str);
			
			//배열값으로 받아올 때
			str = "";
			$.each(tds, function(index) {
				str += $(this).text();
			})
			alert("$.each: " + str);
		});
	})
</script>
</head>
<body>
	<div>탐색 선택자</div>
	<table border="1">
		<tr><td>1</td><td>2</td><td>3</td></tr>
		<tr><td>4</td><td>5</td><td>6</td></tr>
		<tr><td>7</td><td>8</td><td>9</td></tr>
	</table>
</body>
</html>