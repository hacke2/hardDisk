<%@ page contentType="text/html; charset=gbk" language="java"
	import="java.util.*,com.jspsmart.upload.SmartUpload" errorPage=""%>
<%@ include file="conn.jsp"%>
<%@ include file="config.jsp"%>

<%
	// �½�һ��SmartUpload����
	SmartUpload su = new SmartUpload();
	// �ϴ���ʼ��
	su.initialize(pageContext);
	// �趨�ϴ�����
	// 1.����ÿ���ϴ��ļ�����󳤶ȡ�
	su.setMaxFileSize(5000000);
	// 2.�������ϴ����ݵĳ��ȡ�
	su.setTotalMaxFileSize(150000000);
	// 3.�趨�����ϴ����ļ���ͨ����չ�����ƣ���
	su.setAllowedFilesList("rar,zip");
	// 4.�趨��ֹ�ϴ����ļ���ͨ����չ�����ƣ�,��ֹ�ϴ�����exe,bat,jsp,htm,html��չ�����ļ���û����չ�����ļ���
	su.setDeniedFilesList("exe,bat,jsp,htm,html,asp,php,com");
	// �ϴ��ļ�
	su.upload();
	// ���ϴ��ļ�ȫ�����浽ָ��Ŀ¼

	String cqutroot = dirPath.replace('\\', '/');

	su.save(cqutroot + "box/" + id);
	out.print("<script>");
	out.print("alert('�ļ��ϴ��ɹ���');");
	out.print("location.href='welcome.jsp';");
	out.print("</script>");
%>