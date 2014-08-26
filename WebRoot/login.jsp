<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录从这里开始</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="styles.css">

	<script language="javascript">
	//javascript check函数，用于检查表单中输入的用户昵称和登录密码是否为空
	 function check()
	 {
	  if(document.form1.userName.value=='')
	  {
	   alert("用户昵称不能为空!");
	   document.form1.userName.focus();
	   return false;
	  }
	  else if(document.form1.userPassword.value=='')
	  {
	   alert("登录密码不能为空");
	   document.form1.userPassword.focus();
	   return false;
	  }
	  else
	   return true;
	 }
	</script>
  </head>
  <body>
    <form action="checkLogin.jsp" name="form1" method="post" onSubmit="return check()">
    	<table align="center" bgcolor="#ff8000">
    		<tr>
    			<td>用户名：</td>
    			<td><input type="text" name="userName"></td>
    		</tr>
    		<br/>
    		<tr>
    			<td>密&nbsp;&nbsp;码：</td>
    			<td><input type="password" name="userPassword"></td>
    		</tr>
    		<br/>
    		<tr>
    			<td colspan="2" align="center"><input type="submit" value="登录">&nbsp;
    			&nbsp;&nbsp;&nbsp;<input type="reset" value="重置">
    			</td>
    		</tr>
    		<br/>
    		<tr>
    			<td colspan="2"><a href="register.jsp">还没有注册，请先注册</a></td>
    		</tr>
    	</table>	
    </form>
  </body>
</html>
