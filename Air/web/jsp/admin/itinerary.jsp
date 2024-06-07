<%--
  Created by IntelliJ IDEA.
  User: Raisei
  Date: 2021/5/24
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.4/favicon.ico">
    <link rel="canonical" href="https://getbootstrap.com/docs/3.4/examples/dashboard/">

    <title>Itinerary</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.4/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.4/assets/css/ie10-viewport-bug-workaround.css"
          rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.4/examples/dashboard/dashboard.css"
          rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.4/assets/js/ie8-responsive-file-warning.js"></script>
    <![endif]-->
    <script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.4/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <label>
        <form class="form-signin" action="${pageContext.request.contextPath}/admin/addItinerary" method="post">
            <h2 class="form-signin-heading">新增路线</h2>

            <label>起点</label>
            <input type="text" name="origin" class="form-control" required="" autofocus="">

            <label>目的地</label>
            <input type="text" name="destination" class="form-control" required="">

            <label>费用</label>
            <input type="text" name="cost" class="form-control" required="">

            <label>日期</label>
            <input type="text" name="date" class="form-control" required="">

            <label>航空公司</label>
            <input type="text" name="team" class="form-control" required="">

            <button class="btn btn-lg btn-primary btn-block" type="submit">添加</button>
        </form>
    </label>
</div>
</body>
</html>
