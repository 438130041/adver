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
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <!-- <script src="../resources/admin/layui-2.5.4/layui.js"></script>
    <link rel="stylesheet" href="../resources/admin/layui-2.5.4/css/layui.css"> -->
    <link rel="stylesheet" href="../resources/layui/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="../resources/layui/css/layuimini.css?v=2.0.4.2" media="all">
    <link rel="stylesheet" href="../resources/layui/css/themes/default.css" media="all">
    <link rel="stylesheet" href="../resources/layui/lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <style type="text/css">
      #imgs{
      		width:35%;
      		height:80%;
      		margin-top:-5%;
       }
      #texta{
      		color:
       } 
      
   /*       ol li a{
    background-color: rgba(0,0,0,1)!important;
  } */
    /* .three_this{
      background-color: #ebba92!important;
    } */ 
    
    .layui-this > a {
            background-color:#C0C0C0 !important;
            font-weight:bold;
        }
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo  layui-bg-black">
        	<img alt="" src="../resources/admin/login/img/logo-1.png"  class="layui-nav-img" id="imgs">
        	<font  color="#FFFFFF"  size="5px">晶药师</font>
        </div>
       	<div class="layuimini-tool"><i title="展开" class="fa fa-outdent" data-side-fold="1"></i></div>
        <ul class="layui-nav layui-layout-left layui-header-menu layui-header-pc-menu mobile layui-hide-xs">
        	<li class="layui-nav-item " id="currencyHeaderId" data-menu="currency"> <a href="javascript:;"  ><i class="fa fa-address-book"></i> 常规管理</a></li>
			<li class="layui-nav-item" id="componentHeaderId" data-menu="component"> <a href="javascript:;" ><i class="fa fa-lemon-o"></i> 组件管理</a> </li>
			<li class="layui-nav-item" id="otherHeaderId" data-menu="other"> <a href="javascript:;" ><i class="fa fa-slideshare"></i> 其它管理</a> </li>
			<span class="layui-nav-bar" style="left: 0px; top: 60px; width: 0px; opacity: 0;"></span>
		</ul>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <!-- <ul class="layui-nav layui-layout-left">
             <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li> 
            电脑端头部菜单
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul> -->
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:">
                    <img src="../resources/admin/login/img/toxian.jpg" class="layui-nav-img">
                 	  管理员
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
                    <a class="fa fa-square-o" href="javascript:;">&nbsp;&nbsp;&nbsp;一月活动</a>
                      <dl class="layui-nav-child">
                      	<dd>
                      		<a href="javascript:;" id="menu_three" class="fa fa-square-o">&nbsp;&nbsp;&nbsp;学历推广活动</a>
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
    </div>
</div>
    <div class="layui-body">

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="../resources/layui/lib/layui-v2.5.5/layui.js"></script>
<script type="text/html" id="toolbarDemo">
</script>
<script>

    //JavaScript代码区域
    layui.use('element', function(){//
        var element = layui.element;

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

