<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<jsp:useBean id="check" class="com.CheckAdmin"/>

<%    
	//POST提交方式的解决中文乱码问题
    request.setCharacterEncoding("GBK");
    
    //获取用户昵称
    String adminName = request.getParameter("adminName");
    
    //获取用户密码
    String adminPassword=request.getParameter("adminPassword");
    
    //将获取到的用户登录信息与数据库中保存的用户信息进行比较
    String loginMsg = check.checklogin(adminName,adminPassword);
    if(loginMsg.equals("SUCCESS_LOGIN"))
    {
      session.setAttribute("admin",adminName);//建立session对象以便以后对登陆作验证
      
      response.sendRedirect("admin.jsp");      
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
  <html><head><link rel="stylesheet" type="text/css" href="styles.css"></head><body><a href="admin_login.jsp">返回</a></body></html>

