<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*,com.BaseConn"
    pageEncoding="gbk"%>
<%@include file="admin_conn.jsp"%>
<%
	String id = request.getParameter("id");
	Connection conn= BaseConn.getConnection();
	String sql = "delete from userinfo where id="+id;
	Statement statement = conn.createStatement(); 
	statement.execute(sql);	
%>
<html><head><link rel="stylesheet" type="text/css" href="styles.css"></head><body>ɾ���ɹ� ��<a href="admin.jsp">�������</a></body></html>