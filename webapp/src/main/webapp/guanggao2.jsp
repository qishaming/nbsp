<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<jsp:include page="base.jsp"></jsp:include>
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/syz/js/uploadify/uploadify.css"/>


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



                    <div class="widget-content nopadding">
                        <table class="table table-bordered data-table">

                            <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">新增</button>
                            <table class="table" id="guanggao" border="1"></table>
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




</script>


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
                <form id="addFormZnn">
                    <input type='hidden' name='guangGao.gid' value=""/>
                    <div class="input-group">
                        <span class="input-group-addon">商家名称</span>
                        <%-- 多选加 multipley--%>
                        <select id ="goodsSizeId"name="guangGao.gmid" class="selectpicker"  data-live-search="true">   </select>
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon">广告状态</span>
                        <input type="radio" name="guangGao.gstate" value="1"/>上架图
                        <input type="radio" name="guangGao.gstate" value="2"/>下架图
                    </div>

                    <%--<span class="input-group-addon">广告图片</span>--%>
                    <input type="hidden" name="guangGao.gphoto" id="photo1"><br>
                    <div id="show1"><img width="70px" height="70px" id="img1"></div>
                    <input type="file" id="topian1">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="addGuangGao()">
                    新增
                </button>
            </div>
        </div>
    </div>
</div>
<%--修改的模态化窗口--%>
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"  onclick="queryGuangGaoById(gid)">
                    修改
                </h4>
            </div>
            <div class="modal-body">
                <form id="upForm">

                    <input type='hidden' name='guangGao.gid' value=""/>

                    <div class="input-group">
                        <span class="input-group-addon">商家名称</span>
                        <%-- 多选加 multipley--%>
                        <select id ="bigTypeId2"name="guangGao.gmid" class="selectpicker"  data-live-search="true">   </select>
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon">广告状态</span>
                        <input type="radio"  id="gstate1" name="guangGao.gstate" value="1"/>上架图
                        <input type="radio" id="gstate2" name="guangGao.gstate" value="2"/>下架图
                    </div>
                    <%--<span class="input-group-addon">广告图片</span>--%>
                    <input type="hidden" name="guangGao.gphoto" id="photo2"><br>
                    <div id="show2">
                        <%-- <img width="70px" height="70px" id="img2" >--%>
                    </div>
                    <input type="file" id="topian2">
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateGuangGao()">
                    提交更改
                </button>
            </div>
        </div>
    </div>
</div>




<script type="text/javascript">
    $.ajax({
        url:"<%=request.getContextPath()%>/ZnnAction/queryMerchantName.action",
        type:"post",
        dataType:"json",
        async:false,
        success:function (mt){
            var option = "<option value='' selected>请选择</option>";
            $(mt).each(function (){
                option += "<option value='"+this.merchantId+"'>"+this.merchantName+"</option>";
            });
            $('#goodsSizeId').html(option);
            $('#bigTypeId2').html(option);
        }
    })

    function addGuangGao(){
        $.ajax({
            url:"<%=request.getContextPath()%>/ZnnAction/addGuangGao.action",
            type:"post",
            data:$("#addFormZnn").serialize(),
            dataType:"text",
            success:function (addFlag){
                $("#guanggao").bootstrapTable('refresh');
            }/*,
            error:function (){
                alert("程序错误");
            }*/
        })

    }
</script>

