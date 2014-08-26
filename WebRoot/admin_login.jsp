<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
  <title>欢迎管理员登陆！</title>
	<script language="javascript">
	//javascript check函数，用于检查表单中输入的用户昵称和登录密码是否为空
	 function check()
	 {
	  if(document.form1.adminName.value=='')
	  {
	   alert("用户昵称不能为空!");
	   document.form1.adminName.focus();
	   return false;
	  }
	  else if(document.form1.adminPassword.value=='')
	  {
	   alert("登录密码不能为空");
	   document.form1.adminPassword.focus();
	   return false;
	  }
	  else
	   return true;
	 }
	</script>
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>

  <body>
    <form action="admin_check.jsp" name="form1" method="post" onSubmit="return check(this);">
    	<table align="center" bgcolor="#ff8000">
    		<tr>
    			<td>用户名：</td>
    			<td><input type="text" name="adminName"></td>
    		</tr>
    		
    		<tr>
    			<td>密&nbsp;&nbsp;码：</td>
    			<td><input type="password" name="adminPassword"></td>
    		</tr>

    		<tr>
    			<td colspan="2" align="center"><input type="submit" value="登录">&nbsp;
    			&nbsp;&nbsp;&nbsp;<input type="reset" value="重置">
    			</td>
    		</tr>

    		<tr>
    			<td colspan="2" align="center" bgcolor="#FF0000"><font color="#ffff00">管理员登陆</font></td>
    		</tr>
    	</table>	
    </form>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <a href="index.jsp" title="不是管理员的请返回哦亲~">返回首页</a>
  </body>
</html>
