<!DOCTYPE html>

<html lang="zh">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="/">
    <link href="//cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="//cdn.bootcss.com/datatables/1.10.16/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <title>商品列表</title>

    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
    <thead>
    <tr>
        <th>id</th>
        <th>商品名称</th>
        <th>价格</th>
        <th>保修政策</th>
        <th>服务价格</th>
        <th>完成时间</th>
        <th>操作</th>
    </tr>
    </thead>
</table>
<script src="//cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//cdn.bootcss.com/datatables/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="//cdn.bootcss.com/datatables/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('#table').DataTable( {
            "oLanguage":{
                "sLengthMenu":"显示 _MENU_ 条记录",
                "sZeroRecords":"没有检索到数据",
                "sInfo":"当前数据为从 _START_ 到 _END_ 条数据；总共有 _TOTAL_ 条记录",
                "sInfoEmpty":"没有数据",
                "sProcessing":"正在加载数据......",
                "sSearch":"查询",
                "sInfoFiltered": "(过滤自 _MAX_ 条记录)",
                "oPaginate":{
                    "sFirst":"首页",
                    "sPrevious":"前页",
                    "sNext":"后页",
                    "sLast":"尾页"
                }
            },
            "ajax": "getAll",
            "columns": [
                { "data": "id" },
                { "data": "name" },
                { "data": "price" },
                { "data": "warranty" },
                { "data": "servicePrice" },
                { "data": "finishDate" }
            ]
        } );
    });


</script>
</body>
</html>