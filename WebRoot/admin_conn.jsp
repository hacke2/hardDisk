<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<%	
	//检查管理员是否登录
    String admin_id = (String)session.getAttribute("admin");
    if (null==admin_id || admin_id.equals("")) {
        out.print("<script language='javascript'>alert('请先登录系统！');window.location = 'admin_login.jsp';</script>");
        
    }
%>