<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>UserCreate画面</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>ユーザー登録</p>
		</div>
		<div>
			<form action="UserCreate.service" method="post">
				<p>ユーザー名<input type="text" name="user_name"></p>
				<p>パスワード<input type="password" name="password"></p>
				<p><input type="submit" value="登録"></p>
			</form>
			<br />
			<p>Login画面に戻るには<a href="/Servlet-JSP-lesson/login">こちら</a></p>
		</div>
	</div>
</body>
</html>