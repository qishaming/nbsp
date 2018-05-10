<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/10
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>Title</title>
    <link href="<%=request.getContextPath() %>/zq/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Bootstrap 核心css -->

    <link href="<%=request.getContextPath() %>/zq/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap TreeView css -->

    <link href="<%=request.getContextPath() %>/zq/js/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">



    <!-- Bootstrap addTabs css -->

    <link href="<%=request.getContextPath() %>/zq/js/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">



    <!-- Bootstrap table css -->

    <link href="<%=request.getContextPath() %>/zq/js/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">

    <!-- bootstrap-datetimepicker css -->
    <link href="<%=request.getContextPath() %>/zq/js/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <!-- bootstrap-dialog css -->
    <link href="<%=request.getContextPath() %>/zq/js/bootstrap-dialog/dist/css/bootstrap-dialog.css" rel="stylesheet">
    <!-- bootstrap-fileinput css -->
    <link href="<%=request.getContextPath() %>/zq/js/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">
</head>

<body>




<script src="<%=request.getContextPath() %>/zq/js/jquery.min.js"></script>
<!-- bootstrap 核心js文件 -->
<script src="<%=request.getContextPath() %>/zq/js/bootstrap/js/bootstrap.min.js"></script>
<!-- bootStrap TreeView -->
<script src="<%=request.getContextPath() %>/zq/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<!-- bootStrap addTabs -->
<script src="<%=request.getContextPath() %>/zq/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>
<!-- bootStrap table -->
<script src="<%=request.getContextPath() %>/zq/js/bootstrap-table/dist/bootstrap-table.js"></script>
<!-- bootStrap table 语言包中文-->
<script src="<%=request.getContextPath() %>/zq/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<!-- bootstrap-datetimepicker -->
<script src="<%=request.getContextPath() %>/zq/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="<%=request.getContextPath() %>/zq/js/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<!-- bootstrap-dialog -->
<script src="<%=request.getContextPath() %>/zq/js/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
<!-- bootstrap-fileinput -->
<script src="<%=request.getContextPath() %>/zq/js/bootstrap-fileinput/js/fileinput.js"></script>
<script src="<%=request.getContextPath() %>/zq/js/bootstrap-fileinput/js/locales/zh.js"></script>


<table class="table" id="merchant" border="1"></table>
<script type="text/javascript">


    $("#merchant").bootstrapTable({
        url:"<%=request.getContextPath()%>/merchant/queryMerchant.action",
        pagination: true,                   //是否显示分页（*）
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
        pageSize: 3,                     //每页的记录行数（*）
        pageList: [1, 2, 4, 5],        //可供选择的每页的行数（*）
        search: true,                      //是否显示表格搜索
        showColumns: true,                  //是否显示所有的列（选择显示的列）
        showRefresh: true,                  //是否显示刷新按钮
        clickToSelect: true,                //是否启用点击选中行
        uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
        columns:[[
            {field:'merchantId', title:'编号', idField:true,  width:10 },
            {field:'customerName', title:'会员名', width:10 },
            {field:'merchantArea', title:'所属地区', width:10 },
            {field:'merchantPhone', title:'手机号码', width:10 },
            {field:'merchantName', title:'企业名称', width:10 },
            {field:'merchantMail', title:'企业邮箱', width:10 },
            {field:'merchantRegisterTime', title:'注册时间', width:10 },
            {field:'merchantAuditState', title:'状态', width:10,
                formatter: function(value,row,index){
                    if(value=="0") {
                        return "未审核"
                    }
                }
            },
            {field:'hhh', title:'操作', width:10,
                formatter:function(value,row,index){
                    return  '<button  class="btn btn-primary"  data-toggle="modal"  onclick="updateSuccess('+row.merchantId+')">审核成功</button><button type="button" class="btn btn-danger"  onclick="delteMerchant('+row.merchantId+')" >删除</button><button type="button" class="btn btn-primary"  onclick="updateErre('+row.merchantId+')" >驳回</button>';


                }}
        ]]
    });
    function delteMerchant(merchantId){
        $.ajax({
            url:"<%=request.getContextPath()%>/merchant/deleteGoods.action",
            dataType:"text",
            type:"post",
            data:{"merchantId":merchantId},
            success:function(data){


                $('#merchant').bootstrapTable('refresh');
            }
        })
    }

    function updateSuccess(merchantId){
        $.ajax({
            url:"<%=request.getContextPath()%>/merchant/updateSuccess.action",
            dataType:"text",
            type:"post",
            data:{"merchantId":merchantId},
            success:function(data){


                $('#merchant').bootstrapTable('refresh');
            }
        })
    }


    function updateErre(merchantId) {
        $.ajax({
            url: "<%=request.getContextPath()%>/merchant/updateErre.action",
            dataType: "text",
            type: "post",
            data: {"merchantId": merchantId},
            success: function (data) {


                $('#merchant').bootstrapTable('refresh');
            }
        })

    }

</script>



</body>
</html>
