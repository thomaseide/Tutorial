<? require "system/config/configure.php"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?=CHARSET;?>" />
<META NAME="desription" CONTENT = "<?=CONF_METADESC;?>">
<META NAME="keywords" CONTENT="<?=CONF_METAKEYWORD;?>">
<title><?=CONF_METATITLE;?></title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="100%" border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="3"><? require "top/top.php"; ?></td>
  </tr>
  <tr>
    <td><? require "left/left.php"; ?></td>
    <td>middle</td>
    <td><? require "right/right.php"; ?></td>
  </tr>
  <tr>
    <td colspan="3"><? require "bottom/bottom.php"; ?></td>
  </tr>
</table>
</body>
</html>
