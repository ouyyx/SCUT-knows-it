
<?php
require("../inc/inc.php");
if(! isset($_s['admin_login']))
{	
	echo ("<script>location.href='login.php';</script>");
	exit;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>欢迎登陆</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/css/admin.css" rel="stylesheet" type="text/css">
</head>
<body style="background:#fff">
<div class="adminloops">
	<form action="actions.php?act=admin_pwd.edit" method="post">
		<table cellpadding="0" cellspacing="0" border="0" width="100%" class="table">
			<tr>
				<th colspan="2">修改密码</th>
			</tr>
			<tr>
				<td>当前密码</td>
				<td><input type="password" name="pwd1" /></td>
			</tr>
			<tr>
				<td>新密码</td>
				<td><input type="password" name="pwd2" /></td>
			</tr>
			<tr>
				<td>重复新密码</td>
				<td><input type="password" name="pwd3" /></td>
			</tr>
			<tr>
				<td width="120">&nbsp;</td>
				<td><input type="submit" value="提交" class="submit" /></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
