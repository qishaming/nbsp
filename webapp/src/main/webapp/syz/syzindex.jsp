<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/4
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"    pageEncoding="utf-8"%>
<html>
<head>
    <meta charset="utf-8" />
    <title>Title</title>
    <link href="<%=request.getContextPath() %>/syz/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Bootstrap 核心css -->

    <link href="<%=request.getContextPath() %>/syz/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">

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

                        <div class="input-group">
                            <span class="input-group-addon">大类</span>
                            <select id="bigTypeId"  name='goods.bigTypeId' onchange="querySmallType()"  class="selectpicker" data-live-search="true">   </select>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">小类</span>
                            <select id ="smallTypeId"name="goods.smallTypeId" class="selectpicker" data-live-search="true">   </select>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">规格</span>
                            <%-- 多选加 multipley--%>
                            <select id ="goodsSizeId"name="goods.sizeId" class="selectpicker"  data-live-search="true">   </select>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon">品牌</span>
                            <select id ="brandId"    name="goods.brandId" class="selectpicker"  data-live-search="true">   </select>
                        </div>


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
                        <select id="bigTypeId2"  name='goods.bigTypeId'   class="selectpicker" data-live-search="true">   </select>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">小类</span>
                        <select id ="smallTypeId2"name="goods.smallTypeId" class="selectpicker" data-live-search="true">   </select>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">规格</span>
                        <%-- 多选加 multipley--%>
                        <select id ="goodsSizeId2"name="goods.sizeId" class="selectpicker"  data-live-search="true">   </select>
                    </div>
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


<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">新增</button>

<table class="table" id="xinwen" border="1">

</table>


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
    $.ajax({
            url:"<%=request.getContextPath()%>/syz/querySize.action",
            type:"post",
            dataType:"json",
            async:false,
            success:function (mt){
                var option = "";
                $(mt).each(function (){
                    option += "<option value='"+this.goodsSizeId+"'>"+this.goodsSizeName+"</option>";
                });
                $('#goodsSizeId').html(option);
                $('#goodsSizeId2').html(option);
            },
            error:function (){
                alert("程序出错2");
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
        columns:[[
            {field:'goodsid', title:'编号', idField:true,  width:10 },
            {field:'goodsname', title:'商品名', idField:true,  width:10 },
            {field:'goodsScript', title:'商品介绍', idField:true,  width:10 },
            {field:'bigTypeName', title:'商品类型', idField:true,  width:10 },
            {field:'smallTypeName', title:'商品细分', idField:true,  width:10 },
            {field:'goodsPrice', title:'原价', idField:true,  width:10 },
            {field:'brandName', title:'品牌', width:10 },
            {field:'goodsSizeName', title:'规格', width:10 },
            {field:'goodsAuditState', title:'操作', width:10,
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

            },{field:'goodsimg', title:'商品图片', width:10,
                formatter: function(value,row,index){
                    var path ="";

                    var path='<img src="'+value+'" width="70px">';
                    return path;


                }


            },{field:'hhh', title:'操作', width:20,
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

        $.ajax({
            url:"<%=request.getContextPath()%>/syz/addGoods.action",
            type:"post",
            data:$("#addForm").serialize(),
            dataType:"text",
            success:function (addFlag){
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





</script>
</body>

</html>
