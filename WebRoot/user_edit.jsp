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
    
    <title>�û������޸�</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
  </head>
 <body>  <form id="studentForm" action="user_save.jsp">
   		
   		<input type="hidden" name="isEdit" value ="<%=isEdit %>"/>
   		ID:<input type="text" id="id" name="id" value="<%=(isEdit?resultSet.getString("id"):"") %>" /> <br/>
   		�û���:<input type="text" name="userName" value="<%=(isEdit?resultSet.getString("userName"):"") %>" disabled/> <br/>
   		����:<input type="text" name="userPassword" value="<%=(isEdit?resultSet.getString("userPassword"):"") %>" /><br/>
   		
   		<input type="submit" value="�ύ"  />
   </form>
</body>
</html>
