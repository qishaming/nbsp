<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath(); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>运营商管理后台</title>
    <!-- jquery -->
    <script type="text/javascript" src="<%=path %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
    <jsp:include page="base.jsp"></jsp:include>
    <link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<%=path%>/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="<%=path%>/css/fullcalendar.css" />
    <link rel="stylesheet" href="<%=path%>/css/maruti-style.css" />
    <link rel="stylesheet" href="<%=path%>/css/maruti-media.css" class="skin-color" />
</head>

<body>
<%--修改库存的div--%>
<div class="modal fade" id="formId" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"  onclick="updateyy(xwid)">
                    库存修改
                </h4>
            </div>
            <div class="modal-body">
                <form id="formIding">
                    <input type="hidden" name="repertory.repertoryId" >
                    <a class="icon-minus" href="javascript:jian()"></a>
                    <input  name="repertory.repertoryNumber" class="easyui-textbox">
                    <a class="icon-plus" href="javascript:jia()"></a>
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateCount()">
                    提交更改
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
        <li> <a href="<%=request.getContextPath()%>/jpl/aa.action"><i class="icon icon-signal"></i> <span>库存管理</span></a> </li>
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
                        <h5>数据展示</h5><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/>
                        <button  class='btn btn-success' onclick="poiExcel()">打印报表</button>
                    </div>

                    <table id="table" class="table"></table>
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

    $("#table").bootstrapTable({
        url:"<%=request.getContextPath()%>/jpl/queryRepertory.action",
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
        pageSize: 3,                     //每页的记录行数（*）
        pageList: [3,10,15],        //可供选择的每页的行数（*）
        showColumns: true,                  //是否显示所有的列（选择显示的列）
        clickToSelect: true,                //是否启用点击选中行
        uniqueId: "orderFormId",                     //每一行的唯一标识，一般为主键列
        //sidePagination:"server",//
        paginationLoop:true,//开启分页无限循环
        method:'post',//发送请求的方式
        contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
        columns:[{
            field:'repertoryId',
            title:'库存编号',
            idField:true,
            width:100,align:'center'
        }, {
            field:'repertoryUpdateTime',
            title:'修改时间',
            width:100,align:'center'
        },
            {
                field:'repertoryNumber',
                title:'库存数量',
                width:100,align:'center',
                formatter: function(value,row,index){
                    return "<input type='button' value='-'  onclick='jian("+value+")'/>"+value+"<input type='button' value='+'  onclick='jia("+value+")'/>";
                }
            },{
                field:'goodsname',
                title:'商品名称',
                width:100,align:'center'
            },{
                field:'smallTypeName',
                title:'类型名称',
                width:100,align:'center'
            },{
                field:'goodsSizeName',
                title:'商品规格',
                width:100,align:'center'
            },{
                field:'goodsPrice',
                title:'商品价格',
                width:100,align:'center'
            }, {
                field:'goodsimg',
                title:'商品图片',align:'center',
                width:100,formatter: function(value,row,index){
                    return "<img src='"+value+"'width='50px'/>";
                }
            }, {
                field:'repertoryId',
                title:'操作',align:'center',
                width:100,formatter: function(value,row,index){
                    if(row.goodsAuditState==3){
                        return "<button  class='btn btn-primary'  data-toggle='modal' data-target='#formId' onclick='updateyy("+value+")'>修改库存</button><br/><li><i name='"+value+"' onclick='xiaJia("+row.goodsid+")' class='icon-circle-arrow-down' ></i>下架</li>";
                    }
                    if(row.goodsAuditState==4){
                        return "<button class='btn btn-primary'  data-toggle='modal' data-target='#formId' onclick='updateyy("+value+")'>修改库存</button><br/><li><i name='"+value+"' onclick='shangJia("+row.goodsid+")' class='icon-hand-up' ></i>上架</li>";
                    }
                }
            } ]
    })

    //下架的方法
    function xiaJia(goodsid) {
        $.ajax({
            url:"<%=request.getContextPath()%>/jpl/xiaJiaById.action",
            type:"post",
            data:{"goodsid":goodsid},
            success:function (){
                alert("下架成功");
                $("#table").bootstrapTable("refresh");
            },error:function () {
                alert("下架失败");
            }
        });
    }

    //上架的方法
    function shangJia(goodsid) {
        $.ajax({
            url:"<%=request.getContextPath()%>/jpl/shangJiaById.action",
            type:"post",
            data:{"goodsid":goodsid},
            success:function (){
                alert("上架成功");
                $("#table").bootstrapTable("refresh");
            },error:function () {
                alert("上架失败");
            }
        });
    }
</script>
<script type="text/javascript">
    //修改
    function updateyy(repertoryId){
        $.ajax({
            url:"<%=request.getContextPath()%>/jpl/queryCountById.action",
            type:"post",
            data:{"repertoryId":repertoryId},
            dataType:"json",
            success:function (data){
                $("[name='repertory.repertoryId']").val(data.repertoryId);
                $("[name='repertory.repertoryNumber']").val(data.repertoryNumber);
            }
        });

    }
    function jian() {

        var shu = $("[name='repertory.repertoryNumber']").val();
        shu-=1;
        $("[name='repertory.repertoryNumber']").val(shu);
    }
    function jia() {

        var shu = $("[name='repertory.repertoryNumber']").val();
        shu++;
        $("[name='repertory.repertoryNumber']").val(shu);
    }

    function updateCount() {
        $.ajax({
            url:"<%=request.getContextPath()%>/jpl/updatedRepertory.action",
            type:"post",
            data:$("#formIding").serialize(),
            dataType:"text",
            success:function (updateFlag){
                alert("库存修改成功");
                $("#table").bootstrapTable('refresh');

            },
            error:function (){
                alert("修改失败");

            }

        })
    }
</script>
<script type="text/javascript">
    function poiExcel() {
        $.ajax({
            url:"<%=path%>/jpl/poiExcel.action",
            type:"post",
            success:function () {
                alert("导出报表成功");
            }
        })
    }
</script>
</body>
</html>
