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
<title>主题列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function del() 
	{
        if (!confirm("确认删除"))
        {
            window.event.returnValue = false;
        }
    }
</script>
</head>
<body style="background:#fff">
<div class="adminloops">
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="table">
	<tr>
		<th colspan="4">主题列表</th>
	</tr>
	<tr>
		<td width="50">序号</td>
		<td width="150">标题</td>
		<td width="350">内容</td>
		<td>状态</td>
		<td>操作</td>
	</tr>
<?php
	$page   = empty($_g['page']) ? '1' : intval($_g['page']);
	$result = mysql_query("SELECT * FROM `posts`");
	$count  = mysql_num_rows($result);
	$pager  = get_page("?", array(), $count, $page, 10);
	$query  = mysql_query("SELECT * FROM `posts` Order BY `id` desc limit {$pager['start']},{$pager['size']}");
	$i=0;
	while ($row = mysql_fetch_array($query)):
		$i++;
?>
	<tr>
		<td><?php echo $i ?></td>
		<td><?php echo $row['title'] ?></td>
		<td><?php echo $row['conts'] ?></td>
		<td><?php echo $row['status'] ? '已审核' : '未审核';?></td>
		<td>
			<a target="_blank" href="../posts.php?id=<?php echo $row['id'] ?>">查看</a>&nbsp;
			<a href="actions.php?act=posts.confirm&id=<?php echo $row['id'] ?>">审核</a>&nbsp;
			<a href="actions.php?act=posts.del&id=<?php echo $row['id'] ?>" onclick="del();">删除</a>
		</td>
	</tr>
	
	<?php endwhile ?>
</table>
<?php require '../page.php';?>
</div>
</body>
</html>
