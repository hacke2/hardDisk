<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<jsp:useBean id="check" class="com.CheckLogin"/>

<%    

    request.setCharacterEncoding("GBK");
    
    //获取用户昵称
    String userName = request.getParameter("userName");
    
    //获取用户密码
    String userPassword=request.getParameter("userPassword");
    
    //将获取到的用户登录信息与数据库中保存的用户信息进行比较
    String loginMsg = check.checklogin(userName,userPassword);
    if(loginMsg.equals("SUCCESS_LOGIN")) {	    
	session.setAttribute("user",userName);//建立session对象以便以后对登陆作验证
      
      response.sendRedirect("welcome.jsp");      
    }
    else if(loginMsg.equals("WRONG_PASSWORD"))
    {
      out.println("你输入的用户名或密码错误，请检正后重新输入");
    }
    else if(loginMsg.equals("NONE_USER"))
    {
        out.println("用户名不存在！！！");
    }    
  %>
<html><<head><link rel="stylesheet" type="text/css" href="styles.css"></head><body><a href=login.jsp>返回</a></body></html>

