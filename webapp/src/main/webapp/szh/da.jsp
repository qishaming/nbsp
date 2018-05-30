<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath(); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>运营商管理后台</title>
    <!-- jquery -->
    <script type="text/javascript" src="<%=path %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="<%=path %>/js/hightcharts/highcharts.js"></script>
    <script type="text/javascript" src="<%=path %>/js/hightcharts/drilldown.js"></script>
    <jsp:include page="../base.jsp"></jsp:include>
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

            <li><a href="<%=request.getContextPath()%>/szh/da.jsp"><i class="icon icon-th"></i> <span>数据分析</span></a>

            </li>
            <li> <a href="<%=request.getContextPath()%>/jump/jumpOrder.action"><i class="icon icon-tag"></i> <span>订单详情</span></a> </li>
            <li> <a href="<%=request.getContextPath()%>/jpl/aa.action"><i class="icon icon-tags"></i> <span>库存管理</span></a> </li>
    </ul>
</div>

<div id="content">
    <div id="content-header">
        <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">数据分析</a> </div>
    </div>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title">
                        <span class="icon"><i class="icon-th"></i></span>
                        <h5>数据展示</h5><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/><nbsp/>
                    </div>

                    <div id="dat" class="table">


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

    Highcharts.setOptions({
        lang: {
            drillUpText: '<< 返回 {series.name}'
        }
    });


    // Create the chart
    Highcharts.chart('dat', {
        chart: {
            type: 'pie',
            events: { //设置下钻的重要部分 将数据更新到图中
                drilldown: function(e) {
                    for (var i = 0; i < eval(e.point.id).length; i++) {
                        this.addSingleSeriesAsDrilldown(e.point, eval(e.point.id)[i]);
                    }
                    this.applyDrilldown();
                }
            }
        },
        title: {
            text: '营业额'
        },
        xAxis: {
            type: 'category'
        },

        legend: {
            enabled: false
        },

        plotOptions: {
            series: {
                borderWidth: 0,
                dataLabels: {
                    enabled: true
                }
            },
            column: {
                stacking: 'normal'
            }
        },

        series: [{
            name: '大类分析',
            colorByPoint: true,
            data: [{
                id: [ //必须 与series中data中的 id 要一致
                    {
                        type: "column",
                        color:"red",
                        data: [
                            ["上衣",500],
                            ["裤子",200]
                        ]
                    },
                ], //对应下钻数据的数组名称
                name: '服装',
                y: 700,
                drilldown: 'animals'
            }, {
                id: [
                    {
                        type: 'column',
                        color: 'red',
                        data: [
                            ['洗衣机',200],
                            ['冰箱', 300],
                            ['电脑', 400]
                        ]
                    }],
                name: '电器',
                y: 900,
                drilldown: 'fruits'
            }]
        }],
        drilldown: {
            drillUpButton: {
                relativeTo: 'spacingBox',
                position: {
                    y: 0,
                    x: 0
                },
                theme: {
                    fill: 'white',
                    'stroke-width': 1,
                    stroke: 'silver',
                    r: 0,
                    states: {
                        hover: {
                            fill: '#a4edba'
                        },
                        select: {
                            stroke: '#039',
                            fill: '#a4edba'
                        }
                    }
                }

            },
        }
    });

</script>
</body>
</html>
