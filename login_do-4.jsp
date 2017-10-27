<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("user")!=null){
	session.invalidate();
}
String name=request.getParameter("name");
String pwd = request.getParameter("pwd");
if("admin".equals(name)&&"admin".equals(pwd)){
	session.setAttribute("user", name);
}
response.sendRedirect("index-4.jsp");
%>

</body>
</html>