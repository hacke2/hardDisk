<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*,com.BaseConn"
    pageEncoding="gbk"%>
<%@include file="admin_conn.jsp"%>
<html>
<head>
<title>��ӭʹ������Ӳ�̺�̨ϵͳ��</title>
<% 
		Connection conn= BaseConn.getConnection();	//��ȡ��������
		String sql = "select * from userinfo"; 	
		Statement statement = conn.createStatement(); 	//��ȡ���ʽ
		ResultSet resultSet = statement.executeQuery(sql);	//��ȡ����
		
 %>
</head>
<link rel="stylesheet" type="text/css" href="styles.css">
<body>
<form action=search.jsp method=get>
  <h3>��������Ҫ�����û����û���:</h3>
  <center>
    <input type="text" name=userName>
    <input type="submit" value=����>
  </center>  
</form>
  <a href="register.jsp">����</a><br><br><a href="logout.jsp">�˳���¼</a><br>
   <hr>
  <table style="border-style:solid;" align="center">
  	<tr align="center">

  		<td>�û���</td>
  		<td>����</td>

  	</tr>
  
   <% while(resultSet.next()) { %>
  	<tr>

  		<td><%=resultSet.getString("userName") %></td>
  		<td><%=resultSet.getString("userPassword") %></td>
  		<td> 
  			<a href="user_del.jsp?id=<%=resultSet.getString("id") %>">ɾ��</a> 
  			<a href="user_edit.jsp?id=<%=resultSet.getString("id") %>"> �༭</a> 
  		</td>
  	</tr>  	
  	<% } %>
  </table>
</body>
</html>