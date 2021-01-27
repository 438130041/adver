<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/25
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>晶药师</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="Content-Type" content="multipart/form-data;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script src="../resources/admin/layui-2.5.4/layui.js"></script>
    <link rel="stylesheet" href="../resources/admin/layui-2.5.4/css/layui.css">
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    
    <style type="text/css">
     	*{
            margin: 0;
            padding: 0;
        }
        .itemsexchange{
        	margin-top:60px;
        }
        layui-form-select  dl{max-height:200px;}
        
         ol li a{
    background-color: rgba(0,0,0,1)!important;
  }
    .three_this{
      background-color: #ebba92!important;
    }
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">晶药师题库后台系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:">
                    <img src="../resources/admin/login/img/toxian.jpg" class="layui-nav-img">
                    admin
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">系统管理</a>
                    <dl class="layui-nav-child">
                       <dd ><a href="../admintikuorder/admintikuorder">兑换码查询</a></dd>
                        <dd ><a href="../zhuanshuxueyuan/zhuanshuxueyuan">专属学员查询</a></dd>
                        <dd ><a href="../jianpinzhuantai/jianpinzhuantai">奖品状态查询</a></dd>
                        <dd ><a href="../zhuanshudaima/zhuanshudaima">专属代码查询</a></dd>
                    </dl>
                </li>
            </ul>
           <!-- 新的栏 -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">一月活动</a>
                      <dl class="layui-nav-child">
                      	<dd>
                      		<a href="javascript:;" id="menu_three">学历推广活动</a>
                      		<ol class="layui-nav-child" style="display: none;">
                      			<li><a href="../yiyuehotai/tuiguanren"><i class="fa fa-user-plus"></i><span class="layui-left-nav">&nbsp;&nbsp;推广人信息</span></a></li>
                      			<li><a href="../yiyuehotai/beituijianren"><i class="fa fa-user"></i><span class="layui-left-nav">&nbsp;&nbsp;&nbsp;推荐人信息</span></a></li>
                      			<li><a href="../yiyuehotai/tixianchaxuen"><i class="fa fa-bar-chart"></i><span class="layui-left-nav">&nbsp;&nbsp;&nbsp;提现查询</span></a></li>
                      			<li><a href="../yiyuehotai/chojiangxinxi"><i class="fa fa-calculator"></i><span class="layui-left-nav">&nbsp;&nbsp;&nbsp;&nbsp;抽奖信息</span></a></li>
                      			<li><a href="../yiyuehotai/cenjiaoxinxi"><i class="fa fa-calendar"></i><span class="layui-left-nav">&nbsp;&nbsp;&nbsp;&nbsp;成交信息</span></a></li>
                      		</ol>
                      	</dd>
                      </dl>
                </li>
            </ul>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">

            <div class="demoTable">
                <!--  输入用户姓名  -->
                <div class="layui-input-inline" style="margin-top:10px;">
                    <input type="text" name="User_Name" id="demoLoad" required lay-verify="required" class="layui-input" placeholder="请输入用户姓名">
                </div>
                <button class="layui-btn" style="margin-top:10px;" data-type="reload" id="sousuo">
                    <i class="layui-icon">&#xe615;</i>搜索
                </button>
                <!-- 输入用户手机号 -->
                <div class="layui-input-inline" style="margin-top:10px;">
                    <input type="text" name="number" id="number" required lay-verify="required" class="layui-input" placeholder="请输入用户手机号">
                </div>
                <button class="layui-btn" style="margin-top:10px;" data-type="reloadphone" id="sousuophone">
                    <i class="layui-icon">&#xe615;</i>搜索
                </button> 
                <!-- 输入用户微信昵称 -->
                <div class="layui-input-inline" style="margin-top:10px;">
                    <input type="text" name="nickname" id="nickname" required lay-verify="required" class="layui-input" placeholder="请输入用户微信昵称">
                </div>
                <button class="layui-btn" style="margin-top:10px;" data-type="reloadnickname" id="sousuonickname">
                    <i class="layui-icon">&#xe615;</i>搜索
                </button> 
                <!-- 添加兑换码 -->
                <button class="layui-btn " style="margin-top:10px;" data-type="batchDelete" id="tianjia"  >
                		<i class="layui-icon">&#xe642;</i>添加兑换码
           		</button> 
           		<!-- 批量导入兑换码-->
                <!-- <button class="layui-btn " style="margin-top:10px;" data-type="batchDelete" id="piliandaoru" >
                		<i class="layui-icon">&#xe642;</i>批量导入兑换码
           		</button> -->
           	    <button type="button" class="layui-btn"  id="piliandaoru"  style="margin-top:10px;"  lay-submit="" lay-filter="doInput">
           				<span class="layui-icon layui-icon-upload"></span>批量导入兑换码
           		</button> 
            </div>
               
            <table class="layui-hide" lay-filter='demo' id="productDemo"></table>
        </div>
    </div>
	
	<!--上传文件弹出层开始 -->
