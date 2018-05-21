<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<jsp:include page="base.jsp"></jsp:include>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> Admin</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="css/fullcalendar.css" />
    <link rel="stylesheet" href="css/maruti-style.css" />
    <link rel="stylesheet" href="css/maruti-media.css" class="skin-color" />
</head>
<body>
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
        <li> <a href="<%=request.getContextPath()%>businessOrder.jsp"><i class="icon icon-signal"></i> <span>订单详情</span></a> </li>
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
                        <table id="orderTable"></table>
                    </div>
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

    $(function () {
        $("#orderTable").bootstrapTable({
            url:"<%=request.getContextPath()%>/businessOrderAction/queryBusinessOrder.action",
            striped: true,//隔行变色
            showPaginationSwitch:true,//是否显示 数据条数选择框
            minimumCountColumns:1,//最小留下一个
            showRefresh:true,//显示刷新按钮
            showToggle:true,//显示切换视图
//     	  	    search:true,//是否显示搜索框
            searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
            pagination: true,                   //是否显示分页（*）
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            silent: true,
            pagination:true,//开启分页
            paginationLoop:true,//开启分页无限循环
            pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
            pageSize: 5,                     //每页的记录行数（*）
            pageList: [5, 10],        //可供选择的每页的行数（*）
            search: true,                      //是否显示表格搜索
            showColumns: true,                  //是否显示所有的列（选择显示的列）
            showRefresh: true,                  //是否显示刷新按钮
            clickToSelect: true,                //是否启用点击选中行
            uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
            //sidePagination:"server",//
            method:'post',//发送请求的方式
            contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            columns:[{
                field:'orderFormId',
                title:'订单编号',
                idField:true,
                width:100
            }, {
                field:'customerId',
                title:'客户编号',
                width:100
            },
                {
                    field:'customerCount',
                    title:'订单数量',
                    width:100
                },{
                    field:'orderFormTotalPrice',
                    title:'订单总价格',
                    width:100
                },{
                    field:'orderRegisterTime',
                    title:'订单生成时间',
                    width:100
                },
                {
                    field:'merchantId',
                    title:'商家编号',
                    width:100
                },
                {
                    field:'goodsid',
                    title:'商品编号',
                    width:100
                },
                {
                    field:'orderUpdateTime',
                    title:'订单更新时间',
                    width:100
                },  {
                    field:'orderFormState',
                    title:'订单审核状态',
                    width:100,formatter: function(value,row,index){
                        //初始化一个订单状态
                        var resultOrderFormState="";

                        if(row.orderFormState==1){
                            resultOrderFormState="待处理";
                        }else if(row.orderFormState==2){
                            resultOrderFormState="发货中";
                        }else if(row.orderFormState==3){
                            resultOrderFormState="发货成功";
                        }
                        return resultOrderFormState;
                    }
                },
                {
                    field:'del',
                    title:'操作',
                    width:100,formatter: function(value,row,index){
                    if(row.orderFormState==1){
                        return '<button type="button" id="btn_1" onclick="btnAction('+row.orderFormId+',1)">点击发货</button>';
                    }else if(row.orderFormState==2){
                        return '<button type="button" id="btn_2" onclick="btnAction('+row.orderFormId+',2)">查看物流</button>';
                    }else if(row.orderFormState==4){
                        return '<button type="button" id="btn_4" onclick="btnAction('+row.orderFormId+',4)">查看用户评价</button>'
                    }else if(row.orderFormState==5){
                        return '<button type="button" id="btn_5" onclick="btnAction('+row.orderFormId+',5)">删除订单信息</button>'
                    }
                }
                }
            ]
        })
    })
</script>

<script type="text/javascript">
    function btnAction(id,flag){

        if(flag==1){
            $.ajax({
                url:"<%=request.getContextPath()%>/businessOrderAction/updateOrderState.action",
                type:"post",
                data:{"orderId":id},
                dataType:"text",
                success:function (result){
                    alert(result);
                    if(result="1"){
                        alert('已发货！');
                        $("#orderTable").bootstrapTable('refresh');
                    }else{
                        alert('发货失败！');
                    }
                },
                error:function (){
                    alert("出错");
                }
            })
        }else if(flag==2){
            //查询物流（queryLogisticsInfo）
            $.ajax({
                url:"<%=request.getContextPath()%>/businessOrderAction/queryLogisticsInfo.action",
                type:"post",
                data:{"orderId":id},
                dataType:"text",
                success:function (result){
                    if(result == "success"){
                        // alert('物流信息查询成功！');
                        $("#orderTable").bootstrapTable('refresh');
                    }
                },
                error:function (){
                    alert("物流信息查询出错");
                }
            })
        }else if(flag==4){
            //查询用户评价（queryUserEvaluation）
            $.ajax({
                url:"<%=request.getContextPath()%>/businessOrderAction/queryUserEvaluation.action",
                type:"post",
                data:{"orderId":id},
                dataType:"text",
                success:function (result){
                    if(result == "success"){
                        //alert('订单信息删除成功！');
                        $("#orderTable").bootstrapTable('refresh');
                    }
                },
                error:function (){
                    alert("用户评价查询出错");
                }
            })
        }else if(flag==5){
            //删除订单信息
            alert(id);
            alert(flag);
            $.ajax({
                url:"<%=request.getContextPath()%>/businessOrderAction/delectOrderById.action",
                type:"post",
                data:{"orderId":id},
                dataType:"text",
                success:function (result){
                    alert(result)
                    if(result == "success"){
                        alert('订单信息删除成功！');3
                        $("#orderTable").bootstrapTable('refresh');
                    }
                },
                error:function (){
                    alert("删除出错");
                }
            })
        }
    }

</script>
</body>
</html>
