<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Count</title>

<style type="text/css">
	.num
	{
		height:80px;
		width:50px;
	}
</style>
</head>
<body>

<div style="position:fixed; bottom:0px;width:100%; text-align:center">

<%
	session.setAttribute("page", true);

	String s = application.getAttribute("usercount").toString();
	System.out.println(s);
	while(s.length()<10)
	{
		s="0" +s;
	}
	out.println("<h2> Current User  : </h2>");
	for(char ch : s.toCharArray())
	{
		
		out.println("<img src= 'nums/"+ch+".png' class='num'>");
	}
	
	
	session.setAttribute("page", true);
	String s1 = application.getAttribute("totalusers").toString();
	System.out.println(s1);
	while(s1.length()<10)
	{
		s1="0" +s1;
	}
	out.println("<h2> Total User : </h2>");
	for(char ch : s1.toCharArray())
	{
		
		out.println("<img src= 'nums/"+ch+".png' class='num'>");
	}
%>
</div>