<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<%	//检查普通用户是否登录
    String id = (String)session.getAttribute("user");
    if (null==id || id.equals("")) {
        out.print("<script language='javascript'>alert('请先登录系统！');window.location = 'login.jsp';</script>");
        
    }
%>

