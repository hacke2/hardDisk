<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*,com.BaseConn"
    pageEncoding="gbk"%>
<%@include file="admin_conn.jsp"%>
<%
	String id = request.getParameter("id");
	ResultSet resultSet  = null; 
	boolean isEdit = false; 
	if(id != null)
	{
		Connection conn= BaseConn.getConnection();
		String sql = "select * from userinfo where id=" + id; 
		Statement statement = conn.createStatement(); 
	    resultSet = statement.executeQuery(sql);	
		
		if ( resultSet.next())
		{
			isEdit = true; 
		}
	}

%>
<html>
  <head>
    
    <title>用户密码修改</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
  </head>
 <body>  <form id="studentForm" action="user_save.jsp">
   		
   		<input type="hidden" name="isEdit" value ="<%=isEdit %>"/>
   		ID:<input type="text" id="id" name="id" value="<%=(isEdit?resultSet.getString("id"):"") %>" /> <br/>
   		用户名:<input type="text" name="userName" value="<%=(isEdit?resultSet.getString("userName"):"") %>" disabled/> <br/>
   		密码:<input type="text" name="userPassword" value="<%=(isEdit?resultSet.getString("userPassword"):"") %>" /><br/>
   		
   		<input type="submit" value="提交"  />
   </form>
</body>
</html>
