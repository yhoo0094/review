<%@page import="common.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tagTest.jsp</title>
<style type="text/css">
.pagination li { display: inline-block;}

.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  border: 1px solid #ddd;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {background-color: #ddd;}

.pagination a:first-child {
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
}

.pagination a:last-child {
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
}
</style>
</head>
<body>
	<my:select sname="bSearch"/>
	<my:login/>
	<% Paging paging = new Paging(); 
		paging.setPage(1);
		paging.setTotalRecord(144);
	%>
	<script type="text/javascript">
		function goPage(p) {
			location.href=".do?p="+p;
		}
	</script>
	<my:paging paging="<%=paging%>" jsfunc="goPage"/>
</body>
</html>