<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름: ${requestScope.map.name} <br>
	취미:	${requestScope.map.hobby[0]} <br>
	전체취미 : <c:forEach items="${map.hobby}" var="hb">${hb} &nbsp;</c:forEach><br>	
	회원아이디: ${member.id} <br>
	회원이름: ${member.name} <br>
	첫 번째 회원이름: ${memberlist[0].name} <br> 
	회원명단: <c:forEach items="${memberlist}" var="v">${v.name}&nbsp;</c:forEach><br>
	세션의 회원이름: ${sessionScope.member.name} <br>
	파라미터 role: ${param.role} <br>
	요청이전페이지: <%=request.getHeader("Referer") %> = ${header["Referer"]} <br>
	브라우저: ${header["User-Agent"]} <br>
	쿠키: ${cookie.popupYn.value} <br>
	지속시간: ${cookie.popupYn.maxAge} <br>
	
	<%--
	 <c:if test="${cookie.popupYn.value !='n'}">
		<script type="text/javascript">
			alert("광고입니다.");
		</script>
	</c:if>
	--%>
	
	<%-- 스크립트로 쿠키 넣는 방법 (https://www.w3schools.com/js/js_cookies.asp) --%>
	
	<script type="text/javascript">
	function getCookie(cname) {
		  var name = cname + "=";
		  var decodedCookie = decodeURIComponent(document.cookie);
		  var ca = decodedCookie.split(';');
		  for(var i = 0; i <ca.length; i++) {
		    var c = ca[i];
		    while (c.charAt(0) == ' ') {
		      c = c.substring(1);
		    }
		    if (c.indexOf(name) == 0) {
		      return c.substring(name.length, c.length);
		    }
		  }
		  return "";
		}
	
	if(getCookie('popupYn') != 'n') {
		alert("광고입니다.")
	}
	</script>
	<hr>
	<h1>상품리스트</h1>
	<c:set var="sum" value="0"/>
	<c:forEach items="${goods}" var="v">
	<c:if test="${v>200}">^</c:if>
		${v}<br>
	<c:set var="sum" value="${sum + v}"/>
	</c:forEach>
	상품합계 ${sum}<br>
	
	<c:forEach items="${goods}" var="v">
	<c:choose>
		<c:when test="${v>=300}">A</c:when>
		<c:when test="${v>=200}">B</c:when>
		<c:otherwise>C</c:otherwise>
	</c:choose>
	</c:forEach>
	<br><br>
	
	[forTokens로 문자열 끊어 오기]<br>
	<c:forTokens items="${map.job}" delims="," var="job">
		${job}<br>
	</c:forTokens>
	
	<br><br>
	
	<c:set target="${member}" property="name" value="박박박"></c:set>
	변경된 이름: ${member.name}
	
</body>
</html>