<%--
  Created by IntelliJ IDEA.
  User: Raisei
  Date: 2021/5/6
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Login</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <style type="text/css">
        h2 {
            text-align: center;
            line-height: 38px;
            background: azure;
        }
    </style>
</head>
<body background="image/light.png">
<div class="container">
    <form class="form-signin" action="${pageContext.request.contextPath}/user/doLogin" method="post">
        <h2 class="form-signin-heading">欢迎来到罗罗航空社</h2>

            <label>用户名</label>
            <input type="text" name="account" class="form-control" required="" autofocus="">
            <label>密码</label>
            <input type="password" name="password" class="form-control" required="">

        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    </form>
    <form class="form-signin" action="${pageContext.request.contextPath}/user/toRegister" method="post">
        <button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
    </form>
    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">© 2021–2021 罗罗航空社</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
    </footer>
</div>
</body>
</html>
