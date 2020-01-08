<%--
  Created by IntelliJ IDEA.
  User: LiQian
  Date: 2019/11/28
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <%--引入bootstrap的css--%>
    <link rel="stylesheet" href="./statics/boot/css/bootstrap.min.css">
    <%--引入bootstrap和jqgrid的核心css--%>
    <link rel="stylesheet" href="./statics/jqgrid/css/trirand/ui.jqgrid-bootstrap.css">
    <%--引入jquery的css--%>
    <script src="./statics/boot/js/jquery-3.3.1.min.js"></script>
    <%--引入bootstrap的js--%>
    <script src="./statics/boot/js/bootstrap.min.js"></script>
    <%--引入jqgrid的核心js--%>
    <script src="./statics/jqgrid/js/trirand/src/jquery.jqGrid.js"></script>
    <%--引入jqgridg国际化js--%>
    <script src="./statics/jqgrid/js/trirand/i18n/grid.locale-cn.js"></script>


</head>
<body>
    <jsp:include page="/"/>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-2">
            <jsp:include page=""/>
        </div>
        <div class="col-lg-10" id="mainContent">
            <jsp:include page="/"/>
        </div>
    </div>
</div>
</body>
</html>
