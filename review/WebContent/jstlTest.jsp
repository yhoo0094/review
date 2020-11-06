<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlTest.jsp</title>
</head>
<body>
<%
	ArrayList<String> list = new ArrayList<>();
	list.add("바나나");
	list.add("사과");
	list.add("귤");
	list.add("딸기");
	list.add("포도");
	list.add("배");
	request.setAttribute("fruit", list);
%>

${fruit[0]}
<hr>
<c:forEach items="#{fruit}" var="f" varStatus="s">
	인덱스값: ${s.index} <br> 
	몇 번째 실행인지: ${s.count} <br> 
	값: ${f} <br>
</c:forEach>
<hr>
총 과일 수: ${fn:length(fruit)} <br>
<hr>
<c:forEach items="#{fruit}" var="f" varStatus="s">
	<c:set var="color" value="cyan" scope="request"></c:set>
	<c:if test = "${s.index%2==0}">
		<c:set var="color" value="yellow" scope="request"></c:set>	
	</c:if>
	<div style="background-color: ${color}"> ${s.index} : ${f} </div>	
</c:forEach>
<hr>
<c:forEach items="#{fruit}" var="f" varStatus="s">
	<div style="background-color:<c:if test="${s.index%2==0}">red</c:if>"> ${s.index} : ${f} </div>
</c:forEach>
</body>
</html>