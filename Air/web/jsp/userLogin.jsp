<%--
  Created by IntelliJ IDEA.
  User: Raisei
  Date: 2021/5/10
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
//    ${pageContext.request.contextPath}/
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Login</title>
    <!-- Bootstrap -->
    <base href="<%=basePath%>"/>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <script src="../js/bootstrap.min.js"></script>

</head>
<body>
    <div class="container">
        <form class="form-signin" action="${pageContext.request.contextPath}/user/doLogin" method="post">
            <h2 class="form-signin-heading">请输入用户名和密码</h2>

            <label>用户名</label>
            <input type="text" name="account" class="form-control" required="" autofocus="">

            <label>密码</label>
            <input type="password" name="password" class="form-control" required="">

            <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        </form>
    </div>
</body>
</html>
