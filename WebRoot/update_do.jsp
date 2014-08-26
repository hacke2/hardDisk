<%@ page language="java" contentType="text/html; charset=gbk" import="java.sql.*,com.BaseConn"
    pageEncoding="gbk"%>
<%@include file="conn.jsp"%>
<%
	String isEdit = request.getParameter("isEdit");
    String id1 = request.getParameter("id");
    String userName = request.getParameter("userName");
	String userPassword = request.getParameter("userPassword");
	Connection conn= BaseConn.getConnection();
	String  sql; 
	if ("true".equals(isEdit)) { 
	sql = "update userinfo set userPassword='"+userPassword+ "' where id="+id1;			
	}
	else {
	sql = "insert into userinfo (userName,userPassword) values("+userName+",'"+userPassword+"')";
	}
	Statement statement = conn.createStatement(); 
	statement.execute(sql);	
	
%>
<html>
  <head>
       <title>用户修改</title>
       <link rel="stylesheet" type="text/css" href="styles.css">
  </head>

  <body>
   修改成功！<a href="welcome.jsp">点击返回 </a>
  </body>
</html>
