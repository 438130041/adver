<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> 
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <title>精选题库</title>
    <script>
        function setRootFontSize() {
            var width = document.documentElement.clientWidth || document.body.clientWidth;
            fontSize = (width / 16);
            document.getElementsByTagName('html')[0].style['font-size'] = fontSize + 'px';
            }
            setRootFontSize();
            window.addEventListener('resize', function() {
            setRootFontSize();
            }, false);
    </script>
    <style>
    body{
        max-width: 1080px;
        min-width: 320px;
        margin: 0 auto;
    }
     @media only screen and (min-width:1080px)  { html {font-size: 50px !important} }
     *{
         margin: 0;
         padding: 0;
         -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
     }
     .wrapper{
         width: 100%;
         background: #f7f7f7;
         padding-top: 30px;
         
     }
     .wrap ul{
         list-style: none;
     }
     .wrap ul li{
         font-size: 0.6rem;
     }
     .middle{
        width: calc(100% - 20px);
        margin-left: 10px;
     }
     .middle-Chapter{
        display: inline-block; 
        width: 49%;
        height: 4.5rem;
        margin-bottom: 0.4rem;
        background: #ffffff;
        box-sizing: border-box;
        
        overflow: hidden;
        position: relative;
        -webkit-transform: scale(.95);
        transform: scale(.95);
        box-shadow: 0 0 5px 2px #dedddd;
        cursor: pointer;
        border-radius: 6px;
     }
     .middle-Chapter-box{
         display: flex;
         position: relative;
         top: 50%;
         left: 50%;
         transform: translate(-50% ,-50%);
         width: 5.5rem;
         height: 2rem;
     }

    .middle-Chapter-box-itme{
        width: 1.3rem;
        height: 1.3em;
        margin-top: 0.3rem;
       
        }
    .middle-Chapter-box-itme .Photo{
        width: 100%;
        height: 100%;
        
    }
    .middle-Chapter-box-itme .one{
        background: url(../resources/admin/login/img/ZJJL.png) no-repeat;
        background-size:100% 100% ;
    }
    .middle-Chapter-box-itme .two{
        background: url(../resources/admin/login/img/MRLL.png) no-repeat;
        background-size:100% 100% ;
    }
    .middle-Chapter-box-itme .three{
        background: url(../resources/admin/login/img/ZTMN.png) no-repeat;
        background-size:100% 100% ;
    }
    .middle-Chapter-box-itme .four{
        background: url(../resources/admin/login/img/KDSJ.png) no-repeat;
        background-size:100% 100% ;
    }
    
    .middle-Chapter-box-itme .five{
        background: url(../resources/admin/login/img/KDSJ.png) no-repeat;
        background-size:100% 100% ;
    }
    .middle-Chapter-box-itmes{
        -webkit-box-flex: 1;      /* OLD - iOS 6-, Safari 3.1-6 */
        -moz-box-flex: 1;         /* OLD - Firefox 19- */
        -webkit-flex: 1;          /* Chrome */
        -ms-flex: 1;              /* IE 10 */
        flex: 1;                  /* NEW, Spec - Opera 12.1, Firefox 20+ */
        margin-top: 0.1rem;
        margin-left: 0.5rem;
        }
    .middle-Chapter-box-itmes p{
        font-size: 0.75rem;
    }
    .accuracy{
        font-size: 0.5rem;
        color: #9b9b9b;
    }
    .accuracy span{
        color: #ff813d;
    }
    .redeem{
        display:none;
      }
    .gifts{
       display: none;
       }
     .nickname{
        display: none;
       }
     .openid{
     	display: none;
       }
      .headimgurl{
         display: none;
        }
      #href{
         text-decoration:none;
       }
      #chapter{
         text-decoration:none;
       }
       
      #simulation{
         text-decoration:none;
        }
      #shorthand{
         text-decoration:none;
        }
      .days{
        display: none;
       }
      .integral{
      	display: none;
       }
      .dateTime{
        display:none;
      }
      .lv1state{
      	display: none;
       }
      .lv2state{
      	display:none;
      }
      .lv3state{
      	 display:none;
       }
     .number{
     	display:none;
      }
     .chapter{
       color:#6699FF;
      }
     .collection{
      	  color:#6699FF;
       }
     .errortitle{
      color:#6699FF;
      }
    </style>
</head>
<body>
    <div class="wrapper">
       <div class="number">${number}</div><!-- 用户手机号 -->
        <div class="redeem">${redeem}</div>
        <div class="gifts">${gifts}</div>
		<div class="openid">${openid}</div><!-- 微信id -->
		<div class="headimgurl">${headimgurl}</div><!-- 微信图片地址 -->
		<div class="nickname">${nickname}</div><!-- 微信昵称 -->
		 <div  class="days">${days}</div><!-- 连续打卡天数 -->
		 <div  class="integral">${integral}</div><!-- 累计积分 -->
		 <div  class="dateTime">${dateTime}</div>
		<div  class="lv1state">${lv1state}</div><!-- 礼物领取状态 -->
	    <div  class="lv2state">${lv2state}</div><!-- 礼物领取状态 -->
	    <div  class="lv3state">${lv3state}</div><!-- 礼物领取状态 -->
        <div class="middle"> 
            <div class="middle-Chapter">
                <div class="middle-Chapter-box"  onclick="zhiyeyishi()">
                    <div class="middle-Chapter-box-itme">
                        <div class="Photo one"></div>
                    </div>
                    <!-- <a href="" id="chapter"> -->
                    <div class="middle-Chapter-box-itmes"  ">
                        <P class="chapter">执业医师</P>
                        <div class="accuracy">
                           	 正确率<span>100%</span>
                        </div>
                    </div>
                    <!-- </a> -->
                </div>
            </div>
            <!-- 执业药师 -->
            <div class="middle-Chapter">
             <div class="middle-Chapter-box">
                    <div class="middle-Chapter-box-itme">
                        <div class="Photo five"></div>
                    </div>
                    <!-- <a href="" id="shorthand"> -->
                    <div class="middle-Chapter-box-itmes" onclick="ziyeyaoshi()">
                        <P  class="collection">执业药师</P>
                        <div class="accuracy">
                            	已做<span>0/100题</span>
                        </div>
                    </div>
                    <!-- </a> -->
                </div>
            </div>
        </div>
    </div>
  <script type="text/javascript" src="../resources/admin/js/alertPopShow.js"></script>
  	   <script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
    <script type="text/javascript">
        var  number = $(".number").text();
        var  redeem = $(".redeem").text();
        var  gifts = $(".gifts").text();//
        var  nickname = $(".nickname").text();
        var  openid = $(".openid").text();
        var  headimgurl = $(".headimgurl").text();
        var  days = $(".days").text();//连续登录天数
        var  integral = $(".integral").text();//累计积分
        var  dateTime = $(".dateTime").text();//当前登录时间
        var  lv1state = $(".lv1state").text();
        var  lv2state = $(".lv2state").text();
        var  lv3state = $(".lv3state").text();
		
        
        //执业医师
        function   zhiyeyishi(){//
        	var  leixing = "zhiyeyishi";
        	window.location.href="../zhuyemian/zhuyemiancheshi?openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"&leixing="+leixing+"&number="+number+"";
        	
        }
        
        //执业药师
        function  ziyeyaoshi(){
        	var  leixing = "ziyeyaoshi";
        	window.location.href="../zhuyemian/zhuyemiancheshi?openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"&leixing="+leixing+"&number="+number+"";
        	
        }
        
        
        
    </script>
</body>
</html>