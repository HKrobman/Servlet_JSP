<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>Login</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-self;
	font-size: 12px;
	color: #333;
	background: #fff;
}

#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
}

#header {
	width: 100%;
	height: 80px;
	background-color: black;
}

#main {
	width: 100%;
	height: 500px;
	text-align: center;
}

</style>
</head>
<body>
	<div id="header">
		<div id="pr"></div>
	</div>
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
				<p>
					新規ユーザー登録は <a href="/Servlet-JSP-lesson/userCreate">こちら</a>
				</p>
			</div>
		</div>
</body>
</html>