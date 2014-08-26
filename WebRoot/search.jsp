<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*,com.BaseConn"
    pageEncoding="UTF-8"%>
<%@include file="admin_conn.jsp"%>
<html>
<head>
<title>欢迎使用网络硬盘后台系统！</title>

<% 
		String user = request.getParameter("userName");
		
		Connection conn= BaseConn.getConnection();
		String sql = "select  * from userinfo where userName = '"+user+"'";
		Statement statement = conn.createStatement(); 
		ResultSet resultSet = statement.executeQuery(sql);
		
 %>
 <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<form action=search.jsp method=get>
  <h3>请输入所要查找用户的用户名:</h3>
  <center>
    <input type="text" name=userName>
    <input type="submit" value=查找>
  </center>  
</form>
  <a href="register.jsp">新增</a><br><a href="admin.jsp">返回<br><a href="logout.jsp">退出登录</a><br>
   <hr>
  <table style="border-style:solid;" align="center">
  	<tr align="center">

  		<td>用户名</td>
  		<td>密码</td>

  	</tr>
  

  	<tr>
<%while(resultSet.next())
{ %>
  		<td><%=resultSet.getString("userName") %></td>
  		<td><%=resultSet.getString("userPassword") %></td>
  		<td> 
  			<a href="user_del.jsp?id=<%=resultSet.getString("id") %>">删除</a> 
  			<a href="user_edit.jsp?id=<%=resultSet.getString("id") %>"> 编辑</a> 
  		</td>
  		<%} %>
  	</tr>  	

  </table>
</body>
</html>