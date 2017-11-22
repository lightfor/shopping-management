<!DOCTYPE html>

<html lang="zh">
<head>
    <base href="${request.contextPath}">
    <script type="text/ecmascript" src="jquery/jquery.min.js"></script>
    <script type="text/ecmascript" src="jqgrid/i18n/grid.locale-cn.js"></script>
    <script type="text/ecmascript" src="jqgrid/jquery.jqGrid.min.js"></script>
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" media="screen"
          href="jqgrid/css/ui.jqgrid-bootstrap.css"/>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <script src="bootstrap/bootstrap.min.js"></script>
    <script src="js/common.js"></script>
    <meta charset="utf-8"/>
    <title>商品列表</title>
</head>
<body>
<div>
    <table id="jqGrid"></table>
    <div id="jqGridPager"></div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $("#jqGrid").jqGrid({
            url: 'getAll',
            mtype: "GET",
            datatype: "json",
            colModel: [
                {label: 'id', name: 'id', key: true, width: 75},
                {label: '商品名称', name: 'name', width: 150},
                {label: '价格', name: 'price', width: 150},
                {label: '保修政策', name: 'warranty', width: 150},
                {label: '服务价格', name: 'servicePrice', width: 150},
                {label: '完成时间', name: 'finishDate', width: 150},
                {label: '操作', name: '', width: 150, formatter : linkBtn}
            ],
            viewrecords: true,
            height: 320,
            rowNum: 10,
            page : 1,
            rowList : [ 10, 20, 50, 100 ],
            pager: "#jqGridPager"
        });
    });

    linkBtn = function(cellvalue, options, rowObject) {
        var html = '';
        if (rowObject) {
            var id = rowObject.id;
            var editBtn = '<a href="javascript:;" onclick="toUpd(' + id + ')" class="btn btn-xs green">' +
                    '<i class="fa fa-edit"></i></a>';

            var delBtn = '<a href="javascript:;" onclick="doDel(' + id + ')" class="btn btn-xs red">' +
                    '<i class="fa fa-remove"></i></a>';

            html += editBtn + delBtn;
        }

        return html;
    }

</script>


</body>
</html>