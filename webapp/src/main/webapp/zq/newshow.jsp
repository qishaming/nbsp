<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> Admin</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <link rel="stylesheet" href="../css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="../css/fullcalendar.css" />
    <link rel="stylesheet" href="../css/maruti-style.css" />
    <link rel="stylesheet" href="../css/maruti-media.css" class="skin-color" />

    <link href="<%=request.getContextPath() %>/syz/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Bootstrap 核心css -->
<%--
    <link href="<%=request.getContextPath() %>/syz/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
--%>
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
<%--  hello
  <a href="<%=request.getContextPath()%>/test!toShow.action?id=1"> tiao</a>--%>
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
        <li> <a href="<%=request.getContextPath()%>/jump/xinwen.action"><i class="icon icon-signal"></i> <span>新闻管理</span></a> </li>
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

                                        新闻标题：<input type='text' name='news.title' /><br/>
                                        新闻内容：         <textarea  name='news.content'   rows="3"></textarea>

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
                                        <input type="hidden"  name='news.newsid'>
                                        新闻标题：<input type='text' name='news.title' /><br/>
                                        新闻内容：<textarea  name='news.content'   rows="3"></textarea><br/>
                                        新闻时间：<input type='text' name='news.newsdate' /><br/>
                                        修改时间：<input type='text' name='news.updatetime' /><br/>

                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                    </button>
                                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="upxinwen()">
                                        提交更改
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="widget-content nopadding">
                        <table class="table" id="news" border="1"></table>
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


    $("#news").bootstrapTable({
        url:"<%=request.getContextPath()%>/news/queryXin.action",
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
            {field:'newsid', title:'编号', idField:true,   },
            {field:'title', title:'标题',  },
            {field:'content', title:'内容', },
            {field:'newsdate', title:'时间', },
            {field:'updatetime', title:'修改时间', },
            {field:'hhh', title:'操作', width:10,
                formatter:function(value,row,index){
                    return '<button  class="btn btn-primary"  data-toggle="modal" data-target="#myModal1" onclick="updatexin('+row.newsid+')">修改</button>'+
                            '<button  class="btn btn-danger"   data-toggle="modal"  onclick="delNews('+row.newsid+')">删除</button>'



                }}
        ]]
    });
    function delNews(newsid){
        $.ajax({
            url:"<%=request.getContextPath()%>/new/delXin.action",
            dataType:"text",
            type:"post",
            data:{"newsid":newsid},
            success:function(data){


                $('#news').bootstrapTable('refresh');
            }
        })
    }

    function addxinwen(){
        $.ajax({
            url:"<%=request.getContextPath()%>/new/addXin.action",
            type:"post",
            data:$("#addForm").serialize(),
            dataType:"text",
            success:function (addFlag){
                $("#news").bootstrapTable('refresh');

            },
            error:function (){
                alert("程序错误");
            }
        })

    }
    function updatexin(newsid){
        $.ajax({
            url:"<%=request.getContextPath()%>/new/hxNew.action",
            type:"post",
            data:{"newsid":newsid},
            dataType:"json",
            success:function (xin){
                $("[name='news.newsid']").val(xin.newsid);
                $("[name='news.title']").val(xin.title);
                $("[name='news.content']").val(xin.content);
                 $("[name='news.newsdate']").val(xin.newsdate);
                $("[name='news.updatetime']").val(xin.updatetime);
            }
        });

    }

    function upxinwen(){
        $.ajax({
            url:"<%=request.getContextPath()%>/new/updateNew.action",
            type:"post",
            data:$("#upForm").serialize(),
            dataType:"text",
            success:function (updateFlag){
                $("#news").bootstrapTable('refresh');

            },
            error:function (){
                alert("修改失败");

            }

        })

    }



</script>


</body>
</html>
