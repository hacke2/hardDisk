<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.CheckLogin"%>
<jsp:useBean id="check" class="com.CheckLogin"/>
<html>
  <head>
       <title>ע���^_^</title>
       <link rel="stylesheet" type="text/css" href="styles.css">
  </head>

  <body>
 <%    

    request.setCharacterEncoding("gbk");
    
    //��ȡ�û��ǳ�
    String userName = request.getParameter("userName");
    
    //��ȡ�û�����
    String userPassword=request.getParameter("userPassword");
    
    //����ȡ�����û���¼��Ϣ�����ݿ��б�����û���Ϣ���бȽ�
    String loginMsg = check.checklogin(userName,userPassword);
    if(loginMsg.equals("SUCCESS_LOGIN"))
    {
      out.println("���û��Ѿ����ڣ�������ѡ���û���");      
    }
    else if(loginMsg.equals("WRONG_PASSWORD"))
    {
      out.println("���û��Ѿ����ڣ�������ѡ���û���");
    }
    else if(loginMsg.equals("NONE_USER"))
    {
            boolean sf = check.saveToDataBase(userName,userPassword);
            if(sf)
            {      
            	out.println("ע��ɹ�");
       %>
       		 <br>
             <a href="login.jsp">���ص�¼</a>
       <%
            }
    }
    else
    {
        out.println("���û����Ѿ����ڣ���ѡ����һ���û���ע��");
    }    
  %>
  </body>
</html>
