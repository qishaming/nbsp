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

                    <input type='hidden' name='goods.goodsAuditState' value="1"/>
                    <input type='hidden' name='goods.goodsDiscounts' value="0"/><br/>
                    <div class="input-group">
                        <span class="input-group-addon">商品名</span>
                        <input type="text" name='goods.goodsName' class="form-control" placeholder="请输入名称">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">价格</span>
                        <input type="text"name='goods.goodsPrice' class="form-control" placeholder="请输入价格">
                    </div>

                    <input type="text"name='goods.goodsScript' class="form-control" placeholder="商品介绍">

                    <input type="hidden" name="goods.goodsImg" id="photo1"><br>
                    <div id="show1"><img width="70px" height="70px" id="img1"></div>
                    <input type="file" id="topian1">

                        大类
                        <select id="bigTypeId"  name='goods.bigTypeId' onchange="querySmallType()"  class="selectpicker" data-live-search="true">   </select>
                        <br>

                        小类
                        <select id ="smallTypeId"name="goods.smallTypeId" class="selectpicker" data-live-search="true">   </select>
                         <br>


                        品牌
                        <select id ="brandId"    name="goods.brandId" class="selectpicker"  data-live-search="true">   </select>
                         <br>

                       添加规格
                    <span id="goodsSizeId"></span>
                    <input type="hidden" name='goodsSizeId'>

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

                    <input type='hidden' name='goods.goodsId' value="1"/>
                    <input type='hidden' name='goods.goodsAuditState' value="1"/>
                    <input type='hidden' name='goods.goodsDiscounts' value="0"/><br/>
                    <div class="input-group">
                        <span class="input-group-addon">商品名</span>
                        <input type="text" name='goods.goodsName' class="form-control" placeholder="请输入名称">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">价格</span>
                        <input type="text"name='goods.goodsPrice' class="form-control" placeholder="请输入价格">
                    </div>
                    <input type="text"name='goods.goodsScript' class="form-control" placeholder="商品介绍">

                    <input type="hidden" name="goods.goodsImg" id="photo2"><br>
                    <div id="show2"><img width="70px" height="70px" id="img2"></div>
                    <input type="file" id="topian2">

                    <div class="input-group">
                        <span class="input-group-addon">大类</span>
                        <select id="bigTypeId2"  name='goods.bigTypeId'  class="selectpicker" data-live-search="true">   </select>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">小类</span>
                        <select id ="smallTypeId2"name="goods.smallTypeId" class="selectpicker" data-live-search="true">   </select>
                    </div>

                        添加规格
                        <span id="goodsSizeId2"></span>
                        <input type="hidden" name='goodsSizeId'>

                    <div class="input-group">
                        <span class="input-group-addon">品牌</span>
                        <select id ="brandId2"    name="goods.brandId" class="selectpicker"  data-live-search="true">   </select>
                    </div>
                </form>
            </div>
            //按钮
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    关闭
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="upxinwen()">
                    提交更改
                </button>
            </div>
        </div>
    </div>
</div>


<script>
    //-----------------------------------------规格---------------------------------------------------
    typeid=$("#typeid").val()
    $.ajax({
        url:"<%=request.getContextPath()%>/syz/queryGoodsSize.action",
        type:"post",
        data:{typeid:typeid},
        dataType:"json",
        async:false,
        success:function (data){
            var radioHtml2 = "";

            var size ="";
            $(data).each(function (){
                if(size.indexOf(this.goodsSizeName)>0){

                }else{
                    size =size+"," +this.goodsSizeName;
                }
            });
            var radioHtml = "";
            var sizes=size.substring(1,size.length) .split(",")
            for(var i=0;i<sizes.length;i++){
                $(data).each(function (){
                    var size=this.size;
                    var goodsSizeName=this.goodsSizeName;
                    var goodsSizeId=this.goodsSizeId;
                    if(sizes[i]==goodsSizeName){
                        radioHtml += "<input type='checkbox' name='goodsSizeId' value='"+goodsSizeId+"'/>"+size+"&nbsp;&nbsp;";
                    }

                });
                if(radioHtml2.indexOf(radioHtml)>0){

                }else{
                    radioHtml2=radioHtml2+"<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+sizes[i]+":"+radioHtml;
                    radioHtml = "";
                }

            }
            $("#goodsSizeId").html(radioHtml2);
            $("#goodsSizeId2").html(radioHtml2);
        },
        error:function (){
            alert("查询单选出错");
        }
    })

