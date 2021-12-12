//站内好友






<?php require_once 'inc/inc.php'; ?>
<?php include  'header.php'; ?>

<?php if(! isset($_s['user_login']))
{
	echo ("<script>alert('请先登录');location.href='index.php';</script>");
	exit;
} 


$page   = empty($_g['page']) ? '1' : intval($_g['page']);
$result = mysql_query("select * from `friends` where `f_user` = {$_s['user_id']}");
$count  = mysql_num_rows($result);
$pager  = get_page("?", array(), $count, $page, 24);
$_list  = get_list("select * from `friends` where `f_user` = {$_s['user_id']} order by `id` desc limit {$pager['start']},{$pager['size']};");



?>


<div class="wrapper">
  		<?php if ($_list): ?>
  			
			<?php foreach ($_list as $k => $v): ?>
			<div style="float:left; width: 150px; padding:0 0 20px 0;">
				<?php $tuser = get_one("select * from `users` where id = {$v['t_user']}") ?>
				<?php if ($tuser['avatar']): ?>
				<img src="<?php echo base_url($tuser['avatar']) ?>" height="100" width="100">
					<?php else: ?>
				<img src="<?php echo base_url('css/no_face.jpg') ?>" height="100" width="100">
				<?php endif ?>
				<p><?php echo $tuser['passport'] ?></p>
				<p><a href="user_msg.php?tuser_id=<?php echo $v['t_user']?>">发信息</a></p>
				<p><a href="admin/actions.php?act=friend.del&tuser_id=<?php echo $v['t_user']?>">删除</a></p>
			</div>
			<?php endforeach ?>
			<div class="clear"></div>
<?php else: ?>
	暂无好友
  		<?php endif ?>
</div>

<?php include  'footer.php'; ?>
</body>
</html>
