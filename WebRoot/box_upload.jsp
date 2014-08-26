<%@ page contentType="text/html; charset=gbk" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="config.jsp"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>上传文件</title>
<SCRIPT LANGUAGE="JavaScript">
<!-- Begin
extArray = new Array(".rar", ".zip");
function LimitAttach(form, file) {
allowSubmit = false;
if (!file) return;
while (file.indexOf("\\") != -1)
file = file.slice(file.indexOf("\\") + 1);
ext = file.slice(file.indexOf(".")).toLowerCase();
for (var i = 0; i < extArray.length; i++) {
if (extArray[i] == ext) { allowSubmit = true; break; }
}
if (allowSubmit) form.submit();
else
alert("对不起，只能上传以下格式的文件:  " 
+ (extArray.join("  ")) + "\n请重新选择符合条件的文件"
+ "再上传.");
}
//  End -->
/*
	验证大小
*/
  var isIE = /msie/i.test(navigator.userAgent) && !window.opera;          
  function fileChange(target) {      
       
    var fileSize = 0;           
    if (isIE && !target.files) {       
      var filePath = target.value;       
      var fileSystem = new ActiveXObject("Scripting.FileSystemObject");          
      var file = fileSystem.GetFile (filePath);       
      fileSize = file.Size;      
    } else {      
     fileSize = target.files[0].size;       
     }     
     var size = fileSize / 1024;      
     if(size>5000){    
      alert("附件不能大于5M");    
         
         
     }    
        
}   
</script>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
<div align="center">
文件上传
</div>
<table width="810" height="241" border="1" align="center">
  <tr>
    <td align="center"><form method=post name=upform action="http://127.0.0.1:8080/KO/box_upload_do.jsp" enctype="multipart/form-data">
      <input type=file name=uploadfile onchange="fileChange(this);"/>
      <p>
        <input type=button name="Submit" value="上传他！" onclick="LimitAttach(this.form, this.form.uploadfile.value)" />
      </p>
    </form></td>
  </tr>
  <tr>
    <td align="center"><table cellspacing="0" cellpadding="0">
      <tr>
        <td height="16"><p> <font color="#ff0000">说明：<br /> 
          1、请上传法律规定的文件；<br /> 
          2、为了安全起见，只允许上传rar和zip压缩包文件，请您在上传非rar或zip文件前将其打包后再上传；<br /> 
          3、单个文件最大容量为5MB </font></p></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>