<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��¼�����￪ʼ</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="styles.css">

	<script language="javascript">
	//javascript check���������ڼ�����������û��ǳƺ͵�¼�����Ƿ�Ϊ��
	 function check()
	 {
	  if(document.form1.userName.value=='')
	  {
	   alert("�û��ǳƲ���Ϊ��!");
	   document.form1.userName.focus();
	   return false;
	  }
	  else if(document.form1.userPassword.value=='')
	  {
	   alert("��¼���벻��Ϊ��");
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
    			<td>�û�����</td>
    			<td><input type="text" name="userName"></td>
    		</tr>
    		<br/>
    		<tr>
    			<td>��&nbsp;&nbsp;�룺</td>
    			<td><input type="password" name="userPassword"></td>
    		</tr>
    		<br/>
    		<tr>
    			<td colspan="2" align="center"><input type="submit" value="��¼">&nbsp;
    			&nbsp;&nbsp;&nbsp;<input type="reset" value="����">
    			</td>
    		</tr>
    		<br/>
    		<tr>
    			<td colspan="2"><a href="register.jsp">��û��ע�ᣬ����ע��</a></td>
    		</tr>
    	</table>	
    </form>
  </body>
</html>
