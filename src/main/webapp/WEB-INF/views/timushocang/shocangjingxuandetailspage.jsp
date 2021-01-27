<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang=" zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'> 
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520">
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> 
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script> 
    <title>我的收藏</title>
    <style>
       @media only screen and (min-width:1500px) {
            html {
            margin: 0 auto;
            width: 50%;
            font-size: 50px !important
        }
        }

        @media only screen and (min-width:1200px) and (max-width: 1500px) {
        html {
            margin: 0 auto;
            width: 60%;
            font-size: 50px !important
        }
        }
        @media only screen and (min-width:1100px) and (max-width: 1200px) {
        html {
            margin: 0 auto;
            width: 70%;
            font-size: 50px !important
        }
        }
        *{
            margin: 0;
            padding: 0;
        }
      .wrapper{
		   padding-bottom: 100px;
	   }

        .warp{
            position:relative;
            width: 100%;
            height: 20rem;
            background: 	#FFA500;
            overflow: hidden;
        }

        .fraction{
            position: absolute;
            top: -2.5rem;
            left: 50%;
            margin-left: -2rem;
            width: 4rem;
            height: 4rem;
        }
        .fraction_s{
            width: 4rem;
            height:4rem;
            border: solid 2px #faa755;
            border-radius: 50%;
            margin: 0 auto;
            background: #fff;
            overflow: hidden;
            
        }
        .fraction_s img{            
            width: 3.5rem;
            height: 3.5rem;
            }
  
        .fraction_s{
            font-size: 0.8rem;
            text-align: center;
            line-height: 3.0rem;
            color: coral;
        }
        #fraction{
            font-size: 1.3rem;
            font-weight: 600;
            color: coral;
        }
        .ranking_s{
            position: absolute;
            font-size: 0.8rem;
            top: 3rem;
            left: 50%;
            margin-left: -2.5rem;
            width: 5.5rem;
            height: 1.1rem;
            text-align: center;
            background: url(../resources/admin/login/img/pm.png) no-repeat  0 -0.3rem;
            background-size: 5rem;
            color: #fff;
        }
        .detailed_s p {
            font-size: 0.6rem;
            color:	#C0C0C0;
        }
        .sj{
            height: 2rem;
            margin-top:1rem;
        }
        .sj ul{
            display: flex;
            list-style: none;
            flex-flow: row nowrap;
            justify-content: center;
        }
        .sj ul li{
            margin: 0 .4rem;
            list-style: none;
            text-align: center;
            line-height: 2rem;
            
        }
        .sj a{
            color: white;
            font-size: 0.7rem;
            cursor: pointer;
        }
        
        .details{
            position: absolute;
            top: 5.5rem;
            left: 50%;
            margin-left: -45%;
            width: 90%;
            height: 11.5rem;
            background: white;
            border-radius: 6px;
            font-size: 0.7em;
        }
        .again{
            position: absolute;
            bottom: 0.8rem;
            left: 50%;
            margin-left: -45%;
            width: 90%;
            height: 1.5rem;
            background: #FDF5E6;
            text-align: center;
            line-height: 1.5rem;
            border-radius: 6px;
            font-size: 0.7rem;
            letter-spacing: 0.1rem;
            color:#FFA500;
            cursor: pointer;
        }
        .name{
            margin-top: 1.6rem;
            text-align: center;
        }
        .name_s{
            margin-top: 1rem;
            font-size: 0.65rem;
            color:	#C0C0C0;
        }
        .detailed_s{
        	margin-top: 0.5rem;
            width: 100%;
            height: 2rem;
            text-align: center;
        }
        .accuracy , .answer ,.time{
            display: inline-block;
            margin: 0.5rem 0.8rem;
            font-size: 0.9em;
        }
        .answer{
            padding-left: 0.52rem;
        }
        #accuracy,#answer,#time{
            font-size: 1.1rem;
            font-weight: 600;
        }
        .analysis{
            position: absolute;
            font-size: 0.7rem;
            top: 8.2rem;
            left: -50%;
            margin-left: 59%;
            display: inline-block;
            width: 80%;
            height: 1.5rem;
            text-align: center;
            line-height: 1.5rem;
            border-radius: 6px;
            background: rgb(255, 176, 30);
            letter-spacing: 0.1rem;
            color: #fff;
            cursor: pointer;
        }
        .ranking{
            position: absolute;
            top: 9.4rem;
            left: -50%;
            margin-left: 59%;
            width: 80%;
        }
        .rankinglist_phb,.rankinglist_cjd{
            width: 3.5rem;
            height: 1.3rem;
            border: 1px solid rgb(252, 153, 5);
            border-radius: 6px;
            letter-spacing: 0.1rem;
            padding-left: 1.5rem;
            line-height: 1.3rem;
            cursor: pointer;
        }
        .rankinglist_phb{
            float: left;
            background: url(../resources/admin/login/img/phb.png) no-repeat  0.5rem 0.35rem ;
            background-size: 0.65rem;
        }
        .rankinglist_cjd{
            float: right;
            background: url(../resources/admin/login/img/cjtj.png) no-repeat  0.7rem 0.45rem ;
            background-size: 0.5rem;
        }
        
        .gift{
            position: relative;
            width: 100%;
            /* height: 8rem; */
            overflow: hidden;
            background-color: #FFFFFF;
        }
        .gift_t{
            width: 100%;
            height: 1rem;
            margin: 0.6rem 0;
            font-size: 0.7rem;
            color:#000;
        }
        .reward{
            width: 90%;
            margin: 0 auto;
        }
        .gift_s{
            float: left;
            font-size: 0.7rem;
        }
        .gift_jf{
            margin-top: 0.06rem;
            float: right;
            font-size: 0.65rem;
            color:#FF8C00;
        }
        .grade{
            width: 100%;
            
        }
        .grade_st{
            position: relative;
            width: 70%;
        }
     
        .grades{
            font-size: 0.6rem;
        }
        .grades_lv{
            padding-bottom: 0.8rem;
            font-size: 0.6rem;
        }
        .grades_lv p{
            display: inline-block;
        }
        .days{
            position: absolute;
            right: 0;
        }
        #day{
            font-size: 0.9rem;
            font-weight: 600;
        }

        #progress{
        width:100%;
        height:0.2rem;
        margin-top: 0.2rem;
        border-radius: 0.1rem;
        background-color: rgb(231, 253, 30);
        }
        #progressbar{
            width:100%;
            height:0.2rem;
            margin-top: 0.2rem;
            border-radius: 0.1rem;
            background-color: rgb(218, 218, 218);

		}
     
        
