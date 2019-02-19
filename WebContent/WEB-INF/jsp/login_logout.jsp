<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>Success</title>
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
      <h1>Hello! ${login_user.userName}さん</h1>
      <p>Loginに成功しました!</p>
    </div>
    <div>
        <p>
          Logoutは <a href="Logout.action">こちら</a>
        </p>
      </div>
    </div>
</body>
</html>