</script>



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

            <li><a href="<%=request.getContextPath()%>/szh/da.jsp"><i class="icon icon-th"></i> <span>数据分析</span></a>

        </li>
            <li> <a href="<%=request.getContextPath()%>/jump/jumpOrder.action"><i class="icon icon-tag"></i> <span>订单详情</span></a> </li>
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
                        <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">新增</button>

                    </div>


                    <table class="table" id="xinwen" >

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


<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel2">提交商品</h4>
            </div>
            <div class="modal-body">确认提交吗
                <input type="hidden" id="updategoodsid">


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <input type="button" class="btn btn-primary" onclick="updategoodsid()" value="提交更改"/>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


<script type="text/javascript">



    $.ajax({
        url:"<%=request.getContextPath()%>/syz/queryBigType.action",
        type:"post",
        dataType:"json",
        async:false,
        success:function (mt){
            var option = "<option value='' selected>请选择</option>";
            $(mt).each(function (){
                option += "<option value='"+this.bigTypeId+"'>"+this.bigTypeName+"</option>";
            });
            $('#bigTypeId').html(option);
            $("#bigTypeId2").html(option);
        },
        error:function (){
            alert("程序出错2");
        }
    })

    $.ajax({
        url:"<%=request.getContextPath()%>/syz/queryBrand.action",
        type:"post",
        dataType:"json",
        async:false,
        success:function (mt){
            var option = "<option value='' selected>请选择</option>";
            $(mt).each(function (){
                option += "<option value='"+this.brandId+"'>"+this.brandName+"</option>";
            });
            $('#brandId').html(option);
            $("#brandId2").html(option);
        },
        error:function (){
            alert("程序出错querybrand");
        }
    })

    function querySmallType(){
        var bigTypeid=$("#bigTypeId").val();
        querySmallType2(bigTypeid)
    }
    function querySmallType1(){
        var bigTypeid=$("#bigTypeId2").val();
        querySmallType2(bigTypeid)
    }
    function querySmallType2(bigTypeid){

        $.ajax({
            url:"<%=request.getContextPath()%>/syz/querySmallType.action",
            type:"post",
            data:{"bigTypeid":bigTypeid},
            dataType:"json",
            async:false,
            success:function (mt){
                var option = "";
                $(mt).each(function (){
                    option += "<option value='"+this.smallTypeId+"'>"+this.smallTypeName+"</option>";
                });
                $('#smallTypeId').html(option);
                $('#smallTypeId').selectpicker('refresh');
                $('#smallTypeId2').html(option);
                $('#smallTypeId2').selectpicker('refresh');
            },
            error:function (){
                alert("程序出错2");
            }
        })
    }
    //查询
    $("#xinwen").bootstrapTable({
        height:900,
        url:"<%=request.getContextPath()%>/syz/queryGoods.action",
        pagination: true,                   //是否显示分页（*）
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
        pageSize: 3,                     //每页的记录行数（*）
        pageList: [1, 2, 4, 5],        //可供选择的每页的行数（*）
        //  search: true,                      //是否显示表格搜索
        showColumns: true,                  //是否显示所有的列（选择显示的列）
        showRefresh: true,                  //是否显示刷新按钮
        clickToSelect: true,                //是否启用点击选中行
        uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
        onDblClickRow: function (row, tr) {
            //console.log();
            $('#updategoodsid').val(row.goodsid)
            $('#myModal2').modal();
        },
        columns:[[
            {field:'goodsid', title:'编号', idField:true },
            {field:'goodsname', title:'商品名', idField:true},
            {field:'goodsScript', title:'商品介绍', idField:true },
            {field:'bigTypeName', title:'商品类型', idField:true},
            {field:'smallTypeName', title:'商品细分', idField:true },
            {field:'goodsPrice', title:'原价', idField:true },
            {field:'brandName', title:'品牌'},
            {field:'goodsSizeName', title:'规格'},
            {field:'goodsAuditState', title:'操作',
                formatter:function(value,row,index){
                    if(row.goodsAuditState == 1){
                        return  '未提交';
                    }else if(row.goodsAuditState == 2){
                        return  '待审核';
                    }
                    else if(row.goodsAuditState == 3){
                        return  '审核通过';
                    }
                    else if(row.goodsAuditState == 4){
                        return  '未通过';
                    }
                }

            },{field:'goodsimg', title:'商品图片',
                formatter: function(value,row,index){
                    var path ="";

                    var path='<img src="'+value+'" width="70px">';
                    return path;


                }


            },{field:'hhh', title:'操作',
                formatter:function(value,row,index){
                    return  '<button  class="btn btn-primary"  data-toggle="modal" data-target="#myModal1" onclick="updateyy('+row.goodsid+","+row.bigTypeId+')">修改商品</button>' +
                        '<button type="button" class="btn btn-danger"  onclick="delxinwen('+row.goodsid+')" >删除该商品</button>';


                }}

        ]]
    });
    //修改
    function updateyy(goodsid,bigTypeId){
        $.ajax({
            url:"<%=request.getContextPath()%>/syz/hxGoods.action",
            type:"post",
            data:{"goodsid":goodsid},
            dataType:"json",
            success:function (goods){
                $("[name='goods.goodsId']").val(goods.goodsId);
                $("[name='goods.goodsAuditState']").val(goods.goodsAuditState);
                $("[name='goods.goodsDiscounts']").val(goods.goodsDiscounts);
                $("[name='goods.goodsName']").val(goods.goodsName);
                $("[name='goods.goodsPrice']").val(goods.goodsPrice);
                $("[name='goods.goodsScript']").val(goods.goodsScript);
                $('#bigTypeId2').selectpicker('val',(bigTypeId));
                querySmallType1();
                $('#smallTypeId2').selectpicker('val',(goods.smallTypeId));
                $('#goodsSizeId2').selectpicker('val',(goods.sizeId));
                $('#brandId2').selectpicker('val',(goods.brandId));
                $("#img2").html(" <img id='img2' src="+goods.goodsImg+" width='70' height='70'>");


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
        var Goodsizeid="";
        $('input:checkbox[name=goodsSizeId]:checked').each(function(k){
            Goodsizeid +=','+$(this).val();
        })

        $("[name='goodsAndSize.goodsSizeId']").val(Goodsizeid.substring(1,Goodsizeid.length) );

        $.ajax({
            url:"<%=request.getContextPath()%>/syz/addGoods.action",
            type:"post",
            data:$("#addForm").serialize(),
            dataType:"text",
            success:function (addFlag){
                $("[name='goodsSizeId'] :checkbox").attr("checked", false);
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

    //IMGSS
    $("#topian1").uploadify({
        //插件自带  不可忽略的参数
        'swf': '${pageContext.request.contextPath}/syz/js/uploadify/uploadify.swf',
        //前台请求后台上传文件的url  不可忽略的参数
        'uploader': '${pageContext.request.contextPath}/syz/scwj.action',
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
        }
    })
    $("#topian2").uploadify({
        //插件自带  不可忽略的参数
        'swf': '${pageContext.request.contextPath}/syz/js/uploadify/uploadify.swf',
        //前台请求后台上传文件的url  不可忽略的参数
        'uploader': '${pageContext.request.contextPath}/syz/scwj.action',
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
    function  updategoodsid() {
        var updategoodsid=$("#updategoodsid").val();
        $.ajax({
            url:"<%=request.getContextPath()%>/syz/submitgoods.action",
            type:"post",
            data:{"goodsid":updategoodsid},
            dataType:"json",
            async:false,
            success:function (mt){
                $("#xinwen").bootstrapTable('refresh');
                $('#myModal2').modal('hide')
            },
            error:function (){
                alert("提交出错");
            }
        })
    }




</script>

</body>
</html>
