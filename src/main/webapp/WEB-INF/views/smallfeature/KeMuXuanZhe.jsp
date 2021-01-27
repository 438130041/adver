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
    <title>中奖记录</title>
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
            margin-top: .2rem;
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
      .lqfenxianye{
      		display:none;
      }
      #prize{
      	padding-top:25px;
		margin-left:12%;
       }
      #sflq{
      	display:none;
       }
     #shuafenti{
     		display:none;
      }
      .leixing{
      	display:none;
      }
     #miyajuan{
     	display:none;
      }
      #qianfenlibao{
      	display:none;
      }
     #xitijiexiban{
       display:none;
     }
     #joumingban{
     	display:none;
     }
    #tupoban{
       display:none;
    }
    #vipshuanfenti{
    	display:none;
     }
   #zhojimiyajuan{
   		display:none;
    }
   #yatichoci{
     display:none;
   }
   #jixuenying{
     display:none;
   }
    </style>
</head>
<body>
	<div class="openid">${openid}</div>
	<div class="lqfenxianye">${lqfenxianye}</div>
	<div  class="leixing">${leixing}</div>
    <div class="wrapper">
        <div class="header">
            <div class="heade"  onclick="fanhui()">
                <a href="javascript:;">返回</a>
            </div>
        </div>
        <!--      单科刷分题        -->
        <div class="Points-exchange"   id="shuafenti">
            	<ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>中药学专业知识一</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="zhoyaoyi()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>中药专业知识二</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="zhoyaoer()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>中药学综合知识与技能</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="zhonhe()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>药学专业知识一</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="yaoyi()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>药学专业知识二</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="yaoer()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>药学综合知识与技能</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="yaoxuzhohe()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>法规</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="fagui()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <!-- -------------------------  单科密押卷  -------------------- -->
        <div class="Points-exchange"   id="miyajuan">
            	<ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>中药学专业知识一</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="miyazhoyaoyi()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>中药许专业知识二</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="miyazhoyaoer()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>中药学综合知识与技能</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="miyazhonhe()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>药学专业知识一</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="miyayaoyi()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>药学专业知识二</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="miyayaoer()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>药学综合知识与技能</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="miyayaoxuzhohe()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>法规</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="miyafagui()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <!-- 冲刺抢分礼包 -->
          <div class="Points-exchange"   id="qianfenlibao">
            	<ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>中药全科冲刺礼包</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="qianfenlibaozhoyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>药学全科冲刺礼包</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="qianfenlibaoxiyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div> 
      <!-- 习题解析班 -->
        <div class="Points-exchange"   id="xitijiexiban">
            	<ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>中药全科习题解析班</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="xitijiexibanzhoyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>药学全科习题解析班</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="xitijiexibanxiyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div> 
      <!-- 救命抢分班 -->
      <div class="Points-exchange"   id="joumingban">
            	<ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>中药全科救命抢分班</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="joumingbanzhoyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>药学全科救命抢分班</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="joumingbanxiyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div> 
        <!-- 最难科目突破班 -->
         <div class="Points-exchange"   id="tupoban">
            	<ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>中药全科最难科目突破班</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="tupobanzhoyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>药学全科最难科目突破班</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="tupobanxiyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div> 
        <!-- vip刷分题库 -->
        <div class="Points-exchange"   id="vipshuanfenti">
            	<ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>中药全科刷分题库</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="vipshuanfentizhoyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>药学全科刷分题库</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="vipshuanfentixiyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
       <!-- 终极密押卷 -->
        <div class="Points-exchange"   id="zhojimiyajuan">
            	<ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>中药全科密押卷</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="zhojimiyajuanzhoyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>药学全科密押卷</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="zhojimiyajuanxiyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <!-- 押题冲刺班 -->
         <div class="Points-exchange"   id="yatichoci">
            	<ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>中药全科押题冲刺班</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="yatichocizhoyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>药学全科押题冲刺班</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="yatichocixiyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <!-- 16天集训营 -->
        <div class="Points-exchange"   id="jixuenying">
            	<ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>中药全科16天集训营</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="jixuenyingzhoyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul>
                <li> 
                    <div class="Integral-acquisition">
                        <div class="Integral-acquisition-p">
                             <div  id="prize"><p>药学全科16天集训营</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <div class="duihuan" onclick="jixuenyingxiyao()" >
                                <a href="javascript:;"  class="linqu">前往领取</a>
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
	$(function(){
		var  leixing = $(".leixing").text();
		if(leixing == "miyajuan"){
			$("#miyajuan").attr("style","display:block;");
		}
		if(leixing == "shuanfenti"){
			$("#shuafenti").attr("style","display:block;");
		}
		if(leixing == "qianfenlibao"){
			$("#qianfenlibao").attr("style","display:block;");
		}
		if(leixing == "xitijiexiban"){
			$("#xitijiexiban").attr("style","display:block;");
		}
		if(leixing == "joumingban"){
			$("#joumingban").attr("style","display:block;");
		}
		if(leixing == "tupoban"){
			$("#tupoban").attr("style","display:block;");
		}
		if(leixing == "vipshuanfenti"){
			$("#vipshuanfenti").attr("style","display:block;");
		}
		if(leixing == "zhojimiyajuan"){
			$("#zhojimiyajuan").attr("style","display:block;");
		}
		if(leixing == "yatichoci"){
			$("#yatichoci").attr("style","display:block;");
		}
		if(leixing == "jixuenying"){
			$("#jixuenying").attr("style","display:block;");
		}
		
	})
	
	
	
	
	//中药学专业知识一
	function  zhoyaoyi(){
		location.href="http://shop.jingyaoshi.net/details?GoodsID=365";
	}
	
	//中药学专业知识二
	function  zhoyaoer(){
		location.href="http://shop.jingyaoshi.net/details?GoodsID=366";
	}
	//中药综合
	function  zhonhe(){
		location.href="http://shop.jingyaoshi.net/details?GoodsID=367";
	}
	//药学专业知识一
	function yaoyi(){
		location.href="http://shop.jingyaoshi.net/details?GoodsID=368";
	}
 	//药学专业知识二
	function  yaoer(){
		location.href="http://shop.jingyaoshi.net/details?GoodsID=369";
 	}
	//药学综合知识与技能
	function  yaoxuzhohe(){
		location.href="http://shop.jingyaoshi.net/details?GoodsID=370";
	}
	//法规
	function  fagui(){
		location.href="http://shop.jingyaoshi.net/details?GoodsID=371";
	}
	
	
	
	//单科密押卷
	
	//中药一
	function   miyazhoyaoyi(){
		location.href="http://shop.jingyaoshi.net/details?GoodsID=358";
	}
	//中药二
	function  miyazhoyaoer(){
		location.href="http://shop.jingyaoshi.net/details?GoodsID=359";
	}
	//中药综合
	function  miyazhonhe(){
		location.href="http://shop.jingyaoshi.net/details?GoodsID=360";
	}
	//药学一
	function  miyayaoyi(){
		location.href="http://shop.jingyaoshi.net/details?GoodsID=361";
	}
   //药学二
   function   miyayaoer(){
	   location.href="http://shop.jingyaoshi.net/details?GoodsID=362";
   }
  //药学综合
  function  miyayaoxuzhohe(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=363";
  }
  //法规
  function  miyafagui(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=364";
  }
  
