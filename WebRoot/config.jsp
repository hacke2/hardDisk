<%@ page language="java" contentType="text/html; charset=gbk"%>

<%
	//��ȡ�����ļ��еľ���·��

	String dirPath=application.getRealPath(request.getRequestURI());
	dirPath=dirPath.substring(0,dirPath.lastIndexOf('\\')+1);
	dirPath=dirPath.substring(0,dirPath.lastIndexOf('\\'));
	dirPath=dirPath.substring(0,dirPath.lastIndexOf('\\')+1);
	%>

	<%!
	//���崦�������ַ����ĺ���
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
