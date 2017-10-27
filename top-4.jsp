<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
span{
	background-color:blue;
	color:white;
	text-align:center;
	padding:3px;
	font-weight:bold
}
</style>
<%
	String user=(String)session.getAttribute("user");
	if(user==null||"".equals(user)){
		response.sendRedirect("login-4.jsp");
	}
%>
<div>
	<span>学生管理</span>
	<span>学籍管理</span>
	<span>课程管理</span>
	<span>教师管理</span>
</div>
<br>
<b><%=user %>, 您好欢迎使用管理系统！</b>
</br>
<a href="login_do-4.jsp">退出</a>