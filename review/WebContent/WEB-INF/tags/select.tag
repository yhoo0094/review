<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="sname" required="true" %>
<%@ attribute name="bg" %>

<%-- bg속성이 empty이면 yellow로 초기화 --%>
<c:if test="${empty bg}">
	<c:set var="bg" value="yellow"></c:set>
</c:if>

<select name="${sname}" style="background-color: ${bg}">
	<option>제목
	<option>내용
</select>