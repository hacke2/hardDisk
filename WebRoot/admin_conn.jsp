<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<%	
	//������Ա�Ƿ��¼
    String admin_id = (String)session.getAttribute("admin");
    if (null==admin_id || admin_id.equals("")) {
        out.print("<script language='javascript'>alert('���ȵ�¼ϵͳ��');window.location = 'admin_login.jsp';</script>");
        
    }
%>