<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
  <title>��ӭ����Ա��½��</title>
	<script language="javascript">
	//javascript check���������ڼ�����������û��ǳƺ͵�¼�����Ƿ�Ϊ��
	 function check()
	 {
	  if(document.form1.adminName.value=='')
	  {
	   alert("�û��ǳƲ���Ϊ��!");
	   document.form1.adminName.focus();
	   return false;
	  }
	  else if(document.form1.adminPassword.value=='')
	  {
	   alert("��¼���벻��Ϊ��");
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
    			<td>�û�����</td>
    			<td><input type="text" name="adminName"></td>
    		</tr>
    		
    		<tr>
    			<td>��&nbsp;&nbsp;�룺</td>
    			<td><input type="password" name="adminPassword"></td>
    		</tr>

    		<tr>
    			<td colspan="2" align="center"><input type="submit" value="��¼">&nbsp;
    			&nbsp;&nbsp;&nbsp;<input type="reset" value="����">
    			</td>
    		</tr>

    		<tr>
    			<td colspan="2" align="center" bgcolor="#FF0000"><font color="#ffff00">����Ա��½</font></td>
    		</tr>
    	</table>	
    </form>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <a href="index.jsp" title="���ǹ���Ա���뷵��Ŷ��~">������ҳ</a>
  </body>
</html>
