<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/17
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> Admin</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/fullcalendar.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/maruti-style.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/maruti-media.css" class="skin-color" />

    <%------------------------------------------这是分割线--%>
    <link href="<%=request.getContextPath() %>/syz/js/bootstrap/css/bootstrap-theme.min.css" >

    <!-- Bootstrap 核心css -->

    <%--
        <link href="<%=request.getContextPath() %>/syz/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    --%>

    <link href="<%=request.getContextPath() %>/syz/js/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet">
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
<script src="<%=request.getContextPath() %>/syz/js/bootstrap-select/dist/js/bootstrap-select.js"></script>

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
<script type="text/javascript" src="<%=request.getContextPath()%>/syz/js/uploadify/jquery.uploadify.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/syz/js/uploadify/uploadify.css"/>


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

                    <input type='hidden' name='brand.brandAuditState' value="0"/>
                    <div class="input-group">
                        <span class="input-group-addon">品牌名称</span>
                        <input type="text" name='brand.brandName' class="form-control" placeholder="请输入名称">
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="addxinwen()">
                    提交
                </button>
            </div>
        </div>
    </div>
</div>

<%--  hello
  <a href="<%=request.getContextPath()%>/test!toShow.action?id=1"> tiao</a>--%>

<!--Header-part-->
<div id="header">
    <h1><a href="http://www.mafiashare.net">Shared on www.MafiaShare.net</a></h1>
</div>
<!--close-Header-part-->

<!--top-Header-messaages-->
<div class="btn-group rightzero"> <a class="top_message tip-left" title="Manage Files"><i class="icon-file"></i></a> <a class="top_message tip-bottom" title="Manage Users"><i class="icon-user"></i></a> <a class="top_message tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a> <a class="top_message tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a> </div>
<!--close-top-Header-messaages-->

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
    <ul class="nav">
        <li class="" ><a title="" href="#"><i class="icon icon-user"></i> <span class="text">Profile</span></a></li>
        <li class=" dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a class="sAdd" title="" href="#">new message</a></li>
                <li><a class="sInbox" title="" href="#">inbox</a></li>
                <li><a class="sOutbox" title="" href="#">outbox</a></li>
                <li><a class="sTrash" title="" href="#">trash</a></li>
            </ul>
        </li>
        <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
        <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
    </ul>
</div>
<!--<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-left" title="Search"><i class="icon-search icon-white"></i></button>
</div>-->
<!--close-top-Header-menu-->

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i>商家管理</a>
    <ul>
        <li class="active"><i class="icon icon-home"></i> <span>商品管理</span></a>
            <ul>
                <li><a href="show.jsp">商品录入</a></li>
                <li><a href="show.jsp">商品管理</a></li>
            </ul>
        </li>
        <li> <a href="#"><i class="icon icon-signal"></i> <span>品牌管理</span></a> </li>
        <li> <i class="icon icon-inbox"></i> <span>基本信息管理</span></a>
            <ul>
                <li><a href="show.jsp">修改资料</a></li>
                <li><a href="show.jsp">修改密码</a></li>
            </ul>
        </li>
        <li><%--<a href="#">--%><i class="icon icon-th"></i> <span>财务状况</span></a>
            <ul>
                <li><a href="show.jsp">收入</a></li>
                <li><a href="show.jsp">支出</a></li>
            </ul>
        </li>
        <li> <a href="#"><i class="icon icon-signal"></i> <span>订单详情</span></a> </li>
        <li> <a href="#"><i class="icon icon-signal"></i> <span>库存管理</span></a> </li>
    </ul>
</div>

<div id="content">
    <div id="content-header">
        <div id="breadcrumb"> <a href="index." title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Tables</a> </div>
    </div>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title">
                        <span class="icon"><i class="icon-th"></i></span>
                        <h5>数据展示</h5>
                        <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">新增</button>

                    </div>


                    <table class="table" id="xinwen" border="1">

                    </table>
                    <div class="widget-content nopadding">
                        <table class="table table-bordered data-table">
                            <thead>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row-fluid">
    <div id="footer" class="span12"> 2012 &copy; Marutii Admin. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> </div>
</div>


<script type="text/javascript">

    $("#xinwen").bootstrapTable({
        url:"<%=request.getContextPath()%>/syz/queryBrand.action",
        pagination: true,                   //是否显示分页（*）
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
        pageSize: 3,                     //每页的记录行数（*）
        pageList: [1, 2, 4, 5],        //可供选择的每页的行数（*）
        //search: true,                      //是否显示表格搜索
        showColumns: true,                  //是否显示所有的列（选择显示的列）
        showRefresh: true,                  //是否显示刷新按钮
        clickToSelect: true,                //是否启用点击选中行
        uniqueId: "brandName",                     //每一行的唯一标识，一般为主键列
        columns:[[
            {field:'brandId', title:'品牌编号', idField:true,  width:10 },
            {field:'brandName', title:'品牌名称', idField:true,  width:10 },
            {field:'goodsAuditState', title:'审核状态', width:10,
                formatter:function(value,row,index){
                    if(row.brandAuditState == 0){
                        return  '待审核';
                    }else if(row.brandAuditState == 1){
                        return  '审核通过';
                    }
                    else if(row.brandAuditState == 2){
                        return  '未通过';
                    }
                }

            },
            {field:'hhh', title:'操作', width:20,
                formatter:function(value,row,index){
                    return  '<button  class="btn btn-primary"  data-toggle="modal" data-target="#myModal1" onclick="updateyy('+row.goodsid+')">修改商品</button>' +
                        '<button type="button" class="btn btn-danger"  onclick="delxinwen('+row.goodsid+')" >删除该商品</button>';


                }}

        ]]
    });
    //修改
    function updateyy(goodsid){
        $.ajax({
            url:"<%=request.getContextPath()%>/syz/hxGoods.action",
            type:"post",
            data:{"goodsid":goodsid},
            dataType:"json",
            success:function (goods){
                $("[name='goods.goodsid']").val(goods.goodsid);
                $("#brandId2").find("option[value='goods.brandId']").attr("selected", "true");
                alert($("#brandId2").val());
                $("[name='goods.goodsPrice']").val(goods.goodsPrice);
                $("[name='goods.goodsimg']").val(goods.goodsimg);
                $("[name='goods.goodsname']").val(goods.goodsname);
                $("[name='goods.sizeId']").val(goods.sizeId);
                $("[name='goods.typeid']").val(goods.typeid);

            }
        });

    }

    function upxinwen(){
        $.ajax({
            url:"<%=request.getContextPath()%>/syz/updatedGoods.action",
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
            url:"<%=request.getContextPath()%>/syz/addBrand.action",
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



    function delxinwen(goodsid){
        if(confirm("确认删除吗?"+goodsid)){

            $.ajax({
                url:"<%=request.getContextPath()%>/syz/delGoods.action",
                type:"post",
                data:{"goodsid":goodsid},
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
</body>
</html>

