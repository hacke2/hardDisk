<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*,com.BaseConn"
    pageEncoding="gbk"%>
<%@include file="conn.jsp"%>
<%
	ResultSet resultSet  = null; 
	boolean isEdit = false; 
		String user = request.getParameter("userName");
		user = new String(user.getBytes("ISO8859-1") ,"GBK");
		Connection conn= BaseConn.getConnection();
		String sql = "select  * from userinfo where userName = '"+user+"'"; 
		Statement statement = conn.createStatement(); 
	    resultSet = statement.executeQuery(sql);	
		
		if ( resultSet.next())
		{
			isEdit = true; 
		}
	

%>
<html>
  <head>
    
    <title>用户密码修改</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  <body>
<font color="#ff0000">  <strong>请牢记修改后的密码</strong>！</font>
   <form id="studentForm" action="update_do.jsp">
   		
   		<input type="hidden" name="isEdit" value ="<%=isEdit %>"/>
   		<input type="hidden" id="id" name="id" value="<%=(isEdit?resultSet.getString("id"):"") %>" /> <br/>
   		用户名:<input type="text" name="userName" value="<%=user%>" disabled/> <br/>
   		密码:<input type="text" name="userPassword" value="<%=(isEdit?resultSet.getString("userPassword"):"") %>" /><br/>
   		
   		<input type="submit" value="提交"  /> <a href="welcome.jsp">返回</a>
   </form>
</body>
</html>
