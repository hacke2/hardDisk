<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<jsp:useBean id="check" class="com.CheckAdmin"/>

<%    
	//POST�ύ��ʽ�Ľ��������������
    request.setCharacterEncoding("GBK");
    
    //��ȡ�û��ǳ�
    String adminName = request.getParameter("adminName");
    
    //��ȡ�û�����
    String adminPassword=request.getParameter("adminPassword");
    
    //����ȡ�����û���¼��Ϣ�����ݿ��б�����û���Ϣ���бȽ�
    String loginMsg = check.checklogin(adminName,adminPassword);
    if(loginMsg.equals("SUCCESS_LOGIN"))
    {
      session.setAttribute("admin",adminName);//����session�����Ա��Ժ�Ե�½����֤
      
      response.sendRedirect("admin.jsp");      
    }
    else if(loginMsg.equals("WRONG_PASSWORD"))
    {
      out.println("��������û���������������������������");
    }
    else if(loginMsg.equals("NONE_USER"))
    {
        out.println("�û��������ڣ�����");
    }    
  %>
  <html><head><link rel="stylesheet" type="text/css" href="styles.css"></head><body><a href="admin_login.jsp">����</a></body></html>

