<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> Admin</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <link rel="stylesheet" href="../css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="../css/fullcalendar.css" />
    <link rel="stylesheet" href="../css/maruti-style.css" />
    <link rel="stylesheet" href="../css/maruti-media.css" class="skin-color" />
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

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i></a>
    <ul>
        <li class="active"><i class="icon icon-home"></i> <span>商家管理</span></a>
            <ul>
                <li><a href="<%=request.getContextPath()%>/jump/shangjiagl.action">审核商家</a></li>
            </ul>
        </li>
        <%--<li> <i class="icon icon-inbox"></i> <span>基本信息管理</span></a>
            <ul>
                <li><a href="show.jsp">修改资料</a></li>
                <li><a href="show.jsp">修改密码</a></li>
            </ul>
        </li>--%>
        <li><a href="<%=request.getContextPath()%>/jump/shangpinpinpail.action"><i class="icon icon-th"></i> <span>品牌管理</span></a>
        </li>
        <li> <a href="<%=request.getContextPath()%>/jump/shangpingl.action"><i class="icon icon-signal"></i> <span>商品审核</span></a> </li>
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

                    </div>


                    <table class="table" id="merchantbrand" border="1"></table>

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

    $("#merchantbrand").bootstrapTable({
        url:"<%=request.getContextPath()%>/goods/queryGoodsPin.action",
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

            {field:'brandId', title:'品牌ID', width:10 },
            {field:'goodsname', title:'商品', width:10 },
            {field:'goodsimg', title:'商品图片', width:10 },
            {field:'goodsPrice', title:'商品价格', width:10 },
            {field:'goodsDiscounts', title:'商品折扣', width:10 },
            {field:'brandName', title:'品牌名称', width:10 },
            {field:'brandAuditState', title:'状态', width:10,
                formatter: function(value,row,index){
                    if(value=="0") {
                        return "未审核";
                    }if(value=="1"){
                        return "已通过";
                    }if(value=="2"){
                        return "未通过";

                    }}
            },


            {field:'hhh', title:'操作', width:10,
                formatter:function(value,row,index){
                    if(row.brandAuditState==0) {
                        return '<button  class="btn btn-primary"  data-toggle="modal"  onclick="updatePinSuccess(' + row.brandId + ')">品牌通过</button>' +
                                '<button type="button" class="btn btn-danger" class="btn btn-primary"  onclick="updatePinErre(' + row.brandId + ')" >品牌驳回</button>';
                    }
                    if(row.brandAuditState==2) {
                        return '<button  class="btn btn-primary"  data-toggle="modal"  onclick="updatePinSuccess(' + row.brandId + ')">品牌通过</button>'
                    }
                    if(row.brandAuditState==1){
                        return '<button type="button" class="btn btn-danger" class="btn btn-primary"  onclick="updatePinErre(' + row.brandId + ')" >品牌驳回</button>';



                    }



                }}
        ]]
    });
    function  updatePinSuccess(brandId) {
        $.ajax({
            url: "<%=request.getContextPath()%>/goods/updateGoodsPinSuccess.action",
            dataType: "text",
            type: "post",
            data: {"brandId": brandId},
            success: function (data) {


                $('#merchantbrand').bootstrapTable('refresh');
            }
        })





    }
    function  updatePinErre(brandId) {
        $.ajax({
            url: "<%=request.getContextPath()%>/goods/updateGoodsPinEree.action",
            dataType: "text",
            type: "post",
            data: {"brandId": brandId},
            success: function (data) {


                $('#merchantbrand').bootstrapTable('refresh');
            }
        })

    }






</script>


</body>
</html>
