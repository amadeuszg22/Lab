<html>
<body>
<?php
echo "test";
$link = mysql_connect('localhost', 'root', '123');
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully';
mysql_close($link);

?>
<hr />
</body>
</html>
