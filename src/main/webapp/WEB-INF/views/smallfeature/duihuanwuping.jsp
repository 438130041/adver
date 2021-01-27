<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> 
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <title>积分兑换</title>
    <script>
        (function () {
          function computed() {
            let HTML = document.documentElement,
              winW = HTML.clientWidth,
              desW = 750;
            if (winW >= desW) {
              HTML.style.fontSize = "100px";
              return;
            }
            HTML.style.fontSize = winW / desW * 100 + 'px';
          }
          computed();
          window.addEventListener('resize', computed);
        })();
      </script>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        a{
            text-decoration: none;
            color: #000;
        }
        body{
            max-width: 1080px;
            min-width: 320px;
            width: 100%;
            margin: 0 auto;
            font-family: Arial, Helvetica;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
            background: rgb(243, 243, 243);
        }
        .wrapper{
            padding-bottom: 100px;
            
        }
        .header{
            width: 100%;
            height: 1rem;
            font-size: 0.35rem;
            position: relative;
            background: #fff;
        }
        .heade>a{
            line-height: 1rem;
            display: block;
            padding-left: .7rem;
        }
        .heade>a::before{
            content: "";
            width: .4rem;
            height: .3rem;
            background: url(../resources/admin/login/img/return.png) no-repeat center;
            background-size: 100% 100%;
            position: absolute;
            left: .2rem;
            top: 50%;
            transform: translateY(-50%);

        }
        .Points-exchange{
            margin-top: 0.6rem;
        }
        .Points-exchange ul li{
            list-style: none;
        }
        .Integral-acquisition{
            width: 90%;
            height: 2.5rem;
            margin: 0 auto;
            /* background: url(./images/bg.jpg) no-repeat center; */
            background: url(../resources/admin/login/img/bg.jpg) no-repeat center;
            background-size: 100% 100%;
            font-size: .3rem;
            position: relative;
            margin-top: .3rem;
        }
        .Integral-acquisition-p>p{
            margin: 0.55rem .8rem;
            display: inline-block;
        }
        .Integral-acquisition-jf>p{
            margin-left: .8rem;
            float: left;
        }
        .Integral-acquisition-jf>p>span{
            font-size: 0.4rem;
        }
        .duihuan{
            width: 1.5rem;
            height: .5rem;
            background: #ffcc66;
            float: right;
            margin-right: .6rem;
        }
        .duihuan>a{
            display: block;
            text-align: center;
            line-height: .5rem;
            font-size: .25rem;
        }
        .duihuan a{
        	text-decoration:none;
        }
        .heade a{
        	text-decoration:none;
          }
        .openid{
        	display:none;
        }
       .dianji{
       		margin-top:10%;
       		margin-left:15%;
       }
       #imgs{
       		width:100%;
       		height:100%;
       		position:relative;
       		left:-8%;
       		margin-top:3%;
       }
       #baojian{
       	position:relative;
       	top:-15%;
       }
    </style>
</head>
<body>
	<div class="openid">${openid}</div>
    <div class="wrapper">
         <div class="header">
            <div class="heade"  onclick="fanhui()">
                <a href="javascript:;">返回</a>
            </div>
        </div>
        <!-- <div  class="dianji">
        	<span>点击“前往兑换”进入商城点击“礼品兑换”</span>
        	<img alt="" src="../resources/admin/login/img/lipin.png"  id="imgs">
        </div> --> 
        <div class="Points-exchange">
            <ul>
                 <li>
                   <!--  <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <p>vip刷分题库</p> 
                        </div>
                        <div class="Integral-acquisition-jf">
                            <P>所需积分：<span>300积分</span></P>
                            <div class="duihuan" onclick="shuafentiku()">
                                <a href="javascript:;">前往兑换</a>
                            </div>
                        </div>
                    </div> -->
                </li>
                <li>
                    <!-- <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <p>冲刺抢分礼包</p>
                        </div>
                        <div class="Integral-acquisition-jf">
                            <P>所需积分：<span>300积分</span></P>
                            <div class="duihuan" onclick="qiangfenglibao()">
                                <a href="javascript:;">前往兑换</a>
                            </div>
                        </div>
                    </div> -->
                </li>
                <li> 
                    <!-- <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <p>密押卷</p>
                        </div>
                        <div class="Integral-acquisition-jf">
                            <P>所需积分：<span>500积分</span></P>
                            <div class="duihuan" onclick="miyajuan()" >
                                <a href="javascript:;">前往兑换</a>
                            </div>
                        </div>
                    </div> -->
                </li>
                <li>
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <p>习题解析班</p>
                        </div>
                        <div class="Integral-acquisition-jf">
                            <P>所需积分：<span>500积分</span></P>
                            <div class="duihuan" onclick="xitijiexi()">
                                <a href="javascript:;">前往兑换</a>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <p>救命抢分班</p>
                        </div>
                        <div class="Integral-acquisition-jf" id="baojian">
                            <P>所需积分：<span>1000积分</span></P>
                            <div class="duihuan" onclick="joumingqianfen()">
                                <a href="javascript:;">前往兑换</a>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <p>16天集训营</p>
                        </div>
                        <div class="Integral-acquisition-jf">
                            <P>所需积分：<span>1000积分</span></P>
                            <div class="duihuan" onclick="jixuenying()">
                                <a href="javascript:;">前往兑换</a>
                            </div>
                        </div>
                    </div>
                </li>
                 <li>
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <p>押题冲刺班</p>
                        </div>
                        <div class="Integral-acquisition-jf">
                            <P>所需积分：<span>1500积分</span></P>
                            <div class="duihuan" onclick="yatichoci()">
                                <a href="javascript:;">前往兑换</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</body>	
	<script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
	<script type="text/javascript">
		//点击前往兑换，进入商城
		
		//刷分题库
		function  shuafentiku(){
			
			window.location.href="http://shop.jingyaoshi.net/wxLoginssto";
			
		}
		//冲刺抢分礼包
		function   qiangfenglibao(){
			
			window.location.href="http://shop.jingyaoshi.net/wxLoginssto";
			
		}
		//密押卷
		function  miyajuan(){
			
			window.location.href="http://shop.jingyaoshi.net/wxLoginssto";
			
		}
		//习题解析班
		function  xitijiexi(){
			
			window.location.href="http://shop.jingyaoshi.net/wxLoginssto";
			
		}
		//救命抢分班
		function  joumingqianfen(){
			
			window.location.href="http://shop.jingyaoshi.net/wxLoginssto";
			
		}
		//16集训营
		function  jixuenying(){
			
			window.location.href="http://shop.jingyaoshi.net/wxLoginssto";
			
		}
		//押题冲刺班
		function  yatichoci(){
			window.location.href="http://shop.jingyaoshi.net/wxLoginssto";
		}
		
		
		//页面返回
		function  fanhui(){
			var  openid = $(".openid").text();
			window.location.href="../paihanban/paihanban?openid="+openid+"";
		}
	</script>
	
</html>