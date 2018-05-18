<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/easyui/jquery.easyui.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/icon.css">
</head>
<body>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/easyui/locale/easyui-lang-zh_CN.js"></script>

<table id="rizhiwb"></table>
<div id="tbrizhi">
	   <div>
	      <input type="text" class="Wdate" id="timeStart" name="timestart" onClick="WdatePicker()">
								&nbsp;-&nbsp;
		  <input type="text" class="Wdate" id="timeEnd" name="timeend" onClick="WdatePicker()">
		<%--<input type="text" class="Wdate" id="timeStart" name="logtimestart" onClick="WdatePicker()">
								&nbsp;-&nbsp;
		  <input type="text" class="Wdate" id="timeEnd" name="logtimeend" onClick="WdatePicker()">
			--%>
	      <a id="searchbtu" href="javascript:rizhisousuo()" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true">搜索日志</a>
	    <a href="javascript:deleterizhi()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除日志</a>
	    <a href="javascript:portPoiExcel()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除日志</a>
	  </div>
</div>
   <script type="text/javascript">
   $(function(){
		 getdata();
	})
   $("#searchbtu").click(function(){
		 getdata();
	     })
	function getdata(){
       alert($('#timeStart').val())
        alert($('#timeEnd').val())
		//加载数据
		$('#rizhiwb').datagrid({    
	    url:"<%=request.getContextPath()%>/LoginAction/queryRiZhi.action",
	    queryParams:{timestart:$('#timeStart').val(),timeend:$('#timeEnd').val()
		 },
	    fit:true,
	     //按ctrl多选
	     ctrlSelect:true,
	    //开启分页
	    pagination:true,
	    //每页条数
	    pageSize:18,
	    pageList:[18,40,60,80,100],
	    //引入工具栏
	    toolbar:"#tbrizhi",
	    columns:[[    
            {field:'x',title:'',checkbox:true},  
	        {field:'logId',title:'日志id',width:200},
	        {field:'tiem',title:'访问时间',width:200},
	        {field:'clazzName',title:'类名',width:200},
	        {field:'methodName',title:'方法名',width:200},
	        {field:'params',title:'参数与参数名',width:500}
	   	 	]],    
		});
	};
	
	</script>
	<script type="text/javascript">
	function deleterizhi(){
		var temp = "";
		var de = $('#rizhiwb').datagrid("getSelections");
		for (var i = 0; i < de.length; i++) {
			temp+=","+de[i].logId;
		}
		temp = temp.substr(1);
		alert(temp)
		$.ajax({
			url:"<%=request.getContextPath()%>/LoginAction/deleteLogs.action?ids="+temp,
			type:"post",
			dataType:"json",
			success:function(aaaa){
			    if(aaaa=="notExist"){
                    $("#rizhiwb").datagrid("load");
                    $.messager.alert("提示","日志删除失败");
				}else{
                    $("#rizhiwb").datagrid("load");
                    $.messager.alert("提示","日志删除成功");
				}

			},
			error:function(){
				$("#rizhiwb").datagrid("load");
				$.messager.alert("提示","操作失败");
			}
			
		});
	}

	</script>
</body>
</html>

<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>运营商管理后台</title>

	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/easyui/jquery.easyui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/icon.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/easyui/locale/easyui-lang-zh_CN.js"></script>


	<script src="js/excanvas.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.ui.custom.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.flot.min.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	<script src="js/jquery.peity.min.js"></script>
	<script src="js/fullcalendar.min.js"></script>
	<script src="js/maruti.js"></script>
	<script src="js/maruti.dashboard.js"></script>
	<script src="js/maruti.chat.js"></script>

	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
	<link rel="stylesheet" href="css/fullcalendar.css" />
	<link rel="stylesheet" href="css/maruti-style.css" />
	<link rel="stylesheet" href="css/maruti-media.css" class="skin-color" />

</head>
<body>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js"></script>

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
				<li><a class="sTrash" title="" href="#">注销</a></li>
			</ul>
		</li>
		<li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">设置</span></a></li>
		<li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">注销</span></a></li>
	</ul>
