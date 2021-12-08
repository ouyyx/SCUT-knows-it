//网页导航栏


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo WEB_NAME ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="css/css/base.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wrapper">
  <!-- <div class="header">
    <div class="logo"><a href="index.php">首页</a></div>
  </div> -->
  <ul class="navs">
    <li><a href="index.php"><img src="css/logo.jpg" style="height:50px;" alt=""></a></li>
    <li><a href="index.php">网站首页</a></li>
    
    <?php $nav = get_list("select * from `cat` order by `id` asc") ?>
    
    <?php foreach($nav as $v): ?>
      <li><a href="cat.php?id=<?php echo $v['id']?>"><?php echo $v['name']?></a></li>
    <?php endforeach ?>
    <li><a href="books.php">留言板</a></li>
    
    
    
    <?php if ( ! isset($_s['user_login'])): ?>
        <li style="margin-left:220px;"><a href="reg.php" style="color:#fff"><b>注册</b></a></li>
        <li><a href="login.php" style="color:#fff"><b>登录</b></a></li>
    <?php endif ?>
  </ul> 
    <?php if ( isset($_s['user_login'])): ?>
        <div style="padding:10px 0 0 0; text-align:right">
          <?php echo $_s['user_name'] ?>，欢迎登陆！
          <a style="color:#000" href="user_info.php">我的资料</a>&nbsp;
          <a style="color:#000" href="user_friend.php">我的好友</a>&nbsp;
          <a style="color:#000" href="user_msg.php">站内消息</a>&nbsp;
          <a style="color:#000" href="user_reset_pwd.php">修改密码</a>&nbsp;
          <a style="color:#000" href="logout.php">退出</a>&nbsp;
        </div>
    <?php endif ?>
</div>