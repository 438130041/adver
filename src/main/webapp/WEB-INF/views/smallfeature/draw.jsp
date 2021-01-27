<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="http://crm.jingyaoshi.net/Content/bootstrap.css" rel="stylesheet" />
    <script src="http://crm.jingyaoshi.net/Scripts/jquery-1.10.2.min.js"></script>
    <script src="http://crm.jingyaoshi.net/Content/lib/jquery.cookie.js"></script>
    <script src="http://crm.jingyaoshi.net/Content/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script src="http://crm.jingyaoshi.net/Content/themes.js"></script>
    <script src="../resources/admin/cojian/js/prefixfree.min.js"></script>
    <link href="../resources/admin/cojian/js/drawcss.css" rel="stylesheet" />
    <style type="text/css">
    		.openid{
    			display:none;
    		}
		   .nickname{
		   		display:none;
		   		
		   	}
		  .weidaka{
		  		display:none;
		   }	
		   .header{
               margin: 0;
               padding: 0;
               height: 40px;
               background-color:#f7f7f8;
           }
           .heade>a{
            font-size: 16px;
            line-height: 40px;
            margin-left: 30px;

           }
           a:active, a:hover{
            text-decoration: none;
            outline: none;
           }
           .heade>a::before{
               content: "";
               width: 20px;
               height: 20px;
               position: absolute;
               top: 10px;
               left: 10px;
               background: url(../resources/admin/login/img/right1.png) no-repeat center center;
               background-size:100% 100%;
               -webkit-transform: rotate(180deg);
               -moz-transform: rotate(180deg);
               -o-transform: rotate(180deg);
               -ms-transform: rotate(180deg);
               transform: rotate(180deg);
               
           }
         .dakarenshu{
            display:none;
           }
        .zhengshixueyuan{
        	display:none;
        }
        .codes{
           display:none;
          }
    </style>
    
</head>
	
