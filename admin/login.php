<?php
require("../inc/inc.php");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理员登陆</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/css/admin.css" rel="stylesheet" type="text/css">
</head>

<?php
if (isset($_s['admin_login']))
{
	echo "<script>location.href='index.php';</script>";
	exit;	
}

if(isset($_g['act']) and $_g['act']=="login")
{
	$vcode = isset($_s['__VCODE__']) ? $_s['__VCODE__'] : '';
	
	if($_p['passport']=="")
	{
		echo "<script>alert('请填写管理帐号！');location.href='?';</script>";
		exit;		
	}
	if($_p['password']=="")
	{
		echo "<script>alert('请填写管理密码！');location.href='?';</script>";	
		exit;	
	}
	if($_p['vcode']!=$vcode)
	{
		echo "<script>alert('验证码错误！');location.href='?';</script>";	
		exit;	
	}
	$num = get_row("select * from `admin` where `passport`='{$_p['passport']}' and `password`='{$_p['password']}'");
	if($num == 0)
	{
		echo "<script>alert('帐号或密码错误，请重新登录！');history.back()</script>";
		exit;
	}
	else
	{
		$admin_info = get_one("select * from `admin` where `passport`='{$_p['passport']}' and `password`='{$_p['password']}'");
		
		$_SESSION['admin_login'] = true;
		$_SESSION['admin_id']    = $admin_info['id'];
		$_SESSION['admin_name']  = $admin_info['passport'];
		
		echo "<script>alert('登录成功！');location.href='index.php';</script>";
		exit;	
	}
}
?>


<body style="background:#1873AA">
	<div class="loginloop">
	  <form method="post" action="?act=login" >
	  	<div style="padding:137px 0 0 260px; width:304px">
	  		<input name="passport" type="text" style="width:150px;height:20px;border:0;background:none" />
	  	</div>
	  	<div style="padding:11px 0 0 260px; width:304px">
	  		<input name="password" type="password" style="width:150px;height:20px;border:0;background:none" />
	  	</div>
	  	<div style="padding:13px 0 0 260px; width:304px; height:20px;">
	  		<input type="text" name="vcode" style="width:90px;height:20px;border:0;background:none; margin-right:10px;float:left;" />
	  		<img src="../inc/vcode.php?<?php echo time() ?>" title="点击更换图片" onclick="this.src='../inc/vcode.php?'+Math.random();" height="20" width="60" style="float:left" />
	  	</div>
	  	<div style="padding:11px 0 0 260px; width:304px; height:20px;">
	  		<input type="submit" value="&nbsp;" style="width:90px;height:20px;border:0;background:none;" />
	  	</div>
	  </form>
	</div>
</body>
</html>
