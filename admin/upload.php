<?php
require_once '../inc/inc.php';
?>
<style type="text/css">
*{ margin:0; padding:0}
body {background:#fff;font-family:Arial,"宋体", Helvetica, sans-serif; font-size:12px}
a {text-decoration:none;color:#000}
a:hover {color:#f60}
</style>
<?php
if ( $_g['act'] == "read" )
{
	$savePath = SAVE_DIR . $_g['dir'] ."/";
	mk_dir($savePath);
	$pic = date( "YmdHis" );
	$str = $pic;
	if ( $_FILES['file']['name'] != "" )
	{
		$tmp_file = $_FILES['file']['tmp_name'];
		$file_types = explode( ".", $_FILES['file']['name'] );
		$file_type = $file_types[count( $file_types ) - 1];
		$file_name = $str.".".$file_type;
		if ( !copy( $tmp_file, $savePath . $file_name ) )
		{
			$meg = $file_name."上传错误请重试！！";
		}
		else
		{
			$meg = $file_name;
			echo "<font color=red>上传成功</font>
			<script>
				parent.document.form.upload.value='". UP_DIR .$_g['dir'] ."/". $meg."';													
			</script>";
			exit();
		}
	}
	else
	{
		echo "<font color=red> 请选择需要上传的文件 <a href='?dir=".$_g['dir']."'>[返回]</a></font>";
		exit();
	}
}
?>
<form action="upload.php?act=read&dir=<?php echo $_g['dir'];?>" method="post" enctype="multipart/form-data">
	<input name="file" type="file" style="width:250px; height:22px;">
	<input name="Submit" type="submit" value="上传" style="height:25px; width:80px">
</form>
