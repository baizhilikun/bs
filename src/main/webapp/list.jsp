<%@page isELIgnored="false" contentType="text/html; utf-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
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
                cellEdit: true,
                toolbar: [true, "top"],
                colModel:[
                    {
                        name:"id",
                    },
                    {
                        name:"name",editable:true
                    },
                    {
                        name:"salary",editable:true
                    },
                    {
                        name:"age",editable:true
                    },
                    {
                        name:"bir",editable:true
                    },
                    {
                        name:"dept",editable:true
                    }

                ]

            }).jqGrid("navGrid","#page",{edit:true,del:true,add:true})
        })
    </script>

</head>

<table id="table"></table>

    <div id="page"></div>

