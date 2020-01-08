<%@page isELIgnored="false" contentType="text/html; utf-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
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
    <script>
        $(function () {
            $("#table").jqGrid({
                styleUI: "Bootstrap",
                url:"${path}/user/query",
                datatype:"json",
                colNames:["id","名字","￥","年龄","生日","部门"],
                autowidth:true,
                pager:"#page",
                rowNum:3,
                viewrecords: true,
                rowList:[3,6,9],
                editurl: "${path}/user/edit",
                cellEdit: false,
                toolbar: [true, "top"],
                colModel:[
                    {
                        name:"id"
                    },
                    {
                        name:"name"
                    },
                    {
                        name:"salary"
                    },
                    {
                        name:"age"
                    },
                    {
                        name:"bir"
                    },
                    {
                        name:"dept"
                    }

                ]

            }).jqGrid("navGrid","#page",{edit:true,del:true,add:true})
        })
    </script>
</head>
<body>

<table id="table"></table>

<div id="page"></div>
</body>
</html>