<div style="display: none;padding: 5px" id="showUploadExcelDiv">
	<form action="" method="post" class="layui-form layui-form-pane" id="exportFrm" lay-filter="exportFrm">
		<div class="layui-upload" >
		    <button type="button" style="margin-top: 20px;margin-left: 20px" class="layui-btn" lay-submit="" lay-filter="doTemplate"></span>下载模板</button>
			<button type="button" style="margin-top: 20px;margin-left: 20px" class="layui-btn layui-btn-normal" id="test8">选择文件</button> 
			<button type="button"  style="margin-top: 20px"class="layui-btn" id="test9">开始上传</button>
		</div>
	</form>
</div>
<!--上传文件弹出层结束 -->
	
    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="js/layui-2.5.4/layui.js"></script>
<script type="text/html" id="toolbarDemo">
</script>
<script>

    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
<script type="text/html" id="barDemo">
    <%--    <a class="layui-btn layui-btn-xs" lay-event="add">删除</a>--%>

    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    &nbsp;
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<!--<script type="application/javascript" src="../../js/jquery/product.js"></script>-->
<script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
<script>
    layui.use(['table'], function() {
        var table = layui.table;
        //方法级渲染
        table.render({
            elem: '#productDemo'
            , url: '../admintikuorder/yonhufind'
            , id: 'productReload'
            , page: true
            ,toolbar: '#toolbarDemo'//开启工具栏
            , height: 600
            , limit: 200
            ,method:'post'//阻止Layui传值给后台乱码
            , limits: [50, 100, 200, 300,4000]
            , cols: [[
                {type: 'checkbox', fixed: 'left'}
                , {field: 'SystemAccount', title: '学习系统id'}
                , {field: 'openid', title: '微信id'}
                , {field: 'nickname', title: '微信昵称'}
                , {field: 'days', title: '连续天数'}
                , {field: 'createTime', title: '最近登录时间'}
                , {field: 'integral', title: '累计积分'}
                , {field: 'items', title: '物品数量'}
                , {field: 'exchange', title: '兑换码'}
                , {field: 'StudentsName', title: '姓名'}
                , {field: 'number', title: '手机号'}
                , {field: 'lv1state', title: 'lv1礼物'}
                , {field: 'lv2state', title: 'lv2礼物'}
                , {field: 'lv3state', title: 'lv3礼物'}
                , {field: 'User_Name', title: '真实姓名'}
               /*  , {field: 'createtime', title: '交易时间',templet: '<div>{{layui.util.toDateString(d.createtime, "yyyy-MM-dd  HH:mm:ss") }}</div>',sort:true} */
                , {field: 'status', title: '状态'}
                , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 260, align: 'center'}
            ]]
        });
      
        
        
        //条件查询
        var $ = layui.$, active = {
             //根据用户名查询用户信息
    		 reload: function () {
    			  console.log("进入用户重载"); 
                //执行重载(进入上面的查询数据，显示数据的方法)
                table.reload('productReload', {
                	page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                    	User_Name: $('#demoLoad').val(),
                    	nickname:"null",
                    	number:"null"
                    }
                });
            },
            //根据用户微信昵称查询用户信息
           	 reloadnickname: function () {
          		 //执行重载
          			 table.reload('productReload', {
             	  page: {
                   	curr: 1 //重新从第 1 页开始
              	 }
               		, where: {
               			nickname: $("#nickname").val(),
               			number:"null",
               			User_Name:"null"
              		 }
           		});
            },   
           //根据用户手机号查询用户信息
            reloadphone: function () {
            	 console.log("进入手机号重载");  
          		 //执行重载
          			 table.reload('productReload', {
             	  page: {
                   	curr: 1 //重新从第 1 页开始
              	 }
               		, where: {
               			number: $("#number").val(),
               			User_Name:"null",
               			nickname:"null"
              		 }
           		});
            },    
            batchDelete: function () {
                var checkStatus = table.checkStatus('productReload')
                    , data = checkStatus.data;
                var str = "";
                if (data.length > 0) {
                    for (var i = 0; i < data.length; i++) {
                        str += data[i].id + ",";
                    }
                    layer.confirm('是否删除这' + data.length + '数据', {icon: 3, title: '提示'}, function (index) {
                        $.ajax({
                            url: 'jixunbatchDelete',
                            type: 'post',
                            data: {
                                'str': str
                            },
                            dataType: 'json',
                            success: function () {
                                location.reload(true);
                            },
                            error: function () {
                                alert("删除错误,请重新编写!");
                            }
                        });
                        layer.close(index);
                    });
                } else {
                    layer.alert("请选择要删除的数据!")
                }
            }
        };
        
        
        
        //根据用户名搜索按钮
        $('#sousuo').on('click', function () {
            var type = $(this).data('type');
             console.log("用户名type:"+type); 
            active[type] ? active[type].call(this) : '';
        });
        //根据微信昵称搜索按钮
        $('#sousuonickname').on('click', function () {
        	var type = $(this).data('type');
        	 console.log("昵称type:"+type); 
            active[type] ? active[type].call(this) : '';
        });
        //根据用户手机号搜索按钮
        $('#sousuophone').on('click', function () {
            var type = $(this).data('type');
             console.log("手机号type:"+type); 
            active[type] ? active[type].call(this) : '';
        });
        
        
        /*Excel导入  */
         $("#piliandaoru").on('click',function(){ 
        	 layui.use('form', function(){
        		 var form = layui.form;//可能对应着layui版本不同，var form = layui.form();或者var form = layui.form;切换即可解决问题
        			 form.on("submit(doInput)",function (data) {
        	        		layer.open({
        	                    type: 1,
        	                    area: ['900px','150px'],
        	                    fixed: false,
        	                    title: '导入数据',
        	                    content: $("#showUploadExcelDiv"),
        	                    end: function () {
        	                    	
        	                    	location.reload();//自动刷新页面数据
        	                    }
        	                })
        	            })
        		})
        	 
        	 
        	 
        	
       })  
       $("#test8").on('click',function(){
    	   layui.use('upload', function(){//必须是layui.use('要使用的方法'，function(){})
    		   var  upload = layui.upload;
    		 //选完文件后不自动上传（上传文件）
               upload.render({
                   elem: '#test8'
                   ,url: '/notice/importNotice ' //上传文件接口
                   ,auto: false
                   ,accept: 'file'
                   ,exts: 'xlsx'
                   //,multiple: true
                   ,bindAction: '#test9'
                   ,done: function(res){
                       layer.msg(res.msg)
                   }
               });  
    		   
    		   
    	   });
    	   
       })
       
       
       
       
      /*  form.on("submit(doTemplate)",function (data) {
            window.location.href="/notice/downloadExcel"
        }) */
       
       
       
       
       
       
       
        //添加数据
        $("#tianjia").on('click',function (){
        	 layer.open({
        	     //layer提供了5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
        	      type:1,
        	      title:"添加用户兑换码",
        	      area: ['50%','50%'],
        	      content:'<div id="mydiv"  style="margin-left:35px;margin-top:25px;"><div class="namenumber"><div  class="number" style="display:inline-block"> <label class="layui-form-label">手机号：</label><input id="Context2"  style="width:270px;height:30px;resize:none;border-radius:6px;"></input></div><div  class="name" style="display:inline-block"><label class="layui-form-label">用户名：</label><input id="Context1"  style="width:270px;height:30px;resize:none;border-radius:6px;"></input></div></div><div  class="itemsexchange"><div class="items" style="display:inline-block"><label class="layui-form-label">物品数量：</label><input id="Context3"  style="width:270px;height:30px;resize:none;border-radius:6px;"></input></div><div  class="exchange"  style="display:inline-block"><label class="layui-form-label">兑换码</label><input id="Context4"  style="width:270px;height:30px;resize:none;border-radius:6px;"></input></div></div></div>',
        	      btn: ['确定', '取消'],
        	      yes:function(index,layero){
        	    	   var  StudentsName =  top.$("#Context1").val();
        	    	   var  number  = top.$("#Context2").val();
        	    	   var  items = top.$("#Context3").val();
        	    	   var  exchange  = top.$("#Context4").val();
        	    	   if(StudentsName == null || StudentsName == ""){
        	    		   alert("请填写姓名！");
        	    		   return;
        	    	   }
        	    	   if(number == null || number == ""){
        	    		   alert("请填写手机号！");
        	    		   return;
        	    	   }
        	    	   if(items == null ||  items  == ""){
        	    		   alert("请填写物品数量！");
        	    		   return;
        	    	   }
        	    	   if(exchange == null || exchange == ""){
        	    		   alert("请填写兑换码！");
        	    		   return;
        	    	   }
        	    	    $.ajax({
       					url:'../exchange/exchange',
       					dataType:'json',
       					type:'post',
       					data:{StudentsName:StudentsName,numbers:numbers,items:items,exchange:exchange}, 
       					success:function(data){
       						if(data.type == 'success'){
       						 $("#mydiv").hide();
       						 table.reload('productReload');
       						
       						}else{
       							console.log("页面出错请联系管理员！");
       						}
       					}
       				}); 
        	    	   
        	    	  /* alert("StudentsName的值:"+StudentsName);
        	    	  alert("numbers的值:"+numbers);
        	    	  alert("items的值:"+items); */
        	      }
        	    });
        })


        table.on('toolbar(demo)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id),data = checkStatus.data;
            switch(obj.event){
                case 'add':
                    layer.open({
                        type: 2,
                        //skin: 'layui-layer-rim', //加上边框
                        area: '420px',//宽高
                        content:'add.jsp',
                        btn:['确定','取消'],
                        yes:function(index,layero){
                            var formSubmit = layer.getChildFrame('form',index);
                            var submited = formSubmit.find('button')[0];
                            submited.click();
                            location.reload();
                        }
                    });
                    break;
                case 'del':
                    if(data.length<0){
                        layer.msg('请选择一行删除');
                    }
                    break;
               //打开修改回显页面
                case 'edit':
                    layer.open({
                        type: 2,
                        //skin: 'layui-layer-rim', //加上边框
                        area: '500px', //宽高
                        content:'product/selectByProductId?id='+data[0].id,
                        btn:['确定','取消'],
                        yes:function(index,layero){
                            var formSubmit = layer.getChildFrame('form',index);
                            var submited = formSubmit.find('button')[0];
                            submited.click();
                            location.reload();
                        }
                    });
                    break;
            };
        });
        //删除
        //监听工具条
        table.on('tool(demo)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的DOM对象

            if(layEvent === 'del'){ //删除
                layer.confirm('真的删除行么', function(index){
                    //obj.del();
                    console.log(obj);
                    console.log(data);
                    //layer.close(index);
                    $.ajax({
                        url: "jixundelete",
                        type: "POST",
                        data:{'id':data.id},
                        dataType: "text",
                        success: function(data){
                            if(data==null){
                                layer.msg("删除失败", {icon: 5});
                            }else{
                                //删除这一行
                                obj.del();
                                //关闭弹框
                                layer.close(index);
                                layer.msg("删除成功", {icon: 6});
                                layer.closeAll();
                                window.location.reload();
                                Load(); //删除完需要加载数据
                            }
                        },
                        error:function(){
                            alert(data);
                        },

                    });
                });
            }
        });
    });
	
    
    
    //JavaScript代码区域
    layui.use(['element','jquery'], function(){
      var element = layui.element,$=layui.jquery;
      $("#menu_three").on("click",function(){
         $(this).next().toggle();
      })
        $("ol").on("click","li a",function(){
          $.each($(this).parent().siblings(),function(i,e){
              $(e).find("a").removeClass('three_this')
          });
            $(this).addClass('three_this');                            // 添加当前元素的样式
        })
    });
</script>
</body>
</html>

