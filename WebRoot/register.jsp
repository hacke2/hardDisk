<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html>
<head>
<title>�û�ע��</title>
<script>
	function checkform()
	{
	              flag=1;           
             if (document.info.userName.value=="")
             {
             alert("�������û���");
             document.info.userName.focus();
             flag=0;
             return false;
             }
             if(document.info.userPassword.value=="")
             {
              alert("����������");
              document.info.userPassword.focus();
              flag=0;
              return false;
             }
             if(document.info.userPassword.value=="")
             {
               alert("������ȷ������");
               document.info.RuserPassword.focus();
               flag=0;
               return false;
             }
			 if(document.info.userPassword.value!=document.info.RuserPassword.value)
             {
                alert("�������벻ͬ,");
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
<h1 align="center">ע��</h1>
<form action="register_post.jsp" name="info" method="post">
<table align="center" bgcolor="#8000ff">
  <tr>
    <td>�û�����</td>
    <td><input type="text" name="userName" value=""/></td>
  </tr>
  <tr>
    <td>��  �룺</td>
    <td><input type="password" name="userPassword" value=""/></td>
  </tr>
  <tr>
    <td>ȷ�����룺</td>
    <td><input type="password" name="RuserPassword" value=""/></td>
  </tr>
  <tr>
    <td colspan="2"><input type="button" value="�ύ" OnClick="return checkform();"/>
    &nbsp;&nbsp;<input type="reset" value="����" />
  </tr>
</table>
</form>
</body>
</html>
