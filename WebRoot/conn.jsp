<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<%	//�����ͨ�û��Ƿ��¼
    String id = (String)session.getAttribute("user");
    if (null==id || id.equals("")) {
        out.print("<script language='javascript'>alert('���ȵ�¼ϵͳ��');window.location = 'login.jsp';</script>");
        
    }
%>

