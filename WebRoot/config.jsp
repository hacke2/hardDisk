<%@ page language="java" contentType="text/html; charset=gbk"%>

<%
	//获取程序文件夹的绝对路径

	String dirPath=application.getRealPath(request.getRequestURI());
	dirPath=dirPath.substring(0,dirPath.lastIndexOf('\\')+1);
	dirPath=dirPath.substring(0,dirPath.lastIndexOf('\\'));
	dirPath=dirPath.substring(0,dirPath.lastIndexOf('\\')+1);
	%>

	<%!
	//定义处理中文字符串的函数
	public String codeToString(String str01) throws Exception {
	String s=str01;
	if(true) {
    try
    {
      byte tempB[]=s.getBytes("ISO-8859-1");
      s=new String(tempB);
    }
    catch(Exception e)
    {
       s=str01;
    }  
  }
  return s;
}
%>
