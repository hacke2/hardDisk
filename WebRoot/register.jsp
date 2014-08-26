<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html>
<head>
<title>用户注册</title>
<script>
	function checkform()
	{
	              flag=1;           
             if (document.info.userName.value=="")
             {
             alert("请输入用户名");
             document.info.userName.focus();
             flag=0;
             return false;
             }
             if(document.info.userPassword.value=="")
             {
              alert("请输入密码");
              document.info.userPassword.focus();
              flag=0;
              return false;
             }
             if(document.info.userPassword.value=="")
             {
               alert("请输入确认密码");
               document.info.RuserPassword.focus();
               flag=0;
               return false;
             }
			 if(document.info.userPassword.value!=document.info.RuserPassword.value)
             {
                alert("两次密码不同,");
                document.info.userPassword.value="";
                document.info.RuserPassword.value="";
                flag=0;
             }
			 if(flag==1)
             {
                document.info.submit();
             }
               
	}

</script>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
<h1 align="center">注册</h1>
<form action="register_post.jsp" name="info" method="post">
<table align="center" bgcolor="#8000ff">
  <tr>
    <td>用户名：</td>
    <td><input type="text" name="userName" value=""/></td>
  </tr>
  <tr>
    <td>密  码：</td>
    <td><input type="password" name="userPassword" value=""/></td>
  </tr>
  <tr>
    <td>确认密码：</td>
    <td><input type="password" name="RuserPassword" value=""/></td>
  </tr>
  <tr>
    <td colspan="2"><input type="button" value="提交" OnClick="return checkform();"/>
    &nbsp;&nbsp;<input type="reset" value="重置" />
  </tr>
</table>
</form>
</body>
</html>
