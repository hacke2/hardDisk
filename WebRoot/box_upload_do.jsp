<%@ page contentType="text/html; charset=gbk" language="java"
	import="java.util.*,com.jspsmart.upload.SmartUpload" errorPage=""%>
<%@ include file="conn.jsp"%>
<%@ include file="config.jsp"%>

<%
	// 新建一个SmartUpload对象
	SmartUpload su = new SmartUpload();
	// 上传初始化
	su.initialize(pageContext);
	// 设定上传限制
	// 1.限制每个上传文件的最大长度。
	su.setMaxFileSize(5000000);
	// 2.限制总上传数据的长度。
	su.setTotalMaxFileSize(150000000);
	// 3.设定允许上传的文件（通过扩展名限制）。
	su.setAllowedFilesList("rar,zip");
	// 4.设定禁止上传的文件（通过扩展名限制）,禁止上传带有exe,bat,jsp,htm,html扩展名的文件和没有扩展名的文件。
	su.setDeniedFilesList("exe,bat,jsp,htm,html,asp,php,com");
	// 上传文件
	su.upload();
	// 将上传文件全部保存到指定目录

	String cqutroot = dirPath.replace('\\', '/');

	su.save(cqutroot + "box/" + id);
	out.print("<script>");
	out.print("alert('文件上传成功！');");
	out.print("location.href='welcome.jsp';");
	out.print("</script>");
%>