//退出登录


<?php
session_start();
header("Content-type:text/html;charset=gb2312");
unset($_SESSION['user_login']);
unset($_SESSION['user_id']);
unset($_SESSION['user_name']);
echo "<script>alert('退出成功！');</script>";
echo "<script>location.href='index.php';</script>";
?>