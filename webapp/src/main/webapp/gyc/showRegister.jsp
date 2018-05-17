<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<jsp:include page="../base.jsp"></jsp:include>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> Admin</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <link rel="stylesheet" href="../css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="../css/fullcalendar.css" />
    <link rel="stylesheet" href="../css/maruti-style.css" />
    <link rel="stylesheet" href="../css/maruti-media.css" class="skin-color" />
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
        <%--<li class="active"><i class="icon icon-home"></i> <span>商品管理</span></a>
            <ul>
                <li><a href="<%=request.getContextPath()%>/jump/tiao.action">商品录入</a></li>
                <li><a href="<%=request.getContextPath()%>/jump/tiaoManger.action"></a></li>
            </ul>
        </li>--%>
        <li> <a href="<%=request.getContextPath()%>/jump/tiao.action"><i class="icon icon-signal"></i> <span>商品管理</span></a> </li>
        <li> <a href="<%=request.getContextPath()%>/jump/tiaoPinpai.action"><i class="icon icon-signal"></i> <span>品牌管理</span></a> </li>
        <li> <a href="<%=request.getContextPath()%>/jump/info.action"><i class="icon icon-signal"></i> <span>信息管理</span></a> </li>
        <li> <a href="<%=request.getContextPath()%>/jump/updatePass.action"><i class="icon icon-signal"></i> <span>修改密码</span></a> </li>

        <li><a href="<%=request.getContextPath()%>/jpl/bb.action"><i class="icon icon-th"></i> <span>数据分析</span></a>

        </li>
        <li> <a href="#"><i class="icon icon-tag"></i> <span>订单详情</span></a> </li>
        <li> <a href="<%=request.getContextPath()%>/jpl/aa.action"><i class="icon icon-tags"></i> <span>库存管理</span></a> </li>
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
                        <table id="register" class="table"></table>
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
                    <input type='hidden' name='merchant.merchantId' value="" />
                    <input type='hidden' name='merchant.merchantAuditState' value="" />
                    <%--<input type='hidden' name='goods.goodsAuditState' value="0"/>
                    <input type='hidden' name='goods.goodsDiscounts' value="0"/>--%><br/>
                    <div class="input-group">
                        <span class="input-group-addon">姓名</span>
                        <input type="text" name='merchant.customerName' class="form-control" placeholder="请输入姓名">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">住址</span>
                        <input type="text"name='merchant.merchantArea' class="form-control" placeholder="请输入住址">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">手机号</span>
                        <input type="text"name='merchant.merchantPhone' class="form-control" placeholder="请输入手机号">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">店名</span>
                        <input type="text"name='merchant.merchantName' class="form-control" placeholder="请输入店名">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">邮件</span>
                        <input type="text"name='merchant.merchantMail' class="form-control" placeholder="请输入邮件">
                    </div>
                    <%--<input type="hidden" name="merchant.goodsimg" id="photo2"><br>
                    <img width="70px" height="70px" id="img2">
                    <div id="show2">
                    </div>
                    <input type="file" id="topian2">
                    <div class="input-group">
                        <span class="input-group-addon">品牌</span>
                        <select  name='merchant.brandId'id="brandId2"class="selectpicker" data-live-search="true">   </select>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">规格</span>
                        <select id ="gsize2"name="merchant.sizeId" class="selectpicker" data-live-search="true">   </select>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">类型 </span>
                        <select id ="gtype2" name="merchant.typeid" class="selectpicker" data-live-search="true">   </select>
                    </div>--%>
                </form>
            </div>
            <%--按钮--%>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="upxinwen()">
                    提交信息
                </button>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    $("#register").bootstrapTable({
        url:"<%=request.getContextPath()%>/gyc/queryRegister.action",
        striped: true,//隔行变色gyc
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
        columns:[
            {field:'merchantId',title:'编号', width:100 },
            { field:'customerName',title:'姓名',width:100},
            {field:'merchantArea',title:'住址',width:100},
            {field:'merchantRegisterTime',title:'注册时间',width:100},
            { field:'merchantUpdateTime',title:'修改时间', width:100
            },{field:'merchantPhone',title:'手机号',width:100
            },{ field:'merchantName', title:'店名',width:100
            }, {field:'merchantMail',title:'邮件',width:100
            },{
                field:'merchantAuditState',
                title:'审核状态',
                width:100,formatter: function(value,row,index){
                    if(row.merchantAuditState==0){
                    return "正在审核中";
                    }else  if(row.merchantAuditState==1){
                        return "待提交审核";
                    }else  if(row.merchantAuditState==2){
                        return "审核成功可以进行确定修改了！！";
                    }
                }
            },
            {
                field:'del',
                title:'操作',
                width:100,formatter: function(value,row,index){
                if(row.merchantAuditState=="0"){
                    return '<button class="btn btn-primary" data-toggle="modal"  >审核中</button>';
                }else if(row.merchantAuditState=="2"){
                    return '<button class="btn btn-primary" data-toggle="modal" data-target="#myModal1"    onclick="updateyy('+row.merchantId+')">确定修改</button>';
                }else {
                    return '<button class="btn btn-primary" data-toggle="modal"   onclick="shenghe('+row.merchantId+')">修改</button>';
                }
            }
            }
        ]
    })



    function updateyy(merchantId){
        $.ajax({
            url:"<%=request.getContextPath()%>/gyc/queryById.action",
            type:"post",
            data:{"merchantId":merchantId},
            dataType:"json",
            success:function (mer){
                $("[name='merchant.customerName']").val(mer.customerName);
                $("[name='merchant.merchantId']").val(mer.merchantId);
                $("[name='merchant.merchantArea']").val(mer.merchantArea);
                $("[name='merchant.merchantPhone']").val(mer.merchantPhone);
                $("[name='merchant.merchantName']").val(mer.merchantName);
                $("[name='merchant.merchantMail']").val(mer.merchantMail);
                $("[name='merchant.merchantAuditState']").val(mer.merchantAuditState);

            }
        });

    }

    function upxinwen(){
        $.ajax({
            url:"<%=request.getContextPath()%>/gyc/updateMerchant.action",
            type:"post",
            data:$("#upForm").serialize(),
            dataType:"text",
            success:function (ss){
             alert("修改成功")
                $("#register").bootstrapTable('refresh');
            },
            error:function (){
                alert("修改失败");

            }

        })

    }


    function shenghe(merchantId){
        $.ajax({
            url:"<%=request.getContextPath()%>/gyc/shenghe.action",
            type:"post",
            data:{"merchantId":merchantId},
            dataType:"text",
            success:function (ss){
               alert("提交成功")
                $("#register").bootstrapTable('refresh');
            },
            error:function (){
                alert("提交失败");

            }

        })

    }


</script>
</body>
</html>
