<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	session.invalidate();	//Ïú»Ùsession
	response.sendRedirect("index.jsp");
%>