/*在进度条元素上调用动画*/
/* #fill{
    animation: move 2s;
    text-align: center;
    background-color: #6caf00;
}
@keyframes move {
    0%{
        width:0;
    }
    100%{
        width:100%;
    }
    } */
	.Knowledge_Name{
		display:none;
	 }
	 .queanswer{
	 	display:none;
	 }
	 .answers{
	 	display:none;
	 }
	  .hh{
	 	    /* border: 1px solid #FF0000; */
            /* width: 1rem;*/
            height: 1px;
            border-radius: 1rem;
            background: red; 
            /* display: block; */ 
            /* margin: 0.1rem auto; */
	 }  
	 /* #ZE{
	 	border:1px solid #FF0000;
	 	width:35px;
	 	height:2px;
	 	background-color:#FF0000;
	 	position:absolute;
        left:115px;
        top:40px;
        border-radius:0.2rem;
        /* display:none; */
	 } */
	  /* #ZH{
	 	border:1px solid #FF0000;
	 	width:35px;
	 	height:2px;
	 	background-color:#FF0000;
	 	position:absolute;
        left:187px;
        top:40px;
        border-radius:0.2rem;
       /*  display:none; */
	 } */
	 /*  #FG{
	 	border:1px solid #FF0000;
	 	width:35px;
	 	height:2px;
	 	background-color:#FF0000;
	 	position:absolute;
        left:267px;
        top:40px;
        border-radius:0.2rem;
       /*  display:none; */
	 } */
	 #promptbox{
	 	background-color:#FFFFFF;
	 	font-size: 0.5rem;
	 	border-radius: 25px;
		border: 2px solid 	#FFFFFF;
		padding: 20px;
		width: 200px;
		height: 100px;
		position:fixed;
	 }
	   /* #ZY{
            border: 1px solid #FF0000;
            width: 1rem;
            height: 1px;
            border-radius: 1rem;
            background: red;
            display: block; 
            margin: 0.1rem auto;
        } */
	 #segmentation{
	 	border:0.5px solid #C0C0C0;
	 	width:0.5px;
	 	height:150px;
	 }
	 a, ul ,li,div {
            -webkit-tap-highlight-color:rgba(0,0,0,0); 
        }

     
         .openid{
         	display: none;
         }
         .headimgurl{
         	display: none;
         }
         .int_second{
         	display: none;
         }
         .nickname{
         	display: none;
         }
         .sj{
            display: flex;
            
        }

        .sj .ZYd,.sj .ZRd{
            width: 30%;
            text-align: center;
            margin: 0 auto;
            
            
        }
        .sj .FGd,.sj .ZHd{
            width: 30%;
            text-align: center;        
            }
        
          .active{
            border: 1px solid #FF3300;
            width: 1.5rem;
            height: 0.1rem;
            border-radius: 1rem;
            background:#FF3300;
            display: none;
            margin: 0.1rem auto;
        }
        .names{
        	 display: none;
         }
         
        .grade{
            width: 100%;
            
        }
        .grade_st{
            position: relative;
            width: 100%;
        }
        .grades_lq{
            position: absolute;
            right: 0;
            flex: 1;
            
        }
        .grades{
            font-size: 0.6rem;
        }
        .grades-box{
            display: flex;
        }
        .grades_lv{
            padding-bottom: 0.8rem;
            font-size: 0.6rem;
            width: 70%;
        }
        .grades_lv p{
            display: inline-block;
        }
        
        
        
        
        .days{
            position: absolute;
            right: 4.5rem;
        }
        #day{
            font-size: 0.9rem;
            font-weight: 600;
            color: #FFA500;
        }
        .lw{
            font-size: 0.5rem;
            border: 0px solid;
            padding: 0.1rem 0.5rem;
            margin-top:0.2rem;
            border-radius: 0.5rem;
            cursor: pointer;
            padding-left: 0.8rem;
            background: #FFA500;
            color:#FFFFFF;
        }
        .lw::before{
            content: "";
            position: absolute;
            top: 0.35rem;
            left: 0.2rem;
            width: 0.5rem;
            height: 0.5rem;
            background: url(../resources/admin/login/img/lw.png) center;
            background-size: 0.5rem;
        }
        .lv{
            font-size: 0.6rem;
            font-weight: 600;
        } 
        #progress{
        width:100%;
        height:0.2rem;
        margin-top: 0.2rem;
        border-radius: 0.1rem;
        background-color: rgb(231, 253, 30);
        }
        #progressbar{
            width:100%;
            height:0.2rem;
            margin-top: 0.2rem;
            border-radius: 0.1rem;
            background-color: rgb(218, 218, 218);
        }
        #fill{
            height: 0.2rem;
            border-radius: 0.5rem;
        }
        
        .dayss{
        		display:none;
          }
        .dateTime{
        	 display:none;
         }
       .integral{
           display:none;
          }
        #jifenimg{
        	width:15px;
        	height:15px;
        	padding-top:3px;
         }
        .dateTime{
          display:none;		
         }
       .lv1state{
        	display: none;
          }
         .lv2state{
          display: none;
         }
        .lv3state{
          display: none;
         } 
        /* 底部 */
		
		.common-footer{
		  position: fixed;
		  left: 0;
		  display: flex;
		  align-items: center;
		  height: 50px;
		  width: 100%;
		  bottom: 0;
		  z-index: 10;
		  background-color: #fff;
		  box-sizing: border-box;
		  justify-content: center;
		  border-top: 1px solid #eee;
		  color: rgb(153, 153, 153);
		}
		.common-footer img{
		  padding-bottom: 3px;
		  width: 20px;
		  height: 20px;
		}
		.common-footer-item{
		  width: 33%;
		  text-align: center;
		  display: inline-block;
		  font-size: 11px;
		}
		/* 底部 */
      #createFileMModal{
		display:none;
	  }
	#tixin{
		text-align:center;	
	  }
	#createFileTitle{
	    font-size: 30px;
	    text-align:center;	
	    color:#FF8C00;
	   }
	 #fractionPe{
	   margin-right:13px;
	  } 
	/*积分*/
		.gift_t{
			display: flex;
            width: 100%;
            margin: 0.6rem 0;
            font-size: 0.7rem;
            color:#000;
        }
		.gift_s{
			flex: 1;
            float: left;
            font-size: 0.7rem;
        }
		.Pointsexchange{
            font-size: 0.5rem;
            border: 0px solid;
            padding: 0 0.41rem;
            margin-top:0.2rem;
            border-radius: 0.5rem;
            cursor: pointer;
            background: #FFA500;
            color:#FFFFFF;
			height: 0.9rem;
			line-height: 0.9rem;
        }
        .gift_jf{
            margin-top: 0.2rem;
            float: right;
			margin-right: 1.5rem;
            font-size: 0.65rem;
            color:#FF8C00;
        }
		/*积分*/
		 #name_x{
	   font-size: 20px;
	 }
	 .knowledge_Id{
	 	display: none;
	 }
	 .kemuZYHXY{
	   display:none;
	 }
	  #correctanswer{
           font-size:15px;
           font-weight:550;
           margin-left:35px; 
           padding-top:7px;
           padding-bottom:7px;
      }
    .divider{
           border:0.5px solid #C0C0C0;
           width:90%;
           position:absolute;
           left:16px;
         }
    </style>
</head>
<body>
<div class="wrapper">
    <div class="warp">
	    
	    <div class="knowledge_Id">${knowledge_Id}</div><!-- 科目id（根据科目id去查询出科目下的土木） -->
	    <div class="kemuZYHXY">${kemuZYHXY}</div>
    	<div class="nickname">${nickname}</div>
		<div class="openid">${openid}</div>
		<div class="headimgurl">${headimgurl}</div>
		<div class="int_second">${int_second}</div>
		<div class="names">中药</div>
		<div  class="dayss">${days}</div>
		<div  class="integral">${integral}</div><!-- 累计积分 -->
		 <div class="Knowledge_Name">${Knowledge_Name}</div>
        <div class="answers">${answers}</div>
        <div class="queanswer">${queanswer}</div>
        <div  class="dateTime">${dateTime}</div>
        <div  class="lv1state">${lv1state}</div><!-- 礼物领取状态 -->
	    <div  class="lv2state">${lv2state}</div><!-- 礼物领取状态 -->
	    <div  class="lv3state">${lv3state}</div><!-- 礼物领取状态 -->
	    
	    
	    <div class="sj"  id="subjectsid">
            <div class="FGd"><a class="ZY"  >中药一</a><div class="active"  id="active1"></div></div>
            <div class="ZYd"><a class="ZE" >中药二</a><div class="active" id="active2"></div></div>
            <div class="ZRd"><a class="ZH" >中药综合</a><div class="active"  id="active3"></div></div>
            <div class="ZHd"><a class="FG" >药事法规</a><div class="active" id="active4"></div></div>
        </div>
        
        <div class="details">
             <div class="fraction">
                 <div class="fraction_s">
                 	<div class="fraction_t">
                 		<img alt="" src="${headimgurl}"><!-- 用户头像 -->
                 	</div><!-- 图片 -->
                 </div>						                 <!-- 做题分数 -->
                 <div class="ranking_s"><SPan id="fractionPe">${percentage}分</SPan></div>
             </div>
             <div class="name">
                 <div class="name_x" id="name_x">${nickname}</div><!-- 用户微信名 -->
                 <div class="name_s"><span id="sr-only"></span></div><!-- 题目做完后的提示性语句 --> 
             </div>
             <div class="detailed_s">  
                 <div class="accuracy"> <span id="accuracy">${percentage}</span>%<br><p>正确率</p></br></div>
                 <div class="answer"> <span id="answer">${correctnumber}</span>/<span id="total">${datalength}</span><br><p>正确题</p></br></div>
                 <div class="time"> <span id="time">${int_second}</span><br><p>答题时间</p></br></div>
            </div>
            <div class="analysis"  onclick="jiexi()">查看答案解析</div><!-- onclick="jiexi()" -->
            <!-- <div class="ranking">
                 <div class="rankinglist_phb" onclick="ranking()"  id="ranking"> 排行榜</div>
                 <div class="rankinglist_cjd" > 成绩单</div>
            </div> -->
        </div>
        <div  class="again" id="again" onclick="again()">
        		再一次
        </div>
    </div>
     <!-- 连续打卡搜集积分功能 -->
     <div class="gift">
        <div class="reward">
            <div class="gift_t">
                <div class="gift_s">已连续打卡<span id="day">${days}</span>天</div>
                <div class="gift_jf"><img alt="" src="../resources/admin/login/img/jifen.png"  id="jifenimg">累计积分<span id="gift_jf">${integral}</span></div> 
                <div class="Pointsexchange"  id="" onclick="exchange()"> 积分兑换</div>  
            </div>
            <div class="grade">
                <div class="grades">
                    <div class="grade_st">
                        <div class="grades-box">
                            <div class="grades_lv">
                                    <p class="lv">LV1：</p>连续3天完成每日一练 
                                    <p class="days"><span id="days" class="days3">${days}</span>/3</p>
                                <div id="progress">
                                    <div id="progressbar">
                                        <div id="fill" style='width: 0%;background-color:#FFA500' class="day3"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="grades_lq">
                                <div class="lw"  id="lw3" onclick="lw3lick()">领礼物</div>
                            </div>   
                        </div>  
                        <div class="grades-box">
                            <div class="grades_lv">
                                    <p class="lv">LV2：</p>连续7天完成每日一练 
                                    <p class="days"><span id="days" class="days7">${days}</span>/7</p>
                                <div id="progress">
                                    <div id="progressbar">
                                        <div id="fill" style='width:0%;background-color:#FFA500' class="day7"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="grades_lq">
                                <div class="lw" id="lw7"  onclick="lw7lick()">领礼物</div>
                            </div>   
                        </div>  
                        <div class="grades-box">
                            <div class="grades_lv">
                                    <p class="lv">LV3：</p>连续15天完成每日一练 
                                    <p class="days"><span id="days" class="days15">${days}</span>/15</p>
                                <div id="progress">
                                    <div id="progressbar">
                                        <div id="fill" style='width: 0%;background-color:#FFA500' class="day15"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="grades_lq">
                                <div class="lw"  id="lw15" onclick="lw15lick()">领礼物</div>
                            </div>   
                        </div>  
                </div>
            </div>
        </div>
    </div>
     </div>
     
     <!-- 底部 -->
     <div class="common-footer">
		<div class="common-footer-item" onclick="Homepage()">
			<img src="../resources/admin/login/img/kufu2.png" alt="">
			<div>客服</div>
		</div>
		<div class="common-footer-item" onclick="integral()">
			<img src="../resources/admin/login/img/JFSC.png" alt="">
			<div>积分商城</div>
		</div>
		<div class="common-footer-item" onclick="exchangecode()">
			<img src="../resources/admin/login/img/duihuanma.png" alt="">
			<div>兑换码</div>
		</div>
	</div>  
	<!-- 底部 -->
     
   </div>  
   <!-- 兑换码输入弹框 -->
 <div class="modal fade" id="createFileMModal" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title" id="createFileTitle">兑换码</h1>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="fileName" class="col-form-label" id="tixin">请输入您的晶药师兑换码</label>
            <input type="text" autofocus class="form-control" id="fileName">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="createFileSureBut">确定</button>
      </div>
    </div>
  </div>
</div>
   <!-- 输入弹框 -->
<!-- js实现 -->   
<script type="text/javascript" src="../resources/admin/js/alertPopShow.js"></script>
<!-- <script type="text/javascript" src="../resources/admin/js/alertPopShowprac.js"></script> -->
<script  type="text/javascript">
     	
  	 	$(function(){
  	 		//缓存当前时间
  	 		var storagedateTime = window.localStorage;//window.localStorage，H5的页面缓存
  	 		var storagexuanxian = window.localStorage;//window.localStorage，H5的页面缓存
  	 		console.log("中药题用户选择的答案："+storagexuanxian["timushocangqueanswer"+knowledge_Id]);
  	 		console.log("中药题正确的答案："+storagexuanxian["timushocanganswers"+knowledge_Id]);
  	 		console.log("时间："+storagedateTime["timushocangstoragedateTime"]); 
  	 		var dateTime = $(".dateTime").text();//当前登录时间
  	 		/*  alert("缓存的时间："+storagedateTime["storagedateTime"]);  */
  	 		 if(storagedateTime["timushocangstoragedateTime"] != dateTime){ //如果缓存里的时间与当前做题时间不一样，说明不是同一天。第一次进入的用户时间缓存是空的，所有判断也会成立
  	 			 /*  alert("不相等进入"); */
  	 			 /* window.localStorage.clear();  *///清空所有缓存（进入此页面说明已经交卷了，可以删除之前的所有做题数据了）
  	 			locationcolor.removeItem(timushocangque1int_second1);//将之前的做题记录设置为空
  	 			locationcolor.removeItem(timushocangque2int_second2);
  	 			locationcolor.removeItem(timushocangque3int_second3);
  	 			locationcolor.removeItem(timushocangque4int_second4);
  	 		//删除正确率获积分记录
  	 			locationcolor.removeItem(cuotiAddintegral1);
  	 		 	locationcolor.removeItem(cuotiAddintegral2);
  	 		 	locationcolor.removeItem(cuotiAddintegral3);
  	 			locationcolor.removeItem(cuotiAddintegral4);
  	 			
  	 			
  	 			storagedateTime["timushocangstoragedateTime"] =  dateTime; //将当前时间保存进缓存
  	 		  } 
  	 		
  	 		//dateTime
  	     	//做完题目进入页面 
  		     
  	     	 var  knowledge_Id = $(".knowledge_Id").text();//该章节题目id
  	     	 var  Knowledge_Name  =  $(".Knowledge_Name").text();//题型名
  		      console.log("现在的题型名："+Knowledge_Name);
  		     var  fractionPe = $("#fractionPe").text();//分数
  		     var  percentage = $("#accuracy").text();//正确率
  		     var  correctnumber = $("#answer").text();//正确题数
  		     var  int_second = $("#time").text();//做题用时
  		     var  queanswer  = storagexuanxian["timushocangqueanswer"+knowledge_Id];//用户选择的题目答案
  		     var  answers = storagexuanxian["timushocanganswers"+knowledge_Id];//题目正确答案 
  		     var  dayss = $(".dayss").text();//登录天数
  		     var  integral = $(".integral").text();//累计积分
  		     var  lv1state = $(".lv1state").text();//礼物领取状态
  		     var  lv2state = $(".lv2state").text();//礼物领取状态
  		     var  lv3state = $(".lv3state").text();//礼物领取状态
  		     var  openid = $(".openid").text();//微信id
  		   /*  alert("天数dayss："+dayss); */
  		    $("#time").text(int_second);//将做题时间数据填入
  		    var days3 = 33.34*dayss;
 	 		var days7 = 14.29*dayss;
 	 		var days15 = 6.67*dayss;
 	 		if(dayss <= 3 ){
	  	 		$(".day3").css("width",days3 + "%");//通过字符串拼接的方式给进度条宽度赋值
 	 		}else {
 	 			$(".day3").css("width",100 + "%");
 	 			$(".days3").text("3");
			}
 	 		if(dayss <= 7){
	  	 	    $(".day7").css("width",days7 + "%"); //通过字符串拼接的方式给进度条宽度赋值
 	 		}else {
 	 			$(".day7").css("width",100 + "%");
 	 			$(".days7").text("7");
			}
 	 		if(dayss <= 15){
	  	 	    $(".day15").css("width",days15 + "%"); //通过字符串拼接的方式给进度条宽度赋值	
 	 		}else {
 	 			$(".day15").css("width",100 + "%");
 	 			$(".days15").text("15");
			}
 	 		
 	 		if(lv1state == "可领取"){
 	 			$("#lw3").css("background-color","#DC143C");
  		    	$("#lw3").text("可领取");
 	 		}
 	 		if(lv2state == "可领取"){
 	 			$("#lw7").css("background-color","#DC143C");
   	 	    	$("#lw7").text("可领取");
 	 		}
 	 		if(lv3state == "可领取"){
 	 			$("#lw15").css("background-color","#DC143C");
	 	    	$("#lw15").text("可领取");
 	 		} 
 	 		
 	 		
 	 		//礼物状态
 	 	    if(lv1state == "已领取"){
 	 			$("#lw3").css("background-color","#C0C0C0");
  		    	$("#lw3").text(lv1state);//设置为已领取
			}
 	 		
 	 		if(lv2state == "已领取"){
 	 			$("#lw7").css("background-color","#C0C0C0");
 		    	$("#lw7").text("已领取");//设置为已领取
			}
 	 		
 	 		if(lv3state == "已领取"){
 	 			$("#lw15").css("background-color","#C0C0C0");
		    	$("#lw15").text("已领取");//设置为已领取
			}
 	 		
  		   obtain(Knowledge_Name,fractionPe,percentage,correctnumber,int_second,queanswer,answers,dayss,integral,openid);
  	 	})
  	 
	     
	     
	     
	     function obtain(Knowledge_Name,fractionPe,percentage,correctnumber,int_second,queanswer,answers,dayss,integral,openid){
  	 		var storage = window.localStorage;
  	 		if(Knowledge_Name == "中药学专业知识一" ){
	        	 /*  alert("将数据进行缓存："+Knowledge_Name); */
	        	/*  alert("将数据进行缓存："+fractionPe);   */
	        	 var storage1 = window.localStorage;//window.localStorage方法缓存数据是永久的，如果不手动删除就永久存在
	    	     storage1["timushocangque1Knowledge_Name1"] = Knowledge_Name;
	    	     storage1["timushocangque1fractionPe1"] = fractionPe;
	    	     storage1["timushocangque1percentage1"] = percentage;
	    	     storage1["timushocangque1correctnumber1"] = correctnumber;
	    	     storage1["timushocangque1int_second1"] = int_second;
	    	     storage1["timushocangque1queanswer1"] = queanswer;
	    	     storage1["timushocangque1answers1"] = answers;
	    	     storage1["timushocangque1andays1"] = dayss;
	    	     storage1["timushocangque1integral1"] = integral;
	    	     $("#active1").css("display","block");
	    	       if(percentage <= 40){
	    	    	   $("#sr-only").text("本次练习没有及格,需要努力了哦!");
	    	       }
	    	       if(percentage == 60){
	    	    	   $("#sr-only").text("本次练习及格啦,继续加油吧!");
	    	       }
	    	       if(percentage == 80){
	    	    	   $("#sr-only").text("本次练习成绩优异,请继续保持哦!");
	    	       }
	    	       if(percentage >= 50){
						if(storage["timushocangAddintegral1"] == null || storage["timushocangAddintegral1"] == ""){
							$.ajax({
								url:'../mall/Addintegral',
								dataType:'json',
								type:'post',
								data:{integral:integral,openid:openid},
								success:function(data){
									if(data.type == 'success'){
										$(".integral").text(data.integral);
										//提示
										popTipShow.confirm('提示','您的答题正确率大于50%，恭喜获得5积分!',['确定'],
					    						function(e){
					    						  //callback 处理按钮事件
					    						   var button = $(e.target).attr('class');
					    						  if(button == 'ok'){
					    							//按下确定按钮执行的操作
					    							//todo ....				
					    							 this.hide();
					    							setTimeout(function() {
					    								
					    							}, 0);
					    		 			  		}
					    						}
					    					); 
									}else{
										alert("页面出错请联系管理员！");
									}
								}
							});
	    	    	     }
						var  Addintegral1 =  "timushocangAddintegral1";
		    	    	storage["timushocangAddintegral1"] = Addintegral1;
	    	       }
	    	       if(percentage == 100){
	    	    	   $("#sr-only").text("本次练习获得了满分,一定要坚持啊!");
	    	       }
	    	       
	    	       
	    	       
	    	     }
	    	 
	         	
	         
	         if(Knowledge_Name == "中药学专业知识二"){
	        	/*  alert("将数据进行缓存："+Knowledge_Name); */
	        	 var storage2 = window.localStorage; 
	    	     storage2["timushocangque2Knowledge_Name2"] = Knowledge_Name;
	    	     storage2["timushocangque2fractionPe2"] = fractionPe;
	    	     storage2["timushocangque2percentage2"] = percentage;
	    	     storage2["timushocangque2correctnumber2"] = correctnumber;
	    	     storage2["timushocangque2int_second2"] = int_second;
	    	     storage2["timushocangque2queanswer2"] = queanswer;
	    	     storage2["timushocangque2answers2"] = answers;
	    	     storage2["timushocangque2andays2"] = dayss;
	    	     storage2["timushocangque2integral2"] = integral;
	    	     $("#active2").css("display","block");
	    	     if(percentage <= 40){
	    	    	   $("#sr-only").text("本次练习没有及格,需要努力了哦!");
	    	       }
	    	       if(percentage == 60){
	    	    	   $("#sr-only").text("本次练习及格啦,继续加油吧!");
	    	       }
	    	       if(percentage == 80){
	    	    	   $("#sr-only").text("本次练习成绩优异,请继续保持哦!");
	    	       }
	    	       if(percentage >= 50){
	    	    	   if(storage["timushocangAddintegral2"] == null || storage["timushocangAddintegral2"] == ""){
							$.ajax({
								url:'../mall/Addintegral',
								dataType:'json',
								type:'post',
								data:{integral:integral,openid:openid},
								success:function(data){
									if(data.type == 'success'){
										$(".integral").text(data.integral);
										//提示
										popTipShow.confirm('提示','您的答题正确率大于50%，恭喜获得5积分!',['确定'],
					    						function(e){ 
					    						  //callback 处理按钮事件
					    						   var button = $(e.target).attr('class');
					    						  if(button == 'ok'){ 
					    							//按下确定按钮执行的操作
					    							//todo ....				
					    							 this.hide();
					    							setTimeout(function() { 
					    								
					    							}, 0);
					    		 			  		}
					    						}
					    					); 
									}else{
										alert("页面出错请联系管理员！");
									}
								}
							});
	    	    	     }
	    	    	   var  Addintegral2 =  "timushocangAddintegral2";
		    	       storage["timushocangAddintegral2"] = Addintegral2;
		    	       
	    	       }
	    	       
	    	       if(percentage == 100){
	    	    	   $("#sr-only").text("本次练习获得了满分,一定要坚持啊!");
	    	       }
	    	       
	    	     }
	         
	         if(Knowledge_Name == "中药学综合知识与技能" ){
	        	 var storage3 = window.localStorage; 
	    	     storage3["timushocangque3Knowledge_Name3"] = Knowledge_Name;
	    	     storage3["timushocangque3fractionPe3"] = fractionPe;
	    	     storage3["timushocangque3percentage3"] = percentage;
	    	     storage3["timushocangque3correctnumber3"] = correctnumber;
	    	     storage3["timushocangque3int_second3"] = int_second;
	    	     storage3["timushocangque3queanswer3"] = queanswer;
	    	     storage3["timushocangque3answers3"] = answers;
	    	     storage3["timushocangque3andays3"] = dayss;
	    	     storage3["timushocangque3integral3"] = integral;
	    	     $("#active3").css("display","block");
	    	     if(percentage <= 40){
	    	    	   $("#sr-only").text("本次练习没有及格,需要努力了哦!");
	    	       }
	    	       if(percentage == 60){
	    	    	   $("#sr-only").text("本次练习及格啦,继续加油吧!");
	    	       }
	    	       if(percentage == 80){
	    	    	   $("#sr-only").text("本次练习成绩优异,请继续保持哦!");
	    	       }
	    	       if(percentage >= 50){
	    	    	   if(storage["timushocangAddintegral3"] == null || storage["timushocangAddintegral3"] == ""){
							$.ajax({
								url:'../mall/Addintegral',
								dataType:'json',
								type:'post',
								data:{integral:integral,openid:openid},
								success:function(data){
									if(data.type == 'success'){
										$(".integral").text(data.integral);
										//提示
										popTipShow.confirm('提示','您的答题正确率大于50%，恭喜获得5积分!',['确定'],
					    						function(e){ 
					    						  //callback 处理按钮事件
					    						   var button = $(e.target).attr('class');
					    						  if(button == 'ok'){ 
					    							//按下确定按钮执行的操作
					    							//todo ....				
					    							 this.hide();
					    							setTimeout(function() { 
					    								
					    							}, 0);
					    		 			  		}
					    						}
					    					); 
									}else{
										alert("页面出错请联系管理员！");
									}
								}
							});
							
	    	    	     }
	    	    	   var  Addintegral3 =  "timushocangAddintegral3";
	    	    	   storage3["timushocangAddintegral3"] = Addintegral3;
	    	    	 
	    	       }
	    	       
	    	       if(percentage == 100){
	    	    	   $("#sr-only").text("本次练习获得了满分,一定要坚持啊!");
	    	       }
	    	       
	    	     }
	    	if(Knowledge_Name == "药事管理与法规" ){
	    	      var storage4 = window.localStorage;
	        	  storage4["timushocangque4Knowledge_Name4"] = Knowledge_Name;
	        	  storage4["timushocangque4fractionPe4"] = fractionPe;
	        	  storage4["timushocangque4percentage4"] = percentage;
	        	  storage4["timushocangque4correctnumber4"] = correctnumber;
	        	  storage4["timushocangque4int_second4"] = int_second;
	        	  storage4["timushocangque4queanswer4"] = queanswer;
	        	  storage4["timushocangque4answers4"] = answers;
	        	  storage4["timushocangque4andays4"] = dayss;
	        	  storage4["timushocangque4integral4"] = integral;
	        	  $("#active4").css("display","block");
	        	  if(percentage <= 40){
	    	    	   $("#sr-only").text("本次练习没有及格,需要努力了哦!");
	    	       }
	    	       if(percentage == 60){
	    	    	   $("#sr-only").text("本次练习及格啦,继续加油吧!");
	    	       }
	    	       if(percentage == 80){
	    	    	   $("#sr-only").text("本次练习成绩优异,请继续保持哦!");
	    	       }
	    	       if(percentage >=  50){
	    	    	   if(storage["timushocangAddintegral4"] == null || storage["timushocangAddintegral4"] == ""){
							$.ajax({
								url:'../mall/Addintegral',
								dataType:'json',
								type:'post',
								data:{integral:integral,openid:openid},
								success:function(data){
									if(data.type == 'success'){
										$(".integral").text(data.integral);
										//提示
										popTipShow.confirm('提示','您的答题正确率大于50%，恭喜获得5积分!',['确定'],
					    						function(e){ 
					    						  //callback 处理按钮事件
					    						   var button = $(e.target).attr('class');
					    						  if(button == 'ok'){ 
					    							//按下确定按钮执行的操作
					    							//todo ....				
					    							 this.hide();
					    							setTimeout(function() { 
					    								
					    							}, 0);
					    		 			  		}
					    						}
					    					); 
									}else{
										alert("页面出错请联系管理员！");
									}
								}
							});
							
	    	    	     }
	    	    	   var  Addintegral4 =  "timushocangAddintegral4";
	    	    	   storage["timushocangAddintegral4"] = Addintegral4;
	    	    	   
	    	       }
	    	       
	    	       if(percentage ==  100){
	    	    	   $("#sr-only").text("本次练习获得了满分,一定要坚持啊!");
	    	       }
	    	       
	    		  }
	     }
	     
    	 
	 
	 
     
     
    function jiexis(Knowledge_Names){
    	/* alert("进入解析函数");
    	alert("点击的题型："+Knowledge_Name); */
    	 if("中药学专业知识一" == Knowledge_Names){
	    	/* alert("已经进入中药学专业知识一"); */
		     //设置localStorage用于页面的本地储存(将数据存入storage中去)
		     /*  alert("进入中药学专业知识一"); */
		     var storage1 = window.localStorage; 
		     if(!storage1["timushocangque1int_second1"] ||  storage1["timushocangque1int_second1"] == 0){
		    	 /* alert("题型名："+storage1["fractionPe1"]);  */
		    	 /* alert("进入判断"); */
					popTipShow.confirm('提示','今日没有答题记录哦',['去答题','不想做'],
						function(e){ 
						  //callback 处理按钮事件
						   var button = $(e.target).attr('class');
						  if(button == 'ok'){ 
							//按下确定按钮执行的操作
							//todo ....				
							 this.hide();
							setTimeout(function() { 
								/*  webToast("操作成功","top", 2000);  */
								 var  subjectsid = "ZY";
								 
								 var   openid = $(".openid").text()
								 var   headimgurl = $(".headimgurl").text()
								 var   nickname = $(".nickname").text()
								 var  days = $(".dayss").text();
								 var dateTime = $(".dateTime").text();
								 var integral = $(".integral").text();
								 var  lv1state = $(".lv1state").text();//礼物领取状态
					  		     var  lv2state = $(".lv2state").text();//礼物领取状态
					  		     var  lv3state = $(".lv3state").text();//礼物领取状态
					  		      var ZYY = "ZYY";
					  			  var  kemuZYHXY = "中药";
					  		     window.location.href="../timushocangzhangjie/timushocangzhangjie?kemu="+ZYY+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""; 
								if($(".Knowledge_Name").text() == "中药学专业知识一"){
								 var  Knowledge_Name  =  $(".Knowledge_Name").text();//题型名
								 var  fractionPe = $("#fractionPe").text();//分数
							     var  percentage = $("#accuracy").text();//正确率
							     var  correctnumber = $("#answer").text();//正确题数
							     var  int_second = $("#time").text();//做题用时
							     var  queanswer  = $(".queanswer").text();//用户选择的题目答案
							     var  answers = $(".answers").text();//题目正确答案
							     var  days = $(".dayss").text();
							     var  integral = $(".integral").text();
							     /* var dateTime = $(".dateTime").text(); */
							     storage1["timushocangque1Knowledge_Name1"] = Knowledge_Name;
							     storage1["timushocangque1fractionPe1"] = fractionPe;
							     storage1["timushocangque1percentage1"] = percentage;
							     storage1["timushocangque1correctnumber1"] = correctnumber;
							     storage1["timushocangque1int_second1"] = int_second;
							     storage1["timushocangque1queanswer1"] = queanswer;
							     storage1["timushocangque1answers1"] = answers;
							     storage1["timushocangque1andays1"] = days;
							     storage1["timushocangque1integral1"] = integral;
							   /*   storagedateTime["storagedateTime"] =  dateTime; *///将当前时间保存进缓存
							     $("#active1").css("display","block");
							     $("#active2").css("display","none");
							     $("#active3").css("display","none");
							     $("#active4").css("display","none");
							       if(percentage <= 40){
					    	    	   $("#sr-only").text("本次练习没有及格,需要努力了哦!");
					    	       }
					    	       if(percentage == 60){
					    	    	   $("#sr-only").text("本次练习及格啦,继续加油吧!");
					    	       }
					    	       if(percentage == 80){
					    	    	   $("#sr-only").text("本次练习成绩优异,请继续保持哦!");
					    	       }
					    	       if(percentage == 100){
					    	    	   $("#sr-only").text("本次练习获得了满分,一定要坚持啊!");
					    	       }
								}
							}, 0);
		 			  }
						     if(button == 'cancel') {
							//按下取消按钮执行的操作
							//todo ....
						    this.hide();
							setTimeout(function() { 
							 /* webToast("","bottom", 0);  */
								
							}, 0); 
						  }
						}
					); 
		     }
		     if(storage1["timushocangque1int_second1"] &&  storage1["timushocangque1int_second1"] != 0){
		    		var storagedateTime = window.localStorage;
		    	 /* alert("进入赋值："+storage1["que1Knowledge_Name1"]); */
		    	 var getKnowledge_Name = storage1["timushocangque1Knowledge_Name1"];
		    	 var getfractionPe = storage1["timushocangque1fractionPe1"];
		    	 var getpercentage = storage1["timushocangque1percentage1"];
		    	 var getcorrectnumber = storage1["timushocangque1correctnumber1"];
		    	 var getint_second = storage1["timushocangque1int_second1"];
		    	 var getqueanswer = storage1["timushocangque1queanswer1"];
		    	 var getanswers = storage1["timushocangque1answers1"];
		    	 var getdays = storage1["timushocangque1andays1"];
		    	 var getintegral  = storage1["timushocangque1integral1"];
		    	 var getdateTime = storagedateTime["timushocangstoragedateTime"]; 
		    	 $("#active1").css("display","block");
			     $("#active2").css("display","none");
			     $("#active3").css("display","none");
			     $("#active4").css("display","none");
		    	 /* alert("填数据"); */ 
		    	 $("#fractionPe").text(getfractionPe);//分数
		    	 $("#accuracy").text(getpercentage);//正确率
		    	 $("#answer").text(getcorrectnumber);//正确题数
		    	 $("#time").text(getint_second);//做题用时
		    	 $("#day").text(getdays);//连续登录天数
		    	 $("#gift_jf").text(getintegral);//累计分数
		    	 /* alert("显示");  */
		    	 $(".answers").text(getanswers);//题目正确答案
		    	 $(".queanswer").text(getqueanswer);//用户选择的正确答案
		    	$(".dateTime").text(getdateTime); //当前登录时间
		    	 //改变题目名
		    	 Knowledge_Name = getKnowledge_Name;//题型名
		    	 fractionPe = getfractionPe;// 
		    	 percentage = getpercentage;//正确率
			     correctnumber = getcorrectnumber;//正确题数
			     int_second = getint_second;//做题用时
			     queanswer  = getqueanswer;//用户选择的题目答案
			     answers = getanswers;//题目正确答案 
			     dayss = getdays;
			     getintegrals = getintegral;
			     /* dateTimes = dateTime; */
		      }
     }
     
     if("中药学专业知识二" == Knowledge_Names){
	     //设置localStorage用于页面的本地储存(将数据存入storage中去)
	     /*  alert("已经进入中药学专业知识二"); */
	     /* alert("传入的值："+Knowledge_Names);  */
	     var storage2 = window.localStorage;
	     if(!storage2["timushocangque2int_second2"] || storage2["timushocangque2int_second2"] == 0 ){
					popTipShow.confirm('提示','今日没有答题记录哦',['去答题','不想做'],
						function(e){ 
						  //callback 处理按钮事件
						  var button = $(e.target).attr('class');
						  if(button == 'ok'){ 
							//按下确定按钮执行的操作
							//todo ....				
							 this.hide();
							setTimeout(function() { 
								/*  webToast("操作成功","top", 2000);  */
								 var  subjectsid = "ZE";
								 
								 var   openid = $(".openid").text()
								 var   headimgurl = $(".headimgurl").text()
								 var   nickname = $(".nickname").text()
								 var days = $(".dayss").text(); 
								 var dateTime = $(".dateTime").text();
								 var integral = $(".integral").text();
								 var  lv1state = $(".lv1state").text();//礼物领取状态
					  		     var  lv2state = $(".lv2state").text();//礼物领取状态
					  		     var  lv3state = $(".lv3state").text();//礼物领取状态
					  		     var  ZYE = "ZYE";
					  			 var  kemuZYHXY = "中药";
					  		     
					  		     window.location.href="../timushocangzhangjie/timushocangzhangjie?kemu="+ZYE+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""; 
								 if($(".Knowledge_Name").text() == "中药学专业知识二"){
									 var  Knowledge_Name  =  $(".Knowledge_Name").text();//题型名
									 var  fractionPe = $("#fractionPe").text();//分数
								     var  percentage = $("#accuracy").text();//正确率
								     var  correctnumber = $("#answer").text();//正确题数
								     var  int_second = $("#time").text();//做题用时
								     var  queanswer  = $(".queanswer").text();//用户选择的题目答案
								     var  answers = $(".answers").text();//题目正确答案
								     var days = $(".dayss").text();
								     var integral = $(".integral").text();
								     /* var dateTime = $(".dateTime").text(); */
								     storage2["timushocangque2Knowledge_Name2"] = Knowledge_Name;
								     storage2["timushocangque2fractionPe2"] = fractionPe;
								     storage2["timushocangque2percentage2"] = percentage;
								     storage2["timushocangque2correctnumber2"] = correctnumber;
								     storage2["timushocangque2int_second2"] = int_second;
								     storage2["timushocangque2queanswer2"] = queanswer;
								     storage2["timushocangque2answers2"] = answers; 
								     storage2["timushocangque2andays2"] = days;
								     storage2["timushocangque2integral2"] = integral;
								     /* storagedateTime["storagedateTime"] =  dateTime; *///将当前时间保存进缓存
								     $("#active1").css("display","none");
								     $("#active2").css("display","block");
								     $("#active3").css("display","none");
								     $("#active4").css("display","none");
								     if(percentage <= 40){
						    	    	   $("#sr-only").text("本次练习没有及格,需要努力了哦!");
						    	       }
						    	       if(percentage == 60){
						    	    	   $("#sr-only").text("本次练习及格啦,继续加油吧!");
						    	       }
						    	       if(percentage == 80){
						    	    	   $("#sr-only").text("本次练习成绩优异,请继续保持哦!");
						    	       }
						    	       if(percentage == 100){
						    	    	   $("#sr-only").text("本次练习获得了满分,一定要坚持啊!");
						    	       }
								 }
								return;
							}, 0);
		 			  }
						     if(button == 'cancel') {
							//按下取消按钮执行的操作
							//todo ....
						    this.hide(); 
							setTimeout(function() { 
							/*  webToast("","bottom", 0);   */
								
							},0); 
						  }
						}
					); 
		     
	     }
	     if(storage2["timushocangque2int_second2"] &&  storage2["timushocangque2int_second2"] != 0){
	    		var storagedateTime = window.localStorage;
	    	 var getKnowledge_Name = storage2["timushocangque2Knowledge_Name2"];
	    	 var getfractionPe = storage2["timushocangque2fractionPe2"];
	    	 var getpercentage = storage2["timushocangque2percentage2"];
	    	 var getcorrectnumber = storage2["timushocangque2correctnumber2"];
	    	 var getint_second = storage2["timushocangque2int_second2"];
	    	 var getqueanswer = storage2["timushocangque2queanswer2"];
	    	 var getanswers = storage2["timushocangque2answers2"] 
	    	 var getdays = storage2["timushocangque2andays2"];
	    	 var getintegral = storage2["timushocangque2integral2"];
	    	 var gerdateTime = storagedateTime["timushocangstoragedateTime"]; 
	    	 $("#active1").css("display","none");
		     $("#active2").css("display","block");
		     $("#active3").css("display","none");
		     $("#active4").css("display","none");
	    	 /* alert("填数据"); */ 
	    	 $("#fractionPe").text(getfractionPe);//分数
	    	 $("#accuracy").text(getpercentage);//正确率
	    	 $("#answer").text(getcorrectnumber);//正确题数
	    	 $("#time").text(getint_second);//做题用时
	    	 $("#day").text(getdays);
	    	 $("#gift_jf").text(getintegral);
	    	 /* alert("显示");  */
	    	 $(".answers").text(getanswers);//题目正确答案
		     $(".queanswer").text(getqueanswer);//用户选择的正确答案 
		    $(".dateTime").text(gerdateTime); 
		     Knowledge_Name = getKnowledge_Name;
		     fractionPe = getfractionPe;
	    	 percentage = getpercentage;//正确率
		     correctnumber = getcorrectnumber;//正确题数
		     int_second = getint_second;//做题用时
		     queanswer  = getqueanswer;//用户选择的题目答案
		     answers = getanswers;//题目正确答案 
		     dayss = getdays;
		     integrals = getintegral;
		    /*  dateTimes = gerdateTime; */
	     }
 }
     
     
     if("中药学综合知识与技能" == Knowledge_Names){
    	 //设置localStorage用于页面的本地储存(将数据存入storage中去)
	     var storage3 = window.localStorage;
	     if(!storage3["timushocangque3int_second3"] || storage3["timushocangque3int_second3"] == 0){
				popTipShow.confirm('提示','今日没有答题记录哦',['去答题','不想做'],
						function(e){ 
						  //callback 处理按钮事件
						   var button = $(e.target).attr('class');
						  if(button == 'ok'){ 
							//按下确定按钮执行的操作
							//todo ....				
							 this.hide();
							setTimeout(function() { 
								/*  webToast("操作成功","top", 2000);  */
								 var  subjectsid = "ZH";
								
								 var   openid = $(".openid").text()
								 var   headimgurl = $(".headimgurl").text()
								 var   nickname = $(".nickname").text()
								 var days = $(".dayss").text();
								 var dateTime = $(".dateTime").text();
								 var integral = $(".integral").text();
								 var  lv1state = $(".lv1state").text();//礼物领取状态
					  		     var  lv2state = $(".lv2state").text();//礼物领取状态
					  		     var  lv3state = $(".lv3state").text();//礼物领取状态
					  		     var ZYZH = "ZYZH";
					  			 var  kemuZYHXY = "中药";
					  		     
					  		     window.location.href="../timushocangzhangjie/timushocangzhangjie?kemu="+ZYZH+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""; 
								if($(".Knowledge_Name").text() == "中药学综合知识与技能"){
								 var  Knowledge_Name  =  $(".Knowledge_Name").text();//题型名
								 var  fractionPe = $("#fractionPe").text();//分数
							     var  percentage = $("#accuracy").text();//正确率
							     var  correctnumber = $("#answer").text();//正确题数
							     var  int_second = $("#time").text();//做题用时
							     var  queanswer  = $(".queanswer").text();//用户选择的题目答案
							     var  answers = $(".answers").text();//题目正确答案
							     var  days = $(".dayss").text();
							     var  integral = $(".integral").text();
							     /* var dateTime = $(".dateTime").text(); */
							     storage3["timushocangque3Knowledge_Name3"] = Knowledge_Name;
							     storage3["timushocangque3fractionPe3"] = fractionPe;
							     storage3["timushocangque3percentage3"] = percentage;
							     storage3["timushocangque3correctnumber3"] = correctnumber;
							     storage3["timushocangque3int_second3"] = int_second;
							     storage3["timushocangque3queanswer3"] = queanswer;
							     storage3["timushocangque3answers3"] = answers;
							     storage3["timushocangque3andays3"] = days;
							     storage3["timushocangque3integral3"] = integral;
							     /* storagedateTime["storagedateTime"] =  dateTime; *///将当前时间保存进缓存
							     $("#active1").css("display","none");
							     $("#active2").css("display","none");
							     $("#active3").css("display","block");
							     $("#active4").css("display","none");
							     if(percentage <= 40){
					    	    	   $("#sr-only").text("本次练习没有及格,需要努力了哦!");
					    	       }
					    	       if(percentage == 60){
					    	    	   $("#sr-only").text("本次练习及格啦,继续加油吧!");
					    	       }
					    	       if(percentage == 80){
					    	    	   $("#sr-only").text("本次练习成绩优异,请继续保持哦!");
					    	       }
					    	       if(percentage == 100){
					    	    	   $("#sr-only").text("本次练习获得了满分,一定要坚持啊!");
					    	       }
								}
							}, 0);
		 			  }
		 
						     if(button == 'cancel') {
							//按下取消按钮执行的操作
							//todo ....
						    this.hide();
							setTimeout(function() { 
							/*  webToast("","bottom", 2000);  */
								
							}, 0); 
						  }
						}
					); 
		     
	     }
	     if(storage3["timushocangque3int_second3"] &&  storage3["timushocangque3int_second3"] != 0){
	    	 var storagedateTime = window.localStorage;
	    	 var getKnowledge_Name = storage3["timushocangque3Knowledge_Name3"];
	    	 var getfractionPe = storage3["timushocangque3fractionPe3"];
	    	 var getpercentage = storage3["timushocangque3percentage3"];
	    	 var getcorrectnumber = storage3["timushocangque3correctnumber3"];
	    	 var getint_second = storage3["timushocangque3int_second3"];
	    	 var getqueanswer = storage3["timushocangque3queanswer3"];
	    	 var getanswers = storage3["timushocangque3answers3"];
	    	 var getdays = storage3["timushocangque3andays3"];
	    	 var getintegral = storage3["timushocangque3integral3"];
	    	 var getdateTime =  storagedateTime["timushocangstoragedateTime"];
	    	 $("#active1").css("display","none");
		     $("#active2").css("display","none");
		     $("#active3").css("display","block");
		     $("#active4").css("display","none");
	    	 /* alert("填数据"); */ 
	    	 $("#fractionPe").text(getfractionPe);//分数
	    	 $("#accuracy").text(getpercentage);//正确率
	    	 $("#answer").text(getcorrectnumber);//正确题数
	    	 $("#time").text(getint_second);//做题用时
	    	 $("#day").text(getdays)
	    	 $("#gift_jf").text(getintegral);
	    	 /* alert("显示");  */
	    	 $(".answers").text(getanswers);//题目正确答案
		     $(".queanswer").text(getqueanswer);//用户选择的正确答案 
		      $(".dateTime").text(getdateTime); 
		     Knowledge_Name = getKnowledge_Name;
		     fractionPe = getfractionPe;
	    	 percentage = getpercentage;//正确率
		     correctnumber = getcorrectnumber;//正确题数
		     int_second = getint_second;//做题用时
		     queanswer  = getqueanswer;//用户选择的题目答案
		     answers = getanswers;//题目正确答案
		     dayss = getdays;
		     integrals = getintegral;
		     /* dateTimes = getdateTime; */
	     }
 }
     
     
     if("药事管理与法规" == Knowledge_Names){
    	 var storage4 = window.localStorage;
	     if(!storage4["timushocangque4int_second4"] || storage4["timushocangque4int_second4"] == 0){
				popTipShow.confirm('提示','今日没有答题记录哦',['去答题','不想做'],
						function(e){ 
						  //callback 处理按钮事件
						   var button = $(e.target).attr('class');
						  if(button == 'ok'){ 
							//按下确定按钮执行的操作
							//todo ....				
							 this.hide();
							setTimeout(function() { 
								/*  webToast("操作成功","top", 2000);  */
								 var  subjectsid = "FG";
								 
								
								 var   openid = $(".openid").text()
								 var   headimgurl = $(".headimgurl").text()
								 var   nickname = $(".nickname").text()
								 var  days = $(".dayss").text();
								 var dateTime = $(".dateTime").text();
								 var integral = $(".integral").text();
								 var  lv1state = $(".lv1state").text();//礼物领取状态
					  		     var  lv2state = $(".lv2state").text();//礼物领取状态
					  		     var  lv3state = $(".lv3state").text();//礼物领取状态
					  		     var  YS = "YS";
					  			 var  kemuZYHXY = "中药";
					  		     window.location.href="../timushocangzhangjie/timushocangzhangjie?kemu="+YS+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""; 
								if($(".Knowledge_Name").text() == "药事管理与法规;"){
								 var  Knowledge_Name  =  $(".Knowledge_Name").text();//题型名
								 var  fractionPe = $("#fractionPe").text();//分数
							     var  percentage = $("#accuracy").text();//正确率
							     var  correctnumber = $("#answer").text();//正确题数
							     var  int_second = $("#time").text();//做题用时
							     var  queanswer  = $(".queanswer").text();//用户选择的题目答案
							     var  answers = $(".answers").text();//题目正确答案
							     var days = $(".dayss").text();
							     var integral = $(".integral").text();
							    /*  var dateTime = $(".dateTime").text(); */
							     storage4["timushocangque4Knowledge_Name4"] = Knowledge_Name;
							     storage4["timushocangque4fractionPe4"] = fractionPe;
							     storage4["timushocangque4percentage4"] = percentage;
							     storage4["timushocangque4correctnumber4"] = correctnumber;
							     storage4["timushocangque4int_second4"] = int_second;
							     storage4["timushocangque4queanswer4"] = queanswer;
							     storage4["timushocangque4answers4"] = answers;
							     storage4["timushocangque4andays4"] = days;
							     storage4["timushocangque4integral4"] = integral;
							    /*  storagedateTime["storagedateTime"] =  dateTime; *///将当前时间保存进缓存
							     $("#active1").css("display","none");
							     $("#active2").css("display","none");
							     $("#active3").css("display","none");
							     $("#active4").css("display","block");
							     if(percentage <= 40){
					    	    	   $("#sr-only").text("本次练习没有及格,需要努力了哦!");
					    	       }
					    	       if(percentage == 60){
					    	    	   $("#sr-only").text("本次练习及格啦,继续加油吧!");
					    	       }
					    	       if(percentage == 80){
					    	    	   $("#sr-only").text("本次练习成绩优异,请继续保持哦!");
					    	       }
					    	       if(percentage == 100){
					    	    	   $("#sr-only").text("本次练习获得了满分,一定要坚持啊!");
					    	       }
								}
							}, 0);
		 			  }
		 
						     if(button == 'cancel') {
							//按下取消按钮执行的操作
							//todo ....
						    this.hide();
							setTimeout(function() { 
							 /* webToast("","bottom", 2000);  */
								
							}, 0); 
						  }
						}
					); 
		     
	     }
	     if(storage4["timushocangque4int_second4"] &&  storage4["timushocangque4int_second4"] != 0){
	    		var storagedateTime = window.localStorage;
	    	 var getKnowledge_Name = storage4["timushocangque4Knowledge_Name4"];
	    	 var getfractionPe = storage4["timushocangque4fractionPe4"];
	    	 var getpercentage = storage4["timushocangque4percentage4"];
	    	 var getcorrectnumber = storage4["timushocangque4correctnumber4"];
	    	 var getint_second = storage4["timushocangque4int_second4"];
	    	 var getqueanswer = storage4["timushocangque4queanswer4"];
	    	 var getanswers = storage4["timushocangque4answers4"];
	    	 var getdays = storage4["timushocangque4andays4"];
	    	 var getintegral = storage4["timushocangque4integral4"] ;
	    	var getdateTime = storagedateTime["timushocangstoragedateTime"];
	    	 $("#active1").css("display","none");
		     $("#active2").css("display","none");
		     $("#active3").css("display","none");
		     $("#active4").css("display","block");
	    	 /* alert("填数据"); */ 
	    	 $("#fractionPe").text(getfractionPe);//分数
	    	 $("#accuracy").text(getpercentage);//正确率
	    	 $("#answer").text(getcorrectnumber);//正确题数
	    	 $("#time").text(getint_second);//做题用时
	    	 $("#day").text(getdays);
	    	 $("#gift_jf").text(getintegral);
	    	 /* alert("显示");  */
	    	 $(".answers").text(getanswers);//题目正确答案
		     $(".queanswer").text(getqueanswer);//用户选择的正确答案 
		     $(".dateTime").text(getdateTime); 
		     Knowledge_Name = getKnowledge_Name;
		     fractionPe = getfractionPe;
	    	 percentage = getpercentage;//正确率
		     correctnumber = getcorrectnumber;//正确题数
		     int_second = getint_second;//做题用时
		     queanswer  = getqueanswer;//用户选择的题目答案
		     answers = getanswers;//题目正确答案 
		     dayss = getdays;
		     integrals = getintegral;
		     /* dateTimes = getdateTime; */
	     }
      }
    };
     
     
     
     
        function setRootFontSize() {
        var width = document.documentElement.clientWidth || document.body.clientWidth;
        fontSize = (width / 16);
        document.getElementsByTagName('html')[0].style['font-size'] = fontSize + 'px';
        }
        setRootFontSize();
        window.addEventListener('resize', function(){
        setRootFontSize();
        }, false);
        	
        
      //中药学专业知识一
       $('.ZY').on('click', function(){
        	var Knowledge_Names = "中药学专业知识一";
        	jiexis(Knowledge_Names);
	   });
      //中药二提示弹框
       $('.ZE').on('click', function(){
    	  /*  alert("点击"); */
        	var Knowledge_Names = "中药学专业知识二";
        	jiexis(Knowledge_Names);
	   });
      //中药学综合知识与技能
       $('.ZH').on('click', function(){
        	var Knowledge_Names = "中药学综合知识与技能";
        	jiexis(Knowledge_Names);
	   });
	   //药事管理与法规
       $('.FG').on('click', function(){
        	var Knowledge_Names = "药事管理与法规";
        	jiexis(Knowledge_Names);
	   }); 
	   
         var  Knowledge_Name  =  $(".Knowledge_Name").text();//题型名
	      /* console.log("现在的题型名："+Knowledge_Name);  */
	     var  fractionPe = $("#fractionPe").text();//分数
	     var  percentage = $("#accuracy").text();//正确率
	     var  correctnumber = $("#answer").text();//正确题数
	     var  int_second = $("#time").text();//做题用时
	     var  queanswer  = $(".queanswer").text();//用户选择的题目答案
	     var  answers = $(".answers").text();//题目正确答案 
         var  nickname = $(".nickname").text();//用户微信名
         var  openid = $(".openid").text();//用户微信id
         var  headimgurl = $(".headimgurl").text();//用户微信头像
         var  dayss = $(".dayss").text();//连续登录天数
         var  integrals = $("#gift_jf").text();//累计积分
         var  lv1state = $(".lv1state").text();//礼物领取状态
		 var  lv2state = $(".lv2state").text();//礼物领取状态
		 var  lv3state = $(".lv3state").text();//礼物领取状态
         var storagedateTime = window.localStorage;
         var dateTime = storagedateTime["timushocangstoragedateTime"];
      //查看排行榜(排行榜点击事件)
      function ranking(){
    	  window.location.href="../paihang/paihang?nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&int_second="+int_second+"&Knowledge_Name="+Knowledge_Name+"&fractionPe="+fractionPe+""; 
      }
      
         
      var  names = $(".names").text();
    //在做一次
      function  again(){
    	  var  Knowledge_Name  =  $(".Knowledge_Name").text();//题型名
    	  var  knowledge_Id = $(".knowledge_Id").text();//该章节题目id
    	  var   kemuZYHXY  = $(".names").text()
    	  if(Knowledge_Name == "中药学专业知识一"){
    		  var  kemu  = "ZXY";
    	  }
    	  if(Knowledge_Name == "中药学专业知识二"){
    		  var  kemu  = "ZXE";
    	  }
    	  if(Knowledge_Name == "中药学综合知识与技能"){
    		  var  kemu = "ZXZH";
    	  }
    	  if(Knowledge_Name  == "YS"){
    		  var  kemu = "药事管理与法规";
    	  }
    	  
    	  window.location.href="../timushocangzhangjie/practice?Knowledge_Name="+Knowledge_Name+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&names="+names+"&days="+dayss+"&dateTime="+dateTime+"&integral="+integrals+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"&knowledge_Id="+knowledge_Id+"&kemuZYHXY="+kemuZYHXY+"";   
    }  
     //题目解析
      function  jiexi(){
    	  var   Knowledge_Name  =  $(".Knowledge_Name").text();//题型名
    	  var   datalength  =  $("#total").text();
    	  var   knowledge_Id = $(".knowledge_Id").text();//该章节题目id
     	  var   tixing = "中药";
    	  var   kemuZYHXY  = $(".names").text()
    	  /* alert("kemuZYHXY："+kemuZYHXY); */
     	  window.location.href="../timushocangjiexi/timushocangjiexi?correctnumber="+correctnumber+"&percentage="+percentage+"&int_second="+int_second+"&Knowledge_Name="+Knowledge_Name+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&tixing="+tixing+"&days="+dayss+"&dateTime="+dateTime+"&integral="+integrals+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"&knowledge_Id="+knowledge_Id+"&datalength="+datalength+"&kemuZYHXY="+kemuZYHXY+"";   
    	}  
     
   //礼物领取
     //接口需要的参数，openid微信id，gift用户领取的礼物级数，integrallqu用户积分领取礼物后自动扣去相应的积分。
   function  lw3lick(){
	    var lv1statest= "lv1state";//lv一级礼物
	    var integral = integrals;  
	    if(lv1state == "可领取"){
	    	$.ajax({
				url:'../mall/mall',
				dataType:'json',
				type:'post',
				data:{lv1state:lv1statest,openid:openid,integral:integral}, 
				success:function(data){
					if(data.type == 'success'){
						popTipShow.confirm('提示','您已连续打卡3天，恭喜获得5积分',['立即前往兑换奖品','继续做题'],//前面的按钮是ok，后面按钮是cancel
							function(e){
							  //callback 处理按钮事件
							   var button = $(e.target).attr('class');
							  if(button == 'ok'){
								//按下确定按钮执行的操作
								//todo ....				
								 this.hide();
								setTimeout(function(){
									$("#lw3").css("background-color","#C0C0C0");
					  		    	$("#lw3").text("已领取");//设置为已领取
					  		    	$("#gift_jf").text(data.integral);
					  		    	$(".lv1state").text("已领取");
					  		    	lv1state = "已领取";
					  		    	var storage1 = window.localStorage;
					  		    	var storage2 = window.localStorage;
					  		    	var storage3 = window.localStorage;
					  		    	var storage4 = window.localStorage;
					  		    	storage1["timushocangque1integral1"] = data.integral;
					  		    	storage2["timushocangque2integral2"] = data.integral;
					  		    	storage3["timushocangque3integral3"] = data.integral;
					  		    	storage4["timushocangque4integral4"] = data.integral;
									window.location.href="http://shop.jingyaoshi.net";
								}, 0);
						        }
							   if(button == 'cancel'){
									//按下取消按钮执行的操作
									//todo ....
								    this.hide();
									setTimeout(function(){
										$("#lw3").css("background-color","#C0C0C0");
						  		    	$("#lw3").text("已领取");//设置为已领取
						  		    	$("#gift_jf").text(data.integral);
						  		    	$(".lv1state").text("已领取");
						  		    	lv1state = "已领取";
						  		    	var storage1 = window.localStorage;
						  		    	var storage2 = window.localStorage;
						  		    	var storage3 = window.localStorage;
						  		    	var storage4 = window.localStorage;
						  		    	storage1["timushocangque1integral1"] = data.integral;
						  		    	storage2["timushocangque2integral2"] = data.integral;
						  		    	storage3["timushocangque3integral3"] = data.integral;
						  		    	storage4["timushocangque4integral4"] = data.integral;
									}, 0); 
								}  
			 			       }
						     );
					}
				}
			});
	    	
	    }else if(lv1state == "已领取"){
	    	popTipShow.confirm('提示','您已领取礼物',['立即前往兑换奖品','继续做题'],//前面的按钮是ok，后面按钮是cancel
					function(e){
					  //callback 处理按钮事件
					   var button = $(e.target).attr('class');
					  if(button == 'ok'){
						//按下确定按钮执行的操作
						//todo ....				
						 this.hide();
						setTimeout(function(){
							window.location.href="http://shop.jingyaoshi.net";
						}, 0);
				        }
					   if(button == 'cancel'){
							//按下取消按钮执行的操作
							//todo ....
						    this.hide();
							setTimeout(function(){
								
							}, 0); 
						}  
	 			       }
				     );
		}
      }
      function  lw7lick(){
    	var lv2statest = "lv2state";//lv二级礼物
    	var integral = integrals ; 
    	if(lv2state == "可领取"){
    		$.ajax({
				url:'../mall/mall',
				dataType:'json',
				type:'post',
				data:{lv2state:lv2statest,openid:openid,integral:integral}, 
				success:function(data){
					alert("回调");
					if(data.type == 'success'){
						popTipShow.confirm('提示','您已连续打卡7天，恭喜获得10积分',['立即前往兑换奖品','继续做题'],//前面的按钮是ok，后面按钮是cancel
							function(e){
							  //callback 处理按钮事件
							   var button = $(e.target).attr('class');
							  if(button == 'ok'){
								//按下确定按钮执行的操作
								//todo ....				
								 this.hide();
								setTimeout(function(){
									$("#lw7").css("background-color","#C0C0C0");
					  		    	$("#lw7").text("已领取");//设置为已领取
					  		    	$("#gift_jf").text(data.integral);
					  		    	$(".lv2state").text("已领取");
					  		    	lv2state = "已领取";
					  		    	var storage1 = window.localStorage;
					  		    	var storage2 = window.localStorage;
					  		    	var storage3 = window.localStorage;
					  		    	var storage4 = window.localStorage;
					  		    	storage1["timushocangque1integral1"] = data.integral;
					  		    	storage2["timushocangque2integral2"] = data.integral;
					  		    	storage3["timushocangque3integral3"] = data.integral;
					  		    	storage4["timushocangque4integral4"] = data.integral;
									window.location.href="http://shop.jingyaoshi.net";
								}, 0);
						        }
							   if(button == 'cancel'){
									//按下取消按钮执行的操作
									//todo ....
								    this.hide();
									setTimeout(function(){
										$("#lw7").css("background-color","#C0C0C0");
						  		    	$("#lw7").text("已领取");//设置为已领取
						  		    	$("#gift_jf").text(data.integral);
						  		    	$(".lv2state").text("已领取");
						  		    	lv2state = "已领取";
						  		    	var storage1 = window.localStorage;
						  		    	var storage2 = window.localStorage;
						  		    	var storage3 = window.localStorage;
						  		    	var storage4 = window.localStorage;
						  		    	storage1["timushocangque1integral1"] = data.integral;
						  		    	storage2["timushocangque2integral2"] = data.integral;
						  		    	storage3["timushocangque3integral3"] = data.integral;
						  		    	storage4["timushocangque4integral4"] = data.integral;
									}, 0); 
								}  
			 			       }
						     );
					}
				}
			});
    	}else if(lv2state == "已领取"){
    		popTipShow.confirm('提示','您已领取礼物',['立即前往兑换奖品','继续做题'],//前面的按钮是ok，后面按钮是cancel
					function(e){
					  //callback 处理按钮事件
					   var button = $(e.target).attr('class');
					  if(button == 'ok'){
						//按下确定按钮执行的操作
						//todo ....				
						 this.hide();
						setTimeout(function(){
							window.location.href="http://shop.jingyaoshi.net";
						}, 0);
				        }
					   if(button == 'cancel'){
							//按下取消按钮执行的操作
							//todo ....
						    this.hide();
							setTimeout(function(){
								
							}, 0); 
						}  
	 			       }
				     );
		}
      }
      function  lw15lick(){
    	var lv3statest = "lv3state";//lv三级礼物
    	var integral = integrals; 
    	if(lv3state  == "可领取"){
    		$.ajax({
				url:'../mall/mall',
				dataType:'json',
				type:'post',
				data:{lv3state:lv3statest,openid:openid,integral:integral}, 
				success:function(data){
					if(data.type == 'success'){
						popTipShow.confirm('提示','您已连续打卡15天，恭喜获得20积分',['立即前往兑换奖品','继续做题'],//前面的按钮是ok，后面按钮是cancel
							function(e){
							  //callback 处理按钮事件
							   var button = $(e.target).attr('class');
							  if(button == 'ok'){
								//按下确定按钮执行的操作
								//todo ....				
								 this.hide();
								setTimeout(function(){
									$("#lw15").css("background-color","#C0C0C0");
					  		    	$("#lw15").text("已领取");//设置为已领取
					  		    	$("#gift_jf").text(data.integral);
					  		    	$(".lv3state").text("已领取");
					  		    	lv3state = "已领取";
					  		    	var storage1 = window.localStorage;
					  		    	var storage2 = window.localStorage;
					  		    	var storage3 = window.localStorage;
					  		    	var storage4 = window.localStorage;
					  		    	storage1["timushocangque1integral1"] = data.integral;
					  		    	storage2["timushocangque2integral2"] = data.integral;
					  		    	storage3["timushocangque3integral3"] = data.integral;
					  		    	storage4["timushocangque4integral4"] = data.integral;
									window.location.href="http://shop.jingyaoshi.net";
								}, 0);
						        }
							   if(button == 'cancel'){
									//按下取消按钮执行的操作
									//todo ....
								    this.hide();
									setTimeout(function(){
										$("#lw15").css("background-color","#C0C0C0");
						  		    	$("#lw15").text("已领取");//设置为已领取
						  		    	$("#gift_jf").text(data.integral);
						  		    	$(".lv3state").text("已领取");
						  		    	lv3state = "已领取";
						  		    	var storage1 = window.localStorage;
						  		    	var storage2 = window.localStorage;
						  		    	var storage3 = window.localStorage;
						  		    	var storage4 = window.localStorage;
						  		    	storage1["timushocangque1integral1"] = data.integral;
						  		    	storage2["timushocangque2integral2"] = data.integral;
						  		    	storage3["timushocangque3integral3"] = data.integral;
						  		    	storage4["timushocangque4integral4"] = data.integral;
									}, 0); 
								}  
			 			       }
						     );
					}
				}
			});
    	}else if(lv3state == "已领取"){
    		popTipShow.confirm('提示','您已领取礼物',['立即前往兑换奖品','继续做题'],//前面的按钮是ok，后面按钮是cancel
					function(e){
					  //callback 处理按钮事件
					   var button = $(e.target).attr('class');
					  if(button == 'ok'){
						//按下确定按钮执行的操作
						//todo ....				
						 this.hide();
						setTimeout(function(){
							window.location.href="http://shop.jingyaoshi.net";
						}, 0);
				        }
					   if(button == 'cancel'){
							//按下取消按钮执行的操作
							//todo ....
						    this.hide();
							setTimeout(function(){
								
							}, 0);
						}  
	 			       }
				     );
		}
      }   
      //客服（客服页面）
      function  Homepage(){
    		window.location.href="../Customer/Customer";
      }
      //积分商城，进入商城主页面
      function  integral(){
    	    window.location.href="http://shop.jingyaoshi.net";
      }
      //兑换码(进入输入兑换码页面)
      function  exchangecode(){
    	   $("#createFileMModal").modal('show');
    	   // 关闭弹框， 获取输入值，然后执行逻辑
      }
    	  $("#createFileSureBut").click(function (){
              $("#createFileMModal").modal("hide");
              var inputFileName = $("#fileName").val();//兑换码
              $.ajax({
					url:'../code/code',
					dataType:'json',
					type:'post',
					data:{exchange:inputFileName,openid:openid},
					success:function(data){
						if(data.type == 'success'){
							popTipShow.confirm('提示','积分到账成功',['立即前往兑换奖品','做题赚取积分'],//前面的按钮是ok，后面按钮是cancel
									function(e){
									  //callback 处理按钮事件
									   var button = $(e.target).attr('class');
									  if(button == 'ok'){
										//按下确定按钮执行的操作
										//todo ....				
										 this.hide();
										setTimeout(function(){
											window.location.href="http://shop.jingyaoshi.net";
										}, 0);
								        }
									   if(button == 'cancel'){
											//按下取消按钮执行的操作
											//todo ....
										    this.hide();
											setTimeout(function(){
												
											}, 0);
										}  
					 			       }
								     );
						}else  if(data.type == 'erorr'){
							alert("您输入的兑换码有误!");
						}else if(data.type == 'change'){
							alert("该兑换码已兑换");
						}
					}
				});
          });
      
      
      //积分兑换(进入商城)
      function  exchange(){
    	  window.location.href="http://shop.jingyaoshi.net";
      }
      
	</script>
</body>
</html>