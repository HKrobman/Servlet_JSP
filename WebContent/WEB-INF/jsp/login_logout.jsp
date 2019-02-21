<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>Success</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<h1>Hello! ${login_user.userName}さん</h1>
			<p>Loginに成功しました!</p>
		</div>
		<div>
			<p>Logoutは <a href="Logout.service">こちら</a></p>
		</div>
	</div>
</body>
</html>