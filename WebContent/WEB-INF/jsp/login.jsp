<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>Login</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>Login</p>
		</div>
		<div>
			<form method="post" action="Login.action">
				<p>ユーザー名<input type="text" name="user_name"></p>
				<p>パスワード<input type="password" name="password"></p>
				<p><input type="submit" value="ログイン"></p>
			</form>
			<br />
			<p>新規ユーザー登録は <a href="/Servlet-JSP-lesson/userCreate">こちら</a></p>
		</div>
	</div>
</body>
</html>