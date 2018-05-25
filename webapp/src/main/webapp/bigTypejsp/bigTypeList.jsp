<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath(); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>运营商管理后台</title>
    <!-- jquery -->
    <script type="text/javascript" src="<%=path %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
    <jsp:include page="../base.jsp"></jsp:include>

    <link rel="stylesheet" href="<%=path%>/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="<%=path%>/css/fullcalendar.css" />
    <link rel="stylesheet" href="<%=path%>/css/maruti-style.css" />
    <link rel="stylesheet" href="<%=path%>/css/maruti-media.css" class="skin-color" />
</head>

<body>

<div class="modal fade" id="updateDiv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title">
                    修改大类
                </h4>
            </div>
            <div class="modal-body">
                <form id="formIding">
                    <input type="hidden" name="bigType.bigTypeId" >
                    大类id：<input  name="bigType.bigTypeId" id="bigTypeid2" class="easyui-textbox">
                    大类名称：<input  name="bigType.bigTypeName" id="bigTypeName2" class="easyui-textbox">

                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateBigType()">
                    提交更改
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="addDiv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" >
                    增加
                </h4>
            </div>
            <div class="modal-body">
                <form id="formIdings">

                    大类名称：<input  name="bigType.bigTypeName" id="bigTypeName" class="easyui-textbox">

                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="addBigTypeSub()">
                    提交
                </button>
            </div>
        </div>
    </div>
</div>




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


<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i>商家管理</a>
    <ul>
        <li class="active"><i class="icon icon-home"></i> <span>商家管理</span></a>
            <ul>
                <li><a href="<%=request.getContextPath()%>/jump/shangjiagl.action">审核商家</a></li>
            </ul>
        </li>
        <li><a href="<%=request.getContextPath()%>/jump/shangpinpinpail.action"><i class="icon icon-th"></i> <span>品牌管理</span></a>
        </li>
        <li> <a href="<%=request.getContextPath()%>/jump/shangpingl.action"><i class="icon icon-signal"></i> <span>商品审核</span></a> </li>
        <li> <a href="<%=request.getContextPath()%>/big/bigTypeList.action"><i class="icon icon-tags"></i> <span>大类管理</span></a> </li>
        <li> <a href="<%=request.getContextPath()%>/small/smallTypeList.action"><i class="icon icon-tags"></i> <span>小类管理</span></a> </li>
        <li> <a href="<%=request.getContextPath()%>/ZnnAction/GuangGao.action"><i class="icon icon-signal"></i> <span>广告位管理</span></a> </li>
    </ul>
</div>

<div id="content">
    <div id="content-header">
        <div id="breadcrumb"> <a href="index." title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">大类管理</a> </div>
    </div>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title">
                        <span class="icon"><i class="icon-th"></i></span>
                        <h5>数据展示</h5><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/>

                        <button  class='btn btn-primary'  data-toggle='modal' data-target='#addDiv' onclick='addBigType("+value+")'>增加</button>
                    </div>

                    <table id="tablelist" class="table">

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

    $("#tablelist").bootstrapTable({
        url:"<%=request.getContextPath()%>/big/queryBigType.action",
        striped: true,//隔行变色
        showPaginationSwitch:true,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:true,//显示刷新按钮
        showToggle:true,//显示切换视图
        search:true,//是否显示搜索框
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
        pagination: true,                   //是否显示分页（*）
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        //silent: true,
        pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
        pageSize: 10,                     //每页的记录行数（*）
        pageList: [5,10,15],        //可供选择的每页的行数（*）
        showColumns: true,                  //是否显示所有的列（选择显示的列）
        clickToSelect: true,                //是否启用点击选中行
        uniqueId: "bigTypeId",                     //每一行的唯一标识，一般为主键列
        //sidePagination:"server",//
        paginationLoop:true,//开启分页无限循环
        method:'post',//发送请求的方式
        contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
        columns:[{
            field:'bigTypeId',
            title:'大类编号',
            idField:true,
            width:100,align:'center'
        }, {
            field:'bigTypeName',
            title:'大类名称',
            width:100,align:'center'
        },
            {
                field:'bigTypeIds',
                title:'操作',align:'center',
                width:100,formatter: function(value,row,index){

                        //'<button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#updateDiv" onclick="updateBigType('+row.bigTypeId+')">修改</button>'+
                return       '<button type="button" class="btn btn-danger"  onclick="deleteBigType('+row.bigTypeId+')" >删除</button>';

                }
            } ]
    })

</script>
<script type="text/javascript">
    //修改
    function updateBigType(bigTypeName){

        $.ajax({
            url:"<%=request.getContextPath()%>/big/updateBigType.action",
            type:"post",
            data:{"bigType.bigTypeName":bigTypeName},
            dataType:"json",
            success:function (data){
                $("[name='bigType.bigTypeName']").val(data.bigTypeName);
            }
        });

    }

    function addBigTypeSub() {
        var bigTypeName = $("#bigTypeName").val();
        $.ajax({
            url:"<%=request.getContextPath()%>/big/addBigType.action",
            type:"post",
            data:{"bigType.bigTypeName":bigTypeName},
            dataType:"json",
            success:function (data){
               alert("添加成功！");
            }
        });
        $('#tablelist').bootstrapTable('refresh');
    }
    function deleteBigType(bigTypeId) {

        $.ajax({
            url: "<%=request.getContextPath()%>/big/deleteBigType.action",
            dataType: "text",
            type: "post",
            data: {"bigType.bigTypeId": bigTypeId},
            success: function (data) {
                alert("删除成功！");
            }
        })
        $('#tablelist').bootstrapTable('refresh');
    }
</script>
</body>
</html>
