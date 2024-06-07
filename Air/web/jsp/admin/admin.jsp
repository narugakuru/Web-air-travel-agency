<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Raisei
  Date: 2021/5/13
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.4/favicon.ico">
    <link rel="canonical" href="https://getbootstrap.com/docs/3.4/examples/dashboard/">

    <title>User View</title>

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


<%--顶层横向导航栏--%>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">风花雪月旅行社</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/admin/logout">退出</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <label>
                    <input type="text" class="form-control" placeholder="Admin,你好">
                </label>
            </form>
        </div>
    </div>
</nav>

<div class="container">
    <%--侧边选项栏--%>
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="${pageContext.request.contextPath}/admin/queryItinerary">已有路线
                    <span class="sr-only">(current)</span></a></li>
                <li><a href="${pageContext.request.contextPath}/admin/allUsers">用户信息</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/orders">用户订单</a>
                </li>
                <li><a href="${pageContext.request.contextPath}/admin/logout">退出</a></li>
            </ul>
        </div>
    </div>
    <%--内容展示栏--%>
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        <%--订单展示--%>
        <c:if test="${orders!=null}">
            <h2 class="sub-header">用户行程订单</h2>
        </c:if>
        <c:if test="${orders==null}">
            <c:if test="${itineraries!=null}">
                <h2 class="sub-header">已有航空路线</h2>
            </c:if>
            <c:if test="${itineraries==null}">
                <h2 class="sub-header">用户的个人信息</h2>
            </c:if>
        </c:if>
        <%--        所有旅行路线展示--%>
        <c:if test="${itineraries!=null}">
            <div class="table-responsive">
                <div>
                    <h2>
                        <a href="${pageContext.request.contextPath}/admin/toAddItinerary">新增路线</a>
                    </h2>
                </div>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>出发地</th>
                        <th>目的地</th>
                        <th>费用</th>
                        <th>日期</th>
<%--                        <th>状态</th>--%>
                        <th>管理操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${itineraries}" var="itinerary" varStatus="status">
                        <tr>
                            <th scope="row">${status.index+1}</th>
                            <td>${itinerary.origin}</td>
                            <td>${itinerary.destination}</td>
                            <td>${itinerary.cost}</td>
                            <td>${itinerary.date}</td>
<%--                            <td>有票</td>--%>
                            <td>
                                <a href="#">修改航线</a>
                                |
                                <a href="${pageContext.request.contextPath}/admin/deleteItinerary?id=${itinerary.itineraryId}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
        <%--        用户信息展示--%>
        <c:if test="${itineraries==null&&users!=null}">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <td>用户ID</td>
                        <td>用户名</td>
                        <td>账号</td>
                        <td>年龄</td>
                        <td>性别</td>
                        <td>手机号</td>
                        <th>管理操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${users}" var="user" varStatus="status">
                        <tr>
                            <td>${user.userId}</td>
                            <td>${user.name}</td>
                            <td>${user.account}</td>
                            <td>${user.age}</td>
                            <td>${user.sex}</td>
                            <td>${user.phone}</td>
                            <td>
                                <a href="#">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
        <%--    用户订单展示--%>
        <c:if test="${itineraries==null&&orders!=null}">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <td>订单号</td>
                        <td>用户ID</td>
                        <td>路线ID</td>
                            <%--                        <td>队伍ID</td>--%>
                        <th>管理操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${orders}" var="order" varStatus="status">
                        <tr>
                            <td>${order.orderId}</td>
                            <td>${order.userId}</td>
                            <td>${order.itineraryId}</td>
                                <%--                            <td>${order.teamId}</td>--%>
                            <td>
                                <a href="#">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>

    </div>
</div>


</body>

</html>