<script type="text/javascript">

    $("#guanggao").bootstrapTable({

        url:"<%=request.getContextPath()%>/ZnnAction/queryGuangGao.action",
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
            {field:'gid', title:'编号',idField:true,width:10 },
            {field:'gmid',title:'商家编号', width:10 },
            {field:'merchantName',title:'商家名称', width:10 },
            {field:'gstate', title:'广告状态', width:10 ,formatter:function(value,row,index) {
                if (value == 2) {
                    return "下架图";
                }else {
                    return "上架图";
                }
            }},
            {field:'gphoto', title:'广告片', width:10,
                formatter: function(value,row,index){
                    var path='<img src="'+value+'" width="70px">';
                    return path;
                }},
            {field:'hhh', title:'操作', width:10,
                formatter:function(value,row,index) {
                    return '<button  class="btn btn-primary"  data-toggle="modal" data-target="#myModal1" onclick="queryGuangGaoById('+row.gid+')">修改</button>' +
                        '<button type="button" class="btn btn-danger" class="btn btn-primary"   onclick="deleteGuangGao('+ row.gid + ')" >删除</button>';
                }}
        ]]
    });
    //执行修改
    function updateGuangGao(){
        $.ajax({
            url:"<%=request.getContextPath()%>/ZnnAction/updateGuangGao.action",
            type:"post",
            data:$("#upForm").serialize(),
            dataType:"text",
            success:function (updateFlag){
                $("#guanggao").bootstrapTable('refresh');
            },
            error:function (){
                alert("修改失败");
            }
        })
    }


    //修改的回显
    function queryGuangGaoById(gid){
        $.ajax({
            url:"<%=request.getContextPath()%>/ZnnAction/queryGuangGaoById.action",
            type:"post",
            data:{"gid":gid},
            dataType:"json",
            success:function (guangGao){
                $("[name='guangGao.gid']").val(guangGao.gid);
                $("[name='guangGao.gphoto']").val(guangGao.gphoto);
                var html = '<img src='+guangGao.gphoto+' width="70px" height="70px">';
                $("#show2").append(html);
                $('#bigTypeId2').selectpicker('val',(guangGao.gmid));

                $("[name='guangGao.gstate']").val(guangGao.gstate);
                if(guangGao.gstate==1){
                    $('#gstate1').attr("checked",true);
                }else{
                    $('#gstate2').attr("checked",true);
                };

            }
        });

    }

    function deleteGuangGao(gid){
        $.ajax({
            url:"<%=request.getContextPath()%>/ZnnAction/deleteGuangGao.action",
            dataType:"text",
            type:"post",
            data:{"gid":gid},
            success:function(){
                $('#guanggao').bootstrapTable('refresh');
            }
        })
    }

</script>

<script>
    $("#topian1").uploadify({
        //插件自带  不可忽略的参数
        'swf': '${pageContext.request.contextPath}/syz/js/uploadify/uploadify.swf',
        //前台请求后台上传文件的url  不可忽略的参数
        'uploader': '${pageContext.request.contextPath}/ZnnAction/scwj.action',
        //给div的进度条加背景  参数为<div>id属性值  不可忽略
        'queueID': 'fileQueue',
        //上传文件文件名   和file文件域的name属性一致   和后台接受的属性名对应
        'fileObjName' : 'uploadFile',
        //给上传按钮设置文字
        'buttonText': '上传',
        //如果为true 为自动上传  在选择文件后, 为false 那么它就要我们自己手动点上传按钮
        'auto': true,
        //可以同时选择多个文件 默认为true  不可忽略
        'multi': true,
        //上传后队列是否消失
        'removeCompleted': true,
        //队列消失时间
        'removeTimeout' : 1,
        //最大上传文件数量
        'uploadLimit':  10,
        //制定可以文件上传
        'fileExt': '*.jpg;*.jpeg;*.gif;*.png;*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.txt',
        'onUploadSuccess' : function(file, data, response) {

            var html = '<img  src='+data+' width="70" height="70">';
            $("#show1").html(html);
            $("#photo1").val(data);
            $("#show2").append(html);
            $("#photo2").val(data);
        }
    })

    $("#topian2").uploadify({
        //插件自带  不可忽略的参数
        'swf': '${pageContext.request.contextPath}/syz/js/uploadify/uploadify.swf',
        //前台请求后台上传文件的url  不可忽略的参数
        'uploader': '${pageContext.request.contextPath}/ZnnAction/scwj.action',
        //给div的进度条加背景  参数为<div>id属性值  不可忽略
        'queueID': 'fileQueue',
        //上传文件文件名   和file文件域的name属性一致   和后台接受的属性名对应
        'fileObjName' : 'uploadFile',
        //给上传按钮设置文字
        'buttonText': '上传',
        //如果为true 为自动上传  在选择文件后, 为false 那么它就要我们自己手动点上传按钮
        'auto': true,
        //可以同时选择多个文件 默认为true  不可忽略
        'multi': true,
        //上传后队列是否消失
        'removeCompleted': true,
        //队列消失时间
        'removeTimeout' : 1,
        //最大上传文件数量
        'uploadLimit':  10,
        //制定可以文件上传
        'fileExt': '*.jpg;*.jpeg;*.gif;*.png;*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.txt',
        'onUploadSuccess' : function(file, data, response) {

            var html = '<img id="img2" src='+data+' width="70" height="70">';
            $("#show2").html(html);
            $("#photo2").val(data);
        }
    })
</script>


</body>
</html>
