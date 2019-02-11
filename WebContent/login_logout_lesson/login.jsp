<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Sctipt-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
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
			<form action="Login.action" method="post">
				<p>ユーザー名<input type="text" name="user_name"></p>
				<p>パスワード<input type="password" name="password"></p>
				<p><input type="submit" value="ログイン"></p>
			</form>
			<br />
			<div id="text-link">
				<p>
					新規ユーザー登録は <a href="userCreate.jsp">こちら</a>
				</p>
			</div>
		</div>
	</div>

</body>
</html>