<body>
	<div  class="openid">${openid}</div>
	<div  class="nickname">${nickname}</div>
	<div  class="weidaka">${weidaka}</div>
	<div  class="dakarenshu">${dakarenshu}</div>
	<div  class="zhengshixueyuan">${zhengshixueyuan}</div>
	<div class="codes">${codes}</div>
    <div class="container-pxfluid">
        <div class="col-md-12 header">
            <div class="heade"  id="fanhui">
                <a href="javascript:;"  id="">返回</a>
            </div>
        </div>
        <div class="heading">
            <!-- <div><img src="../resources/admin/login/img/meiricjian.png" class="headimg" /></div> -->
            <div><img src="../resources/admin/login/img/meiricjian.png" class="headimg" /></div>
        </div>
        <div class="body">
            <div class="col-md-12 headtext ">
                今日你还有<span class="num">3</span>次抽奖机会
            </div>
            <div class="container">
                <div class="boxdiv">
                    <div class="row" id="ProList">

                    </div>

                </div>
                <div class="col-md-12 col-sm-12 col-xs-12 btncoujiangdiv">
                    <div class="btn btncoujiang animated">立即抽奖</div>
                </div>
                <div class="col-md-12 pstext ">
                    <p>*每日晚上23:59分清零所有抽奖次数</p><p> 请在当天使用完抽奖次数哟~</p>
                </div>
                <div class="col-md-12 record">
                    <div class="panel">
                        <div class="panel-heading fengex">
                            <div class="row">
                                <div class="col-md-6 col-xs-6 col-sm-6 headleft">今日参与抽奖<span class="recordnum">${dakarenshu-11}</span>人</div>
                                <div class="col-md-6 col-xs-6 col-sm-6 righttext"><span class="headright"  id="jilu">我的获奖记录</span></div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <marquee id="affiche" behavior="alternate" align="left" direction="up" height="100" loop="-1" scrollamount="10" scrolldelay="500" onMouseOut="this.start()" onMouseOver="this.stop()">
                                <c:forEach items ="${zhojianjilu}" var = "zhojianjilu" >
                    					<div class="row list">
                                   			  <div class="col-md-6 col-xs-6 col-sm-6 lefttext">${zhojianjilu.nickname}</div>
                                    		  <div class="col-md-6 col-xs-6 col-sm-6 righttext">${zhojianjilu.prize}</div>
                               			 </div>
            				    </c:forEach>
                                <!-- <div class="row list">
                                    <div class="col-md-6 col-xs-6 col-sm-6 lefttext">他是龙</div>
                                    <div class="col-md-6 col-xs-6 col-sm-6 righttext">获得了30积分</div>
                                </div>
                                <div class="row list">
                                    <div class="col-md-6 col-xs-6 col-sm-6 lefttext">平凡的世界</div>
                                     <div class="col-md-6 col-xs-6 col-sm-6 righttext">健康管理师</div>
                                </div>
                                <div class="row list">
                                    <div class="col-md-6 col-xs-6 col-sm-6 lefttext">晚安吗</div>
                                    <div class="col-md-6 col-xs-6 col-sm-6 righttext">获得了50积分</div>
                                </div>
                                <div class="row list">
                                    <div class="col-md-6 col-xs-6 col-sm-6 lefttext">静</div>
                                    <div class="col-md-6 col-xs-6 col-sm-6 righttext">获得了100积分</div>
                                </div>
                                <div class="row list">
                                    <div class="col-md-6 col-xs-6 col-sm-6 lefttext">小幸运</div>
                                    <div class="col-md-6 col-xs-6 col-sm-6 righttext">获得了30积分</div>
                                </div>
                                <div class="row list">
                                    <div class="col-md-6 col-xs-6 col-sm-6 lefttext">时间</div>
                                    <div class="col-md-6 col-xs-6 col-sm-6 righttext">获得了30积分</div>
                                </div>
                                <div class="row list">
                                    <div class="col-md-6 col-xs-6 col-sm-6 lefttext">呼</div>
                                      <div class="col-md-6 col-xs-6 col-sm-6 righttext">慢病专员</div>
                                </div>

                                <div class="row list">
                                    <div class="col-md-6 col-xs-6 col-sm-6 lefttext">日子这样过</div>
                                    <div class="col-md-6 col-xs-6 col-sm-6 righttext">获得了100积分</div>
                                </div>
                                <div class="row list">
                                    <div class="col-md-6 col-xs-6 col-sm-6 lefttext">快乐人生</div>
                                    <div class="col-md-6 col-xs-6 col-sm-6 righttext">获得了50积分</div>
                                </div>
                                <div class="row list">
                                    <div class="col-md-6 col-xs-6 col-sm-6 lefttext">九天</div>
                                    <div class="col-md-6 col-xs-6 col-sm-6 righttext">获得了30积分</div>
                                </div>
                                <div class="row list">
                                    <div class="col-md-6 col-xs-6 col-sm-6 lefttext">小布丁</div>
                                    <div class="col-md-6 col-xs-6 col-sm-6 righttext">获得了30积分</div>
                                </div> -->
                            </marquee>
                        </div>

                    </div>
                </div>
                <div class="rulehtml">
                    <div class="rule">
                        <div class="col-md-12 col-xs-12 col-sm-12 rulehead"></div>
                        <div class="container">
                            <div class="col-md-12 col-xs-12 col-sm-12 ruleheadtext">
                                抽奖规则
                            </div>
                            <div class="col-md-12 col-xs-12 col-sm-12 rulecentertext">
                               <!--  <p>
                                    1.抽奖活动时间：2020.9.18-2020.10.16
                                </p> -->
                                <p>
                                    1.每日打卡可获得三次免费抽奖机会
                                </p>
                                <p>  2.如抽中积分，积分奖励将自动累积至你的积分账户 </p>
                                <p>  3.如抽中课程资料，则根据提示前往商城兑换奖品 </p>
                                <p>  4.如果重复中奖，可点击【分享好友】按钮，分享给好友 </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <script src="http://crm.jingyaoshi.net/Scripts/bootstrap.min.js"></script>
    <script src="../resources/admin/cojian/js/Drawjs.js"></script>
    <script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
    <script type="text/javascript">
    	//进入查看我的获奖记录
    	$("#jilu").click(function(){
    		var  openid = $(".openid").text();
    		window.location.href="../jilu/jilu?openid="+openid+"";																																																																																																																																		
    		
    	})
    	$("#fanhui").click(function(){
    		var  openid = $(".openid").text();
    		window.location.href="../paihanban/paihanban?openid="+openid+"";
    		
    	})
    	
    </script>
</body>
</html>
