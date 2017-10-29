





<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="http://portal.gd165.com:80/">

		<title>main</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="w" type="text/css" href="styles.css">
	-->
	</head>

<script type="text/javascript">
	function getBasInfo() {
		var url = window.parent.location.href;
		document.getElementById("basPushUrl").value = url;
		document.forms[0].submit();
	}
</script>
<html>
	<body onload="getBasInfo()">
		<form action="http://portal.gd165.com:80/index.do" method="post">
			<input name="basPushUrl" id="basPushUrl" type="hidden">
			<input type="hidden" name="debugua" value="">
			<input type="hidden" name="testmacauth" value="false">
		</form>
	</body>
</html>

