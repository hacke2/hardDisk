<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.CheckLogin"%>
<jsp:useBean id="check" class="com.CheckLogin"/>
<html>
  <head>
       <title>注册吧^_^</title>
       <link rel="stylesheet" type="text/css" href="styles.css">
  </head>

  <body>
 <%    

    request.setCharacterEncoding("gbk");
    
    //获取用户昵称
    String userName = request.getParameter("userName");
    
    //获取用户密码
    String userPassword=request.getParameter("userPassword");
    
    //将获取到的用户登录信息与数据库中保存的用户信息进行比较
    String loginMsg = check.checklogin(userName,userPassword);
    if(loginMsg.equals("SUCCESS_LOGIN"))
    {
      out.println("该用户已经存在，请重新选择用户名");      
    }
    else if(loginMsg.equals("WRONG_PASSWORD"))
    {
      out.println("该用户已经存在，请重新选择用户名");
    }
    else if(loginMsg.equals("NONE_USER"))
    {
            boolean sf = check.saveToDataBase(userName,userPassword);
            if(sf)
            {      
            	out.println("注册成功");
       %>
       		 <br>
             <a href="login.jsp">返回登录</a>
       <%
            }
    }
    else
    {
        out.println("该用户名已经存在，请选择另一个用户名注册");
    }    
  %>
  </body>
</html>
