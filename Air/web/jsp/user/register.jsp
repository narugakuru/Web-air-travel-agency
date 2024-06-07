<%--
  Created by IntelliJ IDEA.
  User: Raisei
  Date: 2021/5/17
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>用户注册</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <label>
        <form class="form-signin" action="${pageContext.request.contextPath}/user/register" method="post">
            <h2 class="form-signin-heading"></h2>

            <label>用户名</label>
            <input type="text" name="account" class="form-control" required="" autofocus="">

            <label>密码</label>
            <input type="password" name="password" class="form-control" required="">

            <label>name</label>
            <input type="text" name="name" class="form-control" required="">

            <label>phone</label>
            <input type="text" name="phone" class="form-control" required="">

            <label>sex</label>
            <input type="text" name="sex" class="form-control" required="">

            <label>age</label>
            <input type="text" name="age" class="form-control" required="">

            <button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
        </form>
    </label>
</div>
</body>
</html>
