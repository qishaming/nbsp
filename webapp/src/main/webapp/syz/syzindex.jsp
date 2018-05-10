<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/4
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"    pageEncoding="utf-8"%>
<html>
<head>
    <meta charset="utf-8" />
    <title>Title</title>
    <link href="<%=request.getContextPath() %>/syz/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Bootstrap 核心css -->

    <link href="<%=request.getContextPath() %>/syz/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap TreeView css -->

    <link href="<%=request.getContextPath() %>/syz/js/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">



    <!-- Bootstrap addTabs css -->

    <link href="<%=request.getContextPath() %>/syz/js/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">



    <!-- Bootstrap table css -->

    <link href="<%=request.getContextPath() %>/syz/js/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">

    <!-- bootstrap-datetimepicker css -->
    <link href="<%=request.getContextPath() %>/syz/js/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <!-- bootstrap-dialog css -->
    <link href="<%=request.getContextPath() %>/syz/js/bootstrap-dialog/dist/css/bootstrap-dialog.css" rel="stylesheet">
    <!-- bootstrap-fileinput css -->
    <link href="<%=request.getContextPath() %>/syz/js/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">
</head>

<body>


<script src="<%=request.getContextPath() %>/syz/js/jquery.min.js"></script>
<!-- bootstrap 核心js文件 -->
<script src="<%=request.getContextPath() %>/syz/js/bootstrap/js/bootstrap.min.js"></script>
<!-- bootStrap TreeView -->
<script src="<%=request.getContextPath() %>/syz/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<!-- bootStrap addTabs -->
<script src="<%=request.getContextPath() %>/syz/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>
<!-- bootStrap table -->
<script src="<%=request.getContextPath() %>/syz/js/bootstrap-table/dist/bootstrap-table.js"></script>
<!-- bootStrap table 语言包中文-->
<script src="<%=request.getContextPath() %>/syz/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<!-- bootstrap-datetimepicker -->
<script src="<%=request.getContextPath() %>/syz/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="<%=request.getContextPath() %>/syz/js/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<!-- bootstrap-dialog -->
<script src="<%=request.getContextPath() %>/syz/js/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
<!-- bootstrap-fileinput -->
<script src="<%=request.getContextPath() %>/syz/js/bootstrap-fileinput/js/fileinput.js"></script>
<script src="<%=request.getContextPath() %>/syz/js/bootstrap-fileinput/js/locales/zh.js"></script>
</body>







<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">新增</button>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel" >
                    新增
                </h4>
            </div>
            <div class="modal-body">
                <form id="addForm">

                    新闻名称：<input type='text' name='xin.xwname' /><br/>
                    新闻内容：<input type='text' name='xin.xwnr' /><br/>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="addxinwen()">
                    提交更改
                </button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"  onclick="updateyy(xwid)">
                    修改
                </h4>
            </div>
            <div class="modal-body">
                <form id="upForm">
                    <input type="hidden"  name='xin.xwid'>
                    新闻名称：<input type='text' name='xin.xwname' /><br/>
                    创建时间时间：<input type='text'  name='xin.xwshijian'/><br/>
                    新闻内容：<input type='text'  name='xin.xwnr'/><br/>
                </form>
            </div>
            //按钮
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="upxinwen()">
                    提交更改
                </button>
            </div>
        </div>
    </div>
</div>






<table class="table" id="xinwen" border="1"></table>

<script type="text/javascript">


    $("#xinwen").bootstrapTable({
        url:"<%=request.getContextPath()%>/syz/queryGoods.action",
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
           // goodsid  goodsname goodsimg goodsPrice  goodsDiscounts brandName  goodsSizeName goodstypename
            {field:'goodsid', title:'', idField:true,  width:10 },
            {field:'goodsname', title:'编号', idField:true,  width:10 },
            {field:'goodsPrice', title:'编号', idField:true,  width:10 },
            {field:'goodsDiscounts', title:'新闻名称', width:10 },
            {field:'brandName', title:'新闻名称', width:10 },
            {field:'goodsSizeName', title:'新闻名称', width:10 },
            {field:'goodstypename', title:'新闻名称', width:10 },
            {field:'goodsimg', title:'操作', width:10,
                formatter:function(value,row,index){
                    return  '<img  alt="无" src="<%=request.getContextPath()%>/"+row.goodsimg>';


                }},
            {field:'hhh', title:'操作', width:10,
                formatter:function(value,row,index){
                    return  '<button  class="btn btn-primary"  data-toggle="modal" data-target="#myModal1" onclick="updateyy('+row.xwid+')">修改</button><button type="button" class="btn btn-danger"  onclick="delxinwen('+row.xwid+')" >删除</button>';


                }}

        ]]
    });

    function updateyy(xwid){
        $.ajax({
            url:"<%=request.getContextPath()%>/xinwen/hxXin.action",
            type:"post",
            data:{"xwid":xwid},
            dataType:"json",
            success:function (xin){
                $("[name='xin.xwid']").val(xin.xwid);
                $("[name='xin.xwname']").val(xin.xwname);
                $("[name='xin.xwshijian']").val(xin.xwshijian);
                $("[name='xin.xwnr']").val(xin.xwnr);
            }
        });

    }

    function upxinwen(){
        $.ajax({
            url:"<%=request.getContextPath()%>/xinwen/updatedXin.action",
            type:"post",
            data:$("#upForm").serialize(),
            dataType:"text",
            success:function (updateFlag){
                $("#xinwen").bootstrapTable('refresh');

            },
            error:function (){
                alert("修改失败");

            }

        })

    }


    function addxinwen(){
        $.ajax({
            url:"<%=request.getContextPath()%>/xinwen/addXin.action",
            type:"post",
            data:$("#addForm").serialize(),
            dataType:"text",
            success:function (addFlag){
                $("#xinwen").bootstrapTable('refresh');

            },
            error:function (){
                alert("程序错误");
            }
        })

    }



    function delxinwen(xwid){
        if(confirm("确认删除吗?")){
            $.ajax({
                url:"<%=request.getContextPath()%>/xinwen/delXin.action",
                type:"post",
                data:{"xwid":xwid},
                dataType:"text",
                success:function (){

                        $("#xinwen").bootstrapTable('refresh');



                },
                error:function (){
                    alert("已删除");
                    $("#xinwen").bootstrapTable('refresh');

                }
            })
        }
    }


</script>
</html>