///////////////////////新奖品////////////////////////////////////
  //中药全科冲刺礼包
  function  qianfenlibaozhoyao(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=386";
	}
  //药学全科冲刺礼包
  function   qianfenlibaoxiyao(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=387";
    }
  
  //中药全科习题解析班
  function  xitijiexibanzhoyao(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=372";
  }
  //药学全科习题解析班
  function  xitijiexibanxiyao(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=373";
  }
  //中药全科救命抢分班
  function  joumingbanzhoyao(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=376";
  }
  //药学全科救命抢分班
  function  joumingbanxiyao(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=377";
  }
  //中药全科最难科目突破班
  function tupobanzhoyao(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=374";
  }
  //药学全科最难科目突破班
  function  tupobanxiyao(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=375";
  }
  //中药全科刷分题库
  function  vipshuanfentizhoyao(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=382";
  }
  //药学全科刷分题库
  function  vipshuanfentixiyao(){
	  location.href="http://shop.jingyaoshi.net/details?GoodsID=383";
  }
 //中药全科终极密押卷
 function  zhojimiyajuanzhoyao(){
	 location.href="http://shop.jingyaoshi.net/details?GoodsID=384";
  }
  //药学全科终极密押卷
 function  zhojimiyajuanxiyao(){
	 location.href="http://shop.jingyaoshi.net/details?GoodsID=385";
  }
  //中药全科押题冲刺班
  function  yatichocizhoyao(){
	 location.href="http://shop.jingyaoshi.net/details?GoodsID=378";
  }
  //药学全科押题冲刺班
  function  yatichocixiyao(){
	 location.href="http://shop.jingyaoshi.net/details?GoodsID=379";
  }
  //中药全科16天集训营
  function  jixuenyingzhoyao(){
	 location.href="http://shop.jingyaoshi.net/details?GoodsID=380";
  }
  //药学全科16天集训营
  function  jixuenyingxiyao(){
	 location.href="http://shop.jingyaoshi.net/details?GoodsID=381";
  }
  
  
  
  
	//页面返回
	function  fanhui(){
		var  openid = $(".openid").text();
		window.location.href="../paihanban/paihanban?openid="+openid+"";
	}
	
	</script>
	
</html>