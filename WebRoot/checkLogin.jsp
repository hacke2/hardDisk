<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<jsp:useBean id="check" class="com.CheckLogin"/>

<%    

    request.setCharacterEncoding("GBK");
    
    //��ȡ�û��ǳ�
    String userName = request.getParameter("userName");
    
    //��ȡ�û�����
    String userPassword=request.getParameter("userPassword");
    
    //����ȡ�����û���¼��Ϣ�����ݿ��б�����û���Ϣ���бȽ�
    String loginMsg = check.checklogin(userName,userPassword);
    if(loginMsg.equals("SUCCESS_LOGIN")) {	    
	session.setAttribute("user",userName);//����session�����Ա��Ժ�Ե�½����֤
      
      response.sendRedirect("welcome.jsp");      
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
<html><<head><link rel="stylesheet" type="text/css" href="styles.css"></head><body><a href=login.jsp>����</a></body></html>

