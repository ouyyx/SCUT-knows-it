//用户注册





<?php require_once 'inc/inc.php'; ?>

<?php include  'header.php'; ?>


<div class="wrapper">
  	<form action="admin/actions.php?act=user.add" method="post" name="form">
  	<table cellpadding="0" cellspacing="0" border="0" width="100%" class="table">
		<tr>
			<th colspan="2">用户注册</th>
		</tr>
		<tr>
			<td>帐号</td>
			<td>
				<input type="text" name="passport" style="width:200px" />
			</td>
		</tr>
		<tr>
			<td>头像地址</td>
			<td>
				<input type="text" name="upload" style="width:500px" />
			</td>
		</tr>
		<tr>
			<td>上传头像</td>
			<td>
				<iframe src="admin/upload.php?dir=images" width="400" height="25" frameborder="0" scrolling="no"></iframe>
			</td>
		</tr>
		<tr>
			<td>密码</td>
			<td>
				<input type="password" name="pwd1" style="width:200px" />
			</td>
		</tr>
		<tr>
			<td>重复密码</td>
			<td>
				<input type="password" name="pwd2" style="width:200px" />
			</td>
		</tr>
		<tr>
			<td>性别</td>
			<td>
				<input type="radio" name="sex" value="男" />男&nbsp;&nbsp;&nbsp;
				<input type="radio" name="sex" value="女" />女
			</td>
		</tr>
		<tr>
			<td>生日</td>
			<td>
				<input type="date" name="btd" style="width:200px" />格式 1992-01-01
			</td>
		</tr>
		<tr>
			<td>qq</td>
			<td>
				<input type="text" name="qq" style="width:200px" />
			</td>
		</tr>
		<tr>
			<td>地址</td>
			<td>
				<input type="text" name="addr" style="width:200px" />
			</td>
		</tr>
		<tr>
			<td width="120">&nbsp;</td>
			<td><input type="submit" value="提交" class="submit"></td>
		</tr>
	</table>
  	</form>
</div>

<?php include  'footer.php'; ?>
</body>
</html>
