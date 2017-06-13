<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="xianxian.Calculator"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body><BODY bgcolor=grey>
  <center>
  <%!
  int re=0;
  int a=0;
  int b=0;
   %>
   <%
   a=Integer.parseInt(request.getParameter("numberOne"));
   b=Integer.parseInt(request.getParameter("numberTwo"));
   String s=request.getParameter("operator");
   	if(s.equals("+"))
		{re=a+b;}
	else if (s.equals("-"))
			re=a-b;
	else if(s.equals("*"))
			re=a*b;
		else if (s.equals("/"))
			re=a/b;
		
    %>
    <p>本次计算结果为：</p>
    <br/>
    <%=re%>
    <br>
    <br>
    <a href="index.jsp" >点击返回继续进行运算</a>
  </body>
</html>