</div>
<!--<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-left" title="Search"><i class="icon-search icon-white"></i></button>
</div>-->
<!--close-top-Header-menu-->

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i></a>
	<ul>
		<li class="active"><i class="icon icon-home"></i> <span>商家管理</span></a>
			<ul>
				<li><a href="show.jsp">审核商家</a></li>
				<li><a href="show.jsp">商家信息</a></li>
			</ul>
		</li>
		<li> <a href="#"><i class="icon icon-edit"></i> <span>商品基本数据管理</span></a> </li>
		&lt;%&ndash;<li> <i class="icon icon-inbox"></i> <span>基本信息管理</span></a>
              <ul>
                  <li><a href="show.jsp">修改资料</a></li>
                  <li><a href="show.jsp">修改密码</a></li>
              </ul>
          </li>&ndash;%&gt;
		<li>&lt;%&ndash;<a href="#">&ndash;%&gt;<i class="icon icon-th"></i> <span>分类管理</span></a>
		</li>
		<li>&lt;%&ndash;<a href="#">&ndash;%&gt;<i class="icon icon-th"></i> <span>品牌管理</span></a>
		</li>
		<li> <a href="#"><i class="icon icon-signal"></i> <span>类型模板管理</span></a> </li>
		<li> <a href="#"><i class="icon icon-signal"></i> <span>商品审核</span></a> </li>
		<li> <a href="<%=request.getContextPath()%>/showRizhi.jsp"><i class="icon icon-signal"></i> <span>日志管理</span></a> </li>
	</ul>
</div>


<div id="content">
	<div id="content-header">
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Tables</a> </div>
	</div>

	<div id="tbrizhi">
		<div>
			<input type="text" class="Wdate" id="timeStart" name="logtimestart" onClick="WdatePicker()">
			&nbsp;-&nbsp;
			<input type="text" class="Wdate" id="timeEnd" name="logtimeend" onClick="WdatePicker()">
			<a id="searchbtu" href="javascript:rizhisousuo()" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true">搜索日志</a>
			<a href="javascript:deleterizhi()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除日志</a>
		</div>
	</div>
	<div>
		<table id="rizhiwb"></table>
	</div>
</div>

<script type="text/javascript">
    $(function(){
        getdata();
    })
    $("#searchbtu").click(function(){
        getdata();
    })
    function getdata(){
        //加载数据
        $('#rizhiwb').datagrid({
            url:"<%=request.getContextPath()%>/LoginAction/queryRiZhi.action",
            /*  queryParams: { timestart:$('#timeStart').val(),
                   timeend:$('#timeEnd').val()
              }, */
            //fit:true,
            //按ctrl多
            width:400,
            height:400,
            ctrlSelect:true,
            //开启分页
            pagination:true,
            //每页条数
            pageSize:20,
            pageList:[20,40,60,80,100],
            //引入工具栏
            toolbar:"#tbrizhi",
            columns:[[
                {field:'x',title:'',checkbox:true},
                {field:'logId',title:'日志id',width:200},
                {field:'tiem',title:'访问时间',width:200},
                {field:'clazzName',title:'类名',width:200},
                {field:'methodName',title:'方法名',width:200},
                {field:'params',title:'参数与参数名',width:500}
            ]],
        });
    };

</script>
<script type="text/javascript">
    function deleterizhi(){
        var temp = "";
        var de = $('#rizhiwb').datagrid("getSelections");
        for (var i = 0; i < de.length; i++) {
            temp+=","+de[i].logId;
        }
        temp = temp.substr(1);
        alert(temp)
        $.ajax({
            url:"<%=request.getContextPath()%>/LoginAction/deleteLogs.action?ids="+temp,
            type:"post",
            dataType:"json",
            success:function(aaaa){
                if(aaaa=="notExist"){
                    $("#rizhiwb").datagrid("load");
                    $.messager.alert("提示","日志删除失败");
                }else{
                    $("#rizhiwb").datagrid("load");
                    $.messager.alert("提示","日志删除成功");
                }

            },
            error:function(){
                $("#rizhiwb").datagrid("load");
                $.messager.alert("提示","操作失败");
            }

        });
    }
</script>

</body>
</html>
--%>
