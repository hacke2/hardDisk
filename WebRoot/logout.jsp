<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	session.invalidate();	//����session
	response.sendRedirect("index.jsp");
%>