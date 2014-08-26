<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*,com.BaseConn"
    pageEncoding="gbk"%>
<%@include file="admin_conn.jsp"%>
<html>
<head>
<title>欢迎使用网络硬盘后台系统！</title>
<% 
		Connection conn= BaseConn.getConnection();	//获取数据连接
		String sql = "select * from userinfo"; 	
		Statement statement = conn.createStatement(); 	//获取表达式
		ResultSet resultSet = statement.executeQuery(sql);	//读取数据
		
 %>
</head>
<link rel="stylesheet" type="text/css" href="styles.css">
<body>
<form action=search.jsp method=get>
  <h3>请输入所要查找用户的用户名:</h3>
  <center>
    <input type="text" name=userName>
    <input type="submit" value=查找>
  </center>  
</form>
  <a href="register.jsp">新增</a><br><br><a href="logout.jsp">退出登录</a><br>
   <hr>
  <table style="border-style:solid;" align="center">
  	<tr align="center">

  		<td>用户名</td>
  		<td>密码</td>

  	</tr>
  
   <% while(resultSet.next()) { %>
  	<tr>

  		<td><%=resultSet.getString("userName") %></td>
  		<td><%=resultSet.getString("userPassword") %></td>
  		<td> 
  			<a href="user_del.jsp?id=<%=resultSet.getString("id") %>">删除</a> 
  			<a href="user_edit.jsp?id=<%=resultSet.getString("id") %>"> 编辑</a> 
  		</td>
  	</tr>  	
  	<% } %>
  </table>
</body>
</html>