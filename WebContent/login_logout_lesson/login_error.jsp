<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Sctipt-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>ERROR</title>

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
		  <h1>ログインに失敗しました。</h1>
		  <p>ログイン名またはパスワードが違います</p>
		  <p><a href=login.jsp>ログイン画面に戻る</a></p>
		  <p>新規ユーザー登録は <a href="userCreate.jsp">こちら</a></p>
			</div>
	</div>
</body>
</html>