<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="GB18030" import="java.sql.*,java.util.*,java.io.*"%>
<%@ include file="config.jsp"%>
<%@ include file="conn.jsp"%>
<%

	String cqutroot=dirPath.replace('\\','/');	//将dirPath的"\\"全替换为"/"
 	try {
 	//处理成中文字符	
	String filename=codeToString(request.getParameter("filename"));	
	String action=codeToString(request.getParameter("action"));

if(filename==null)
{
         out.print("<script>");
         out.print("alert('filename错误！');");
         out.print("location.href='welcome.jsp';");
         out.print("</script>");
}
if(action==null)
{
         out.print("<script>");
         out.print("alert('action错误！');");
         out.print("location.href='box.jsp';");
         out.print("</script>");
}
action=request.getParameter("action");
if(action.equals("del"))
  {
    File delfile=new File(cqutroot+"box/"+id+"/"+filename);
    delfile.delete();
    out.print("<script>");
    out.print("alert('删除成功！');");
    out.print("location.href='welcome.jsp';");
    out.print("</script>");
  }
if(action.equals("confirm"))
  {
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>确认删除文件？</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
<table width="646" height="345" border="1" align="center">
  <tr>
    <td><p align="center"><font color="#ff0000"><strong>确认删除<%=filename%>？</strong></font></p></td>
  </tr>
  <tr>
    <td><div align="center">
      <input type="button" value="提交" name="B1" onClick="javascript:location.href='box_del.jsp?action=del&filename=<%=filename%>';">
&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="返回" name="B2" onClick="javascript:location.href='welcome.jsp';">
    </div></td>
  </tr>
</table>
</body>
</html>
<%
}
else
{
        out.print("<script>");
        out.print("location.href='welcome.jsp';");
        out.print("</script>");
}
}
catch(Exception e)
{
        out.print("<script>");
        out.print("location.href='welcome.jsp';");
        out.print("</script>");
}
%>