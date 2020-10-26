<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//server/findName.jsp
	Thread.sleep(2000); //서버에서 2초간 지연시키기
	//int a = 5/0; //500번 에러 띄우기
	HashMap<String, String> map = new HashMap<>();
	map.put("choi", "최기자");
	map.put("park", "박길동");
	map.put("kim", "김기자");
	//1.파라미터
	String userid = request.getParameter("userid");
	//out.print(map.get(userid));
	String name = map.get(userid);
	
%>
<%-- 주석은 이렇게 줘야한다! --%>
{"result":true, "name": "<%= name %>"}