<%@ page language="java" contentType="text/html; charset=gbk" import="com.jspsmart.upload.*,java.sql.*,java.io.*" %>
<%@ include file="config.jsp"%>
<%@ include file="conn.jsp"%>
<%
	//����BufferedInputStream��BufferedOutputStream�����������
	java.io.BufferedInputStream bis=null;
	java.io.BufferedOutputStream  bos=null;
	try{
	String filename=request.getParameter("filename");
	filename=new String(filename.getBytes("iso8859-1"),"gb2312");	//��"iso8859-1"ǿ��ת��Ϊ"gb2312"
	response.setContentType("application/x-msdownload");
	response.setHeader("Content-disposition","attachment; filename="+new String(filename.getBytes("gb2312"),"iso8859-1"));
	bis =new java.io.BufferedInputStream(new java.io.FileInputStream(config.getServletContext().getRealPath("box/"+id+"/" + filename)));
	bos=new java.io.BufferedOutputStream(response.getOutputStream()); 
	byte[] buff = new byte[2048];
	int bytesRead;
 	while(-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
	bos.write(buff,0,bytesRead);
	}
	}
	catch(Exception e){
	e.printStackTrace();
	}
	finally {
	if (bis != null)bis.close();	//�ر�bis��bos
	if (bos != null)bos.close();
	}
%> 
