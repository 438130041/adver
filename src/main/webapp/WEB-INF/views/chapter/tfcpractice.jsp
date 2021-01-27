<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
    <!-- <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <!-- <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520">
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <title>章节练习</title>
    <style>
/*      执业中药师，细分到章节          */
        body {
            font-size: 16px;
            line-height: 1.5;
            font-family: 'Microsoft Yahei','simsun','arial','tahoma';
            background: #fff;
            text-decoration: none;
        }

        @-webkit-keyframes fadenum { /*设置内容由显示变为隐藏*/
                0% {
                opacity: 0;
            }

                100% {
                opacity: 1;
            }
        }

        @-moz-keyframes fadenum { /*设置内容由显示变为隐藏*/
                0% {
                opacity: 0;
            }

                100% {
                opacity: 1;
            }
        }

        @-o-keyframes fadenum { /*设置内容由显示变为隐藏*/
                0% {
                opacity: 0;
            }

                100% {
                opacity: 1;
            }
        }

        @keyframes fadenum { /*设置内容由显示变为隐藏*/
                0% {
                opacity: 0;
            }

                100% {
                opacity: 1;
            }
        }

	
		 .topic{
				display:none;
			} 
	
        .mt10 {
            margin-top: 10px;
        }

        .bgcolor {
            background-color: #eee;
        }

        .quehead {
            font-size: 14px;
            margin-top: 10px;
        }

            .quehead .headcount {
                padding-left: 30px;
                color: #3cadfb;
            }

            .quehead .headsubject {
                color: #3cadfb;
            }

            .quehead .headtime {
                color: #3cadfb;
            }


        .quediv {
            -webkit-animation: fadenum 0.5s ease;
            -moz-animation: fadenum 0.5s ease;
            animation: fadenum 0.5s ease;
        }

            .quediv .quetitle {
                padding: 5px 10px;
                background-color: #fff;
                line-height: 30px;
            }



            .quediv .queoption {
                border-radius: 25px;
                padding: 10px;
                line-height: 30px;
                background-color: #fff;
                margin: 10px;
            }

                .quediv .queoption .optionspan {
                    font-weight: bold;
                    padding: 5px 10px;
                    margin-right: 10px;
                    background: #f7f5f5;
                    -moz-border-radius: 60px;
                    -webkit-border-radius: 60px;
                    border-radius: 60px;
                }

                .quediv .queoption:active {
                    background: #3cadfb;
                }

                .quediv .queoption .active {
                    background: #3cadfb;
                }
		/*b型题*/
		
		.quedivs {
            -webkit-animation: fadenum 0.5s ease;
            -moz-animation: fadenum 0.5s ease;
            animation: fadenum 0.5s ease;
        }

            .quedivs .quetitles {
                padding: 5px 10px;
                background-color: #fff;
                line-height: 30px;
            }

            .quedivs .queoptions {
                border-radius: 25px;
                padding: 10px;
                line-height: 30px;
                background-color: #fff;
                margin: 10px;
            }

             .quedivs .queoptions .optionspans {
                    font-weight: bold;
                    padding: 5px 10px;
                    margin-right: 10px;
                    background: #f7f5f5;
                    -moz-border-radius: 60px;
                    -webkit-border-radius: 60px;
                    border-radius: 60px;
                }

                .quedivs .queoptions:active {
                    background: #3cadfb;
                }

                .quedivs .queoptions .active {
                    background: #3cadfb;
                }
		
		/*b型题*/
        .btndiv {
            text-align: center;
            margin-bottom: 65px;
        }

            .btndiv .btnanniu {
                width: 94%;
            }
            .btndiv .btnjiexi {
                width: 94%;
            }
            a{ text-decoration:none} 
           <!---文字居中 --->
            .headsubject {
            	text-align:center;
            }
            #questions_id{
            	display: none;
            }
            #answer{
            	display: none;
            }
            .choose{
            	color:#1E90FF;
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
         	.tixing{
         		display: none;
         	}
         .days{
         	display: none;
          }
        .quediv .queoption .rightOK {
                    background: #1E90FF;
                }
         .dateTime{
           	display: none;
            }
          .integral{
          	display: none;
            }
         #imgname{
         	width:100%;
         	height:100%;
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
        .interval{
          padding: 5px;
          }
        .titles{
            margin-top:10px;
          	width:100%;
         	height:30%;
         	background: #fff;
          }
        .ziti{
        	padding:7px;
          }
        .tixingwB{
        	color:#1E90FF;
          }
          
        .img7{
        	height:100%;
        	width:100%;
           }
       .img6{
       		height:100%;
        	width:100%;
          }
       .knowledge_Id{
       		display:none;
          }
      .imgs{
       		height:100%;
        	width:100%;
        }
      .kemu{
         display: none;
      }
    /*   .jiaozhuan{
      	display:none;
      } */
    .tijiaozuoti{
      display: none;
    }
    .kemuZYHXY{
    	display:none;
    }
    #jixi{
		margin-top:8%;
     }
    #rowjiexi{
         background-color: 	#FFFFFF;
         margin-bottom:3%;
         display:none;
       }
    #myanswer{
           font-size:15px;
           font-weight:550;
           padding-top:7px;
           padding-bottom:7px;
           	   /* margin-left:135px;
           	   margin-bottom:50px; */
       }
     #jiexi{
               font-size:15px;
           	   font-weight:550;
           	   padding-top:7px;
           	   margin-left:35px; 
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
   #cankaojiexi{
           font-size:15px;
           padding-top:7px;
           margin-left:35px; 
        }
  .correctnumber{
         	display: none;
         }
   #my{
             color:#32CD32;
        } 
    #answerAnalysis{
    	display:none;
    } 
   .jiexigeshu{
  		display:none;
    }
    .datika{
        display:none;    		
      }
   .questions_id{
   		display:none;
    }
   /* 收藏按钮星型图案   */
   			.shocan{
   				width:30px;
   				position: absolute;
				   top: -13px;
				   right: 25px;
   			 }
   			 
   			.cleanfloat::after{display: block; clear: both; content:""; visibility: hidden; height: 0;}/*清浮动*/
 			ul li{list-style:none; float:left; font-size:20px; margin:0px; color:#ccc; cursor:pointer;width: 30px;
			 height: 25px;text-align: center;}/*五角星样式*/
		   .hs,.cs{color:#FF3333;}/*五角星点击后样式*/
			ul,ol{
				margin: 0;
				padding: 0;
			}
			.cleanfloat{
				width: 30px;
			}
			
			.Collection{
				margin: 0;
				padding: 0;
				font-size: 8px;
				text-align: center;
			}
   			.shocangyangshe{
   				color:#FF3333;
   			 }
   
  /*-------------*/
     /*--下排按钮--*/
      .xiapaiann{
				background-color:#F5F5F5;      
      			height:55px;
      			width:100%;
      			position:fixed;
				bottom: 0;
      			
       }
      /* .hengexian{
      		 border:3px solid  	#D3D3D3;
      
       } */
		   
       .datikadiv-1{
		   margin-top: 8px;
		   text-align: center;
	   }
       /*--答题卡--*/
        .shoyediv{
			width: 22%;
			display: inline-block;
			
       } 
	   .datika1,.shipin,.shoye{
		   width: 28px;
		   height: 28px;
		   margin: 0 auto;
	   }
	   
		.datikatext{
			font-size: 12px;
			text-align: center;
          }
		.shoyediv img{
			width: 100%;
			height: 100%;
		}
       #shoyeimg{
		   width: 120%;
		   height: 120%;
		   margin-left: -10%;
        }
       /*--视频--*/
        
        
    </style>
</head>

<body>
    <div class="bgcolor container">
        <div class="kemu">${kemu}</div>
        <div class="kemuZYHXY">${kemuZYHXY}</div>
        <div class="knowledge_Id">${knowledge_Id}</div><!-- 科目id（根据科目id去查询出科目下的土木） -->
    	<div class="nickname">${nickname}</div>
		<div class="openid">${openid}</div>
		<div class="headimgurl">${headimgurl}</div>
		<div class="days">${days}</div>
		<div class="integral">${integral}</div><!-- 累计积分 -->
		<div class="dateTime">${dateTime}</div>
		<div class="lv1state">${lv1state}</div><!-- 礼物领取状态 -->
	    <div class="lv2state">${lv2state}</div><!-- 礼物领取状态 -->
	    <div class="lv3state">${lv3state}</div><!-- 礼物领取状态 -->
	    <div  class="datika">${datika}</div><!-- 判断是否是答题卡 -->
	    <div class="questions_id">${questions_id}</div><!-- 从答题卡页面传入的题目id数据 -->
		<div class="tixing">${tixing}</div><!-- 题型 -->
        <div class='row '>
            <div class='quehead'>
                <div class='col-xs-3 headcount'>
                     <span id="comlcount" >1</span>/<span><span class="number">5</span></span>题 
                </div>
                <div class='col-xs-5'>
                    <div class='headsubject'><span id="subLists">${subList}</span></div>
                </div>
                <div class='col-xs-4'>				<!-- 前台计时 -->
                    <div class='headtime'><span>用时：<span id='time_s'></span></span></div>
                </div>
                <div class='col-xs-12 mt10'>
                    <div style='width:80%; margin:-1 auto;' id="jindutiao" ><!-- 设置div进度条的宽度占比 -->
                        <div class='progress'>
                            <div class='progress-bar' role='progressbar' aria-valuenow='60'
                                 aria-valuemin='0' aria-valuemax='100' style='width: 20%;background-color:#3cadfb;'  id="progress"><!--这里的div的style属性设置进度条颜色的占比 -->
                                <span class='sr-only'>100% 完成</span>
                            </div>
                        </div>
	                    <!-- 收藏按钮（五角星型） -->
				       	<div class="shocan" ><!-- onclick="shocang()" -->
							<ul class="cleanfloat">
									 <li>&#9733;</li><!--  中间&#9733;是设置不同的图标类型，后面不同数字对应不同的图标类型 -->
							</ul>
							<p class="Collection"  id="shocang">收藏</p>
						</div>
	                    <!--  -->
                    </div>
                </div>
            </div>
        </div>
         <!-- 题目显示框 -->
        <div class='row quelist '>
        		
        </div>
        <div class='row' id="rowjiexi">
        	<div class='row'>
        		<div class="col-xs-5" id="correctanswer">正确答案：<span  id="correct"></span></div>
        		<div class="col-xs-5" id="myanswer">我的答案：<span id="my"></span></div> 
        	</div>
        	<div class="divider"></div>
        	<div class="row">
        		<div class="col-xs-6" id="jiexi"  >参考解析:</div>
        	</div> 
        	<div class='row'>
        		<div class="col-xs-10" id="cankaojiexi"></div>
        	</div> 
        </div>
        
        <div class='row'>
            <div class="btndiv">
                <div class="row">
                    <div class="col-xs-4">
                        <div page="" id="Lpage" class="btn btn-primary btnanniu">上一题</div>
                    </div>
                     <div class="col-xs-4">
                    	<div page="" id="fanghui" class="btn btn-warning btnanniu" onclick="fanghui()">结束练习</div>
                    	<div page="" id="jixi" class="btn btn-warning btnjiexi" >答案解析</div>
                     </div> 
                    <div class="col-xs-4">
                        <div page="" id="Dpage" class="btn btn-primary btnanniu col-xs-6">下一题</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 下排按钮 -->
    <div class="hengexian"></div>
    <div  class="xiapaiann">
		<div class="datikadiv-1">
		 <!-- 首页 -->
		    <div class="shoyediv"  onclick="shoye()">
		    		<div class="shoye">
						<!-- <img  id="shoyeimg"  alt="" src="../resources/admin/login/img/shoye.png"> -->
						<img  id="shoyeimg"  alt="" src="../resources/admin/login/img/shoye.png">
		    		</div>
		    	   <div class="shipinimg"></div>
		    	    <div class="datikatext">首页</div>
		    </div>
		    <!-- 答题卡 -->
				<div  class="shoyediv"   onclick="datika()">
					   <div class="datika1">
						 <!-- <img  id="datikaimg"   alt="" src="../resources/admin/login/img/datika.png"> -->
						 <img  id="datikaimg"   alt="" src="../resources/admin/login/img/datika.png">
						</div> 
			    		<!-- <div class="one"></div>
			    		<div class="two"></div>
			    		<div class="three"></div> -->
			   		 <div class="datikatext">答题卡</div>
			    </div> 
		    <!-- 视频 -->
		    <div class="shoyediv"  onclick="shipin()">
		    		<div class="shipin">
						<!-- <img  id="shipinimg"  alt="" src="../resources/admin/login/img/shipin.png"> -->
						<img  id="shipinimg"  alt="" src="../resources/admin/login/img/shipin.png">
		    		</div>
		    	   <div class="shipinimg"></div>
		    	    <div class="datikatext">视频</div>
		    </div> 
		     <!-- 我的 -->
			 <div class="shoyediv"  onclick="my()">
				<div class="shoye">
					<!-- <img  id="shoyeimg"  alt="" src="../resources/admin/login/img/shoye.png"> -->
					<img  id=""  alt="" src="../resources/admin/login/img/my.png">
				</div>
			   <div class="shipinimg"></div>
				<div class="datikatext">我的</div>
			</div>		    
		</div>
    </div>
    
	<script type="text/javascript" src="../resources/admin/js/alertPopShow.js"></script>
	<script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
	<script type="text/javascript">
	 String.prototype.replaceAll = function (s1, s2) {//定义一个replaceAll方法，因为juqery中没有没有全部替换的方法，因此需要自己定义一个方法
		 return this.replace(new RegExp(s1, "gm"), s2);
     }
	 
	 
	 /* var storABCDE = window.localStorage; */
	 //缓存用户做题的答案和做题页面数（下次进来时可以直接从上次做的地方开始）
	 var locationABCDE = window.localStorage;
	 var storagexuanxian = window.localStorage;//window.localStorage，H5的页面缓存
	 var locationcolor = window.localStorage;//选项颜色缓存
	 var locationquestions_id = window.localStorage;//题目id缓存
	 
	 
	 //返回章节页面
	 var  knowledge_Id = $(".knowledge_Id").text(); //获取到题型数据（后台传入 的json数据）
	 var  openid = $(".openid").text();
	 var  headimgurl = $(".headimgurl").text();
	 var  nickname = $(".nickname").text();
	 var  days = $(".days").text();
	 var  integral = $(".integral").text();
	 var  dateTime = $(".dateTime").text();
	 var  lv1state = $(".lv1state").text();
	 var  lv2state = $(".lv2state").text();
	 var  lv3state = $(".lv3state").text();
	
	 function   fanghui(){//返回
		 var  kemu =  $(".kemu").text();
	 	 var  kemuZYHXY = $(".kemuZYHXY").text();
		 /*  alert("科目："+kemu);   */
		 window.location.href="../kemuxuanze/kemuxuanze?kemu="+kemu+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"";
	 }
	 
	 
	 //页面加载时就会加载这个函数，然后会调用下面的方法
        $(function () {
        	var  knowledge_Id = $(".knowledge_Id").text(); //获取到题型数据（后台传入 的json数据）(章节id)
        	var  kemuZYHXY =$(".kemuZYHXY").text();
		 	console.log("题目id："+knowledge_Id); 
        	ajaxjson(knowledge_Id,kemuZYHXY); 
        	//查询收藏库中的题目数据，用于判断哪些题目已经进行了收藏
        	
        	show_time();
        	/* showTimeIncrease(); */
        });
       //选项的个数
        var  count=0;
         function getStrCountarmstr(abcdeq,armstr){//scrstr 源字符串 armstr 特殊字符
       	  /*  alert("进入函数");  */
            while(abcdeq.indexOf(armstr) != -1 ) {
           	 /* alert("选项个数："+count); */
           	 abcdeq = abcdeq.replace(armstr,"") 
               count++;
            }
       } 
     
         function getStrCountarmstrhttp(abcdeq,armstrhttp) {//scrstr 源字符串 armstr 特殊字符
          	  /* alert("进入函数"); */
               while(abcdeq.indexOf(armstrhttp) != -1 ) {
              	 /* alert("选项个数："+count); */
              	 abcdeq = abcdeq.replace(armstrhttp,""); 
                 count++;
               }
          } 
        
        function  ajaxjson(knowledge_Id,kemuZYHXY){
			$.ajax({
					url:'../tfcpractice/practice',
					dataType:'json',
					type:'post',
					data:{knowledge_Id:knowledge_Id,kemuZYHXY:kemuZYHXY}, 
					success:function(data){
						if(data.type == 'success'){
							/* alert("回调成功"); */
							var  datajson  = data.datas;//获取到后台回调回来的json数据
							var  datas  =  JSON.parse(datajson);//转化为对象
							/* console.log("题目个数："+datas.length);  */
						 	console.log("题目数据："+datajson); 
							/* console.log("第四个b型题的score值："+datas[3].questions_Type);   */ 
							/* var  questions_json0  = JSON.parse(datas[0].questions_json); *///将数据中的questions_json数据装换为对象
							var optiondata = ["A", "B", "C", "D", "E", "F", "G"];
							/* var dataid = ["que1","que2","que3","que4","que5"]; */
							var chooses  = ["【多选】","【单选】","【多选】"];
							var knowledge_Name = datas[0].knowledge_Name;
							var dataid = []; //定义一个数组
							var questions_ids = [];//题目id数组 
							var que = "que";//定义一个变量用于拼接id
						    datalengths = datas.length;//该章节下的题目总数
						    locationquestions_id["datalengths"+knowledge_Id] = datalengths;
							for(var i = 1 ;i <= datas.length;i++){
								dataid[i - 1] = que + i ;//因为是从第一个开始的，当i等于2 时数组角标就要减一
							} 
							for(var  i = 0;i < datas.length;i++){
								questions_ids[i] = datas[i].questions_id;
							} 
							var  datalength = datas.length;//题目的长度（也就是题目个数）
							$(".number").text(datalength);
							var  knowledge_Id = $(".knowledge_Id").text(); //获取到题型数据（后台传入 的json数据）
							dataidq = dataid;
							knowledge_Nameq = knowledge_Name;
							datasq = datas;
							datalengthq = datalength;
						 //判断是否是从答题卡中进来
						     var  datika = $(".datika").text();
							if(datika == "datika"){//说明数据存在，是从答题卡页面进入
								/*  alert("datika的值："+datika); */ 
								   //将传过来的题目id与查询出来的id进行比较得出数据    
								 var  questions_id = $(".questions_id").text();
								 for(var i = 0;i<datas.length;i++){
									    if(questions_id == datas[i].questions_id){
									    	var  size  = i+2;
									    	/* alert("size的值："+size); */
									    	$("#"+"que"+size).show();//显示本页面
									    	var  width = 1/datalength*100;//进度条初始值为1除以总数乘以100
						    				var  widths = width*size;//每页进度占比等于初始值乘以页码(当相等时)
						    				pagesq = size;//做到了第多少题
						    				$("#progress").css("width",widths + "%");//通过字符串拼接的方式给进度条宽度赋值		
						   					$("#comlcount").text(size);
									    }	 
									 
								 }  
								
							 }  
							
				if(locationABCDE["que"+knowledge_Id]  != null && datika != "datika"){////////////////////
					
						  /*  alert("locationABCDE的值："+locationABCDE["que"]); */ 		
						var layerindex=layer.confirm('是否从上一次做题记录继续', 
								{
							title:'提醒',
								btn: ['是','否'] //按钮
								}, function(){//是（从上次做题记录开始）
				//layer.msg('的确很重要', {icon: 1});
					$('.quediv').hide();//隐藏
	 				console.log(locationABCDE["que"+knowledge_Id]);
	 				var quest = locationABCDE["que"+knowledge_Id].replace(knowledge_Id,"");//最后做到的题
	  			    /* alert("quest的值："+quest); */
	 				$("#"+quest).show();//显示本页面
	 				var  size = quest.replace("que","");//第多少道题
					var  width = 1/datalength*100;//进度条初始值为1除以总数乘以100
    				var  widths = width*size;//每页进度占比等于初始值乘以页码
    				pagesq = size;//做到了第多少题
    				$("#my").text(locationABCDE["que"+pagesq+"answer"+knowledge_Id]);
    				$("#correct").text( locationABCDE["answers"+pagesq+knowledge_Id]);
    				/* Dpagesq = size; */
    				console.log(locationABCDE["que"]);
    				console.log("pagesq的值："+pagesq);
    				queids = pagesq;//当前第几到题
 					$("#progress").css("width",widths + "%");//通过字符串拼接的方式给进度条宽度赋值		
   					$("#comlcount").text(size);
   				 	var  ABCD = ["A","B","C","D","E"]
   				 	for(var i = 1;i<= datalength;i++){
 						for(var  k = 0;k<5;k++){//                       
 							if(locationcolor["que"+i+"1"+ABCD[k]+knowledge_Id] != null){//添加缓存颜色
 	 							$("[id = "+"que"+i+"1"+ABCD[k]+"]").prop("class",locationcolor["que"+i+"1"+ABCD[k]+knowledge_Id])
 	 							/* console.log("缓存单选的选项值："+locationcolor["que"+i+"1"+ABCD[k]+knowledge_Id]); */
 	 						}
 							if(locationcolor["que"+i+"2"+ABCD[k]+knowledge_Id] != null){//添加缓存颜色
 	 							$("[id = "+"que"+i+"2"+ABCD[k]+"]").prop("class",locationcolor["que"+i+"2"+ABCD[k]+knowledge_Id])
 	 						} 
 							
 						}
 						for(var k = 1;k<5;k++){
 							if(locationcolor[knowledge_Id+"que"+i+k+"6"+ABCD[k]] != null){//添加缓存颜色
 	 							for(var j = 1;j<5;j++){
 	 								$("[id = "+knowledge_Id+"que"+i+j+ABCD[k]+"]").prop("class",locationcolor[knowledge_Id+"que"+i+k+"6"+ABCD[k]])
 	 							}
 	 						}
 							if(locationcolor[knowledge_Id+"que"+i+k+"7"+ABCD[k]] != null){//添加缓存颜色
 	 							for(var j = 1;j<5;j++){
 	 								$("[id = "+knowledge_Id+"que"+i+j+ABCD[k]+"]").prop("class",locationcolor[knowledge_Id+"que"+i+k+"7"+ABCD[k]])
 	 							}
 	 						}
 						}
 						
 					}
 					
 					$("#Lpage").show();//否则显示上一页按钮
	 				$("#Dpage").show();//否则下一页按钮显示   */
	 		    	layer.close(layerindex);
					/* btnbindclick() */
				}, function(){//否（从同开始）
					/* window.localStorage.clear(); */
					localStorage.removeItem("que"+knowledge_Id);//删除H5缓存的键（删除该科目 的做题数量记载）
					localStorage.removeItem("queanswer"+knowledge_Id);
					localStorage.removeItem("answers"+knowledge_Id);
					var  ABCD = ["A","B","C","D","E"]
					 for(var j = 0;j<datalength; j++){
						  for(var i = 0;i<datalength;i++){
							  if(locationABCDE["que"+i+"answer"+questions_ids[j]]  != null){ 
			        			  /*  alert("不为空"); */
			        			      locationcolor.removeItem("que"+i+"answer"+questions_ids[j])
			        		   } 
						  }
						
		        	}
					
					for(var i = 1;i<= datalength;i++){
 						localStorage.removeItem("cuoti"+i+knowledge_Id);
 						for(k = 0;k<5;k++){
 							if(locationcolor["que"+i+"1"+ABCD[k]+knowledge_Id] != null){//清除选项颜色缓存
 								locationcolor.removeItem("que"+i+"1"+ABCD[k]+knowledge_Id)
 	 						}
 							if(locationcolor["que"+i+"2"+ABCD[k]+knowledge_Id] != null){//清除选项颜色缓存
 	 							locationcolor.removeItem("que"+i+"2"+ABCD[k]+knowledge_Id)
 	 						} 
 							if(locationcolor[knowledge_Id+"que"+i+k+"6"+ABCD[k]] != null){//清除选项颜色缓存
 	 							locationcolor.removeItem(knowledge_Id+"que"+i+k+"6"+ABCD[k])
 	 						}
 							if(locationcolor[knowledge_Id+"que"+i+k+"7"+ABCD[k]] != null){//清除选项颜色缓存
 	 							locationcolor.removeItem(knowledge_Id+"que"+i+k+"7"+ABCD[k])
 	 						}
 							
 						}
 						
 					}
					 for(var i = 1;i<= datalength;i++){
						/* console.log("删除缓存值："+i); */
						locationABCDE.removeItem("answers"+i+knowledge_Id);
						locationABCDE.removeItem("que"+i+knowledge_Id);
						locationABCDE.removeItem("que"+i+"answer"+knowledge_Id);
						locationABCDE.removeItem("answer"+i+"s"+knowledge_Id); 
						/* console.log("删除后的值："+locationABCDE["que"+i+"answer"+knowledge_Id]（这种方法是定义一个H5缓存 的键）); */
						for(var DB = 1;DB<5;DB++){
							 localStorage.removeItem("que"+i+"answer"+DB+knowledge_Id);
						}
					 } 
					
				});
				}////////////////////////
				   QueInIt(optiondata,datas,dataid,chooses,knowledge_Name,datalength);
				}else{
					alert("页面出错请联系管理员！");
					}
				}
			});
		}
        
        
        function QueInIt(optiondata,datas,dataid,chooses,knowledge_Name,datalength){
        	var questrhtml = "";//设置一个变量，将div盒子给与这个变量。用来显示题目 
            $.each(datas, function (i, item) {//each是jquery的遍历方法。data就是传入的用来循环的题目数据与c:forEach中从后台传入的集合变量类似。item与c:forEach中var的用来循环集合值的变量
            	 var  questions_jsons = datas[i].questions_json.replaceAll("<label class='annex' >", "<img  class='imgs'  src='").replaceAll("</label>", "'/>");
            	 var  questions_json = JSON.parse(questions_jsons);
            	 var  titles = questions_json.title;
            	/*  console.log("解析："+questions_json.answerAnalysis);  */
            	//根据questions_Type判断题型类型（1单选，2多选）
            	 if(item.questions_Type == 1 || item.questions_Type == 2){
     		             questrhtml += "<div class= \"quediv  col-xs-12\"    id=\"" + dataid[i] + "\" ><div class=\"quetitle\"  id=\""+questions_json.answer+"\"><div id=\"chapter\">"+item.knowledge_Name+" :</div><span  class=\"choose\">"+chooses[item.questions_Type]+"</span>" + questions_json.title + "</div><div  class=\"" + dataid[i] + "knowledge_Id" +"\"  id=\"" + datas[i].questions_id + "\" ></div><div>";//item.id将id插入，item.title 中间插入提标
                   $.each(questions_json.options,function (x, option) {																																																																				 							  
                         questrhtml += "<div class=\"queoption\"   tag=\"" + optiondata[x]+ "\"><span class=\"optionspan\"  id=\""+dataid[i]+item.questions_Type+optiondata[x]+"\" ><div  class=\"topic\"  id=\"" + dataid[i] + "\" ><div  id=\"answer\"  class=\""+questions_json.answer+"\"  tag=\"" + optiondata[x]  + "\"><div  class=\"questions_id\"  id=\"" + datas[i].questions_id + "\"></div></div><div class=\"" + questions_json.answerAnalysis + "\"  id=\"answerAnalysis\">"+item.questions_Type+"</div></div>" + optiondata[x] + "</span>" 
                         + option + "</div>";//optiondata是设置选项数组，用角标循环出来。option是data里定义的题目内容
                     });
                   	   questrhtml += "</div></div>";
            	 }else  if(item.questions_Type == 6){//b型题
            		 var  questions_Jsons = datas[i].questions_json.replaceAll("<label class='annex' >", "<img  class='imgs'  src='").replaceAll("</label>", "'/>");
      		         var  questions_Json = JSON.parse(questions_Jsons);
      		         var  answerAnalysis =  questions_Json.answerAnalysis;//拿出第三道题的answerAnalysis值,是个字符串
      		    /*    console.log("answerAnalysis字符串："+answerAnalysis);  */
      		         var  answerAnalysisbx = JSON.parse(answerAnalysis);//转换为对象 
      		        /*  console.log("字符串questions_Json："+answerAnalysisbx[1].questions_Json);    */
      		   		 /* var questions_Jsonjiexi = JSON.parse(answerAnalysisbx[1].questions_Json); */ //第几小题对象
      		   		/*  console.log("第一题解析："+questions_Jsonjiexi.answerAnalysis);  */
      		         /* var  jiexilength = answerAnalysisbx.length; *///最终解析
      		       /*  console.log("对象个数："+jiexilength);  */
      		    	/* console.log("第三题解析："+answerAnalysisbx[2].answerAnalysis);  */
      		         var  abcdsz = [];//定义一个数组
                     var  abcde =  JSON.stringify(questions_Json.title);//将b型题的答案选择转换为json数据
                     var  abcdeq =  abcde.replace(new RegExp(abcde[0],"gm"),"");//将字符串中的双引号替换为空
                     var  tixingwB = "B型题: ";
                     if(abcdeq.search("http") != -1){
                    	 var  armstrhttp = "http";
                    	 getStrCountarmstrhttp(abcdeq,armstrhttp);
                             abcdsz[0] = abcdeq;//将分割出来的字符串拿出来一个个添加进数组中
                    		 count = 0;
                     }else{
                    	 /* console.log("进入分割"); */
                    	 var  armstr = ":";
                    	 getStrCountarmstr(abcdeq,armstr);
                    	 for(var k = 0;k<count;k++){//将选项循环拿出给与数组
                    		  /* console.log("开始分割"); */
                            	var abcdf = abcdeq.split(" ");//将字符串以空格分割拿出来
                            	abcdsz[k] = abcdf[k];//将分割出来的字符串拿出来一个个添加进数组中
                            	/* alert("没有图片abcdsz[k]的值："+abcdsz[k]); */
                          }
                    	 count = 0;
					}
                     questrhtml += "<div class= \"quediv  col-xs-12\"    id=\"" + dataid[i] + "\" ><div  class=\"" + dataid[i] + "knowledge_Id" +"\"  id=\"" + datas[i].questions_id + "\" ></div><div class=\"quetitle\"  id=\""+questions_json.answer+"\"><div id=\"chapter\"><span class=\"tixingwB\">"+ tixingwB +"</span>"+item.knowledge_Name+" :</div>"
                     for(var l = 0;l<abcdsz.length;l++){//题干
                    			 questrhtml += "<div>"+ abcdsz[l] +"</div>";
                     }
                     questrhtml += "</div><div>";
                     for(var j = 0 ;j<answerAnalysisbx.length;j++){//循环出下面的小题
                    	 var  answerAnalysisbxt = JSON.stringify(answerAnalysisbx[j]);//将对象中的第一个装换为json字符串
                         var  questions_Jsons = JSON.parse(answerAnalysisbxt);//将json字符串转换为对象
                         var  questionsJson = JSON.parse(questions_Jsons.questions_Json);
                         var questions_Jsonjiexi = JSON.parse(answerAnalysisbx[j].questions_Json); //第几小题对象
           		   		/*  console.log("第一题解析："+questions_Jsonjiexi.answerAnalysis);  */
           		         var  jiexilength = answerAnalysisbx.length;//最终解析个数
                           /* console.log("解析："+questionsJson.answerAnalysis[0]); */
                         /*  console.log("解析："+questionsJson.answerAnalysis[1]); 
                          console.log("解析："+questionsJson.answerAnalysis[2]);   */
                         var  DiBiao = j+1;//b型题小题题干（小题题干也可能是图片）
                         var  knowledge_Id = $(".knowledge_Id").text(); //获取到题型数据（后台传入 的json数据）
                         questrhtml += "<div class= \"titles\"  ><div class=\"ziti\"><span>"+ DiBiao +":</span><span  class=\"choose\">"+chooses[1]+"</span>" + questionsJson.title + "</div></div>"; 
                         for(var e = 0;e<5;e++){//ABCDE选项																			//knowledge_Id+que11A
                        	 questrhtml += "<div class=\"queoption\"  tag=\"" + optiondata[e]+ "\"><span class=\"optionspan\"  id=\""+knowledge_Id+dataid[i]+DiBiao+optiondata[e]+"\" ><div  class=\"topic\"  id=\"" + dataid[i] + "\" ><div class=\"DiBiao\"  id=\""+DiBiao+"\"><div class=\"length\" id=\""+answerAnalysisbx.length+"\"><div  class=\"questions_id\"  id=\"" + datas[i].questions_id + "\"></div></div></div><div  id=\"answer\"  class=\""+questions_Json.answer+"\"  tag=\"" + optiondata[e]  + "\"></div><div  class=\"" + questions_Jsonjiexi.answerAnalysis + "\"   id=\"answerAnalysis\"></div><div  class=\"jiexigeshu\"  id=\""+jiexilength+"\"></div>"+item.questions_Type+"</div>" + optiondata[e] + "</span></div>";//optiondata是设置选项数组，用角标循环出来。option是data里定义的题目内容 */
                            }
                     }
                     questrhtml += "</div></div>";
			     }else if(item.questions_Type == 7){//type为7说明是综合题
			    	 console.log("进入7");
			    	 var  questions_Jsons = datas[i].questions_json.replaceAll("<label class='annex' >", "<img  class='imgs'  src='").replaceAll("</label>", "'/>");
			    	 var  questions_Json7 = JSON.parse(questions_Jsons);//将第三道题的questions_json转换为对象
			    	 var  answerAnalysis =  questions_Json7.answerAnalysis;//拿出第三道题的answerAnalysis值,是个字符串
                     var  answerAnalysisbx = JSON.parse(answerAnalysis);//转换为对象 
                     var  tixingwz = "综合题: ";
                    /*  if(questions_Json7.title.search("http") != -1 || questions_Json7.title.search("https") != -1){
                    	 var http = questions_Json7.title.split(">")[1];
                    	 var http0 = questions_Json7.title.split(">")[0];
                    	 var text = http0.split("<")[0];
              		     var imgst = http.split("<")[0];
                    	 questrhtml += "<div class= \"quediv  col-xs-12\"    id=\"" + dataid[i] + "\" ><div class=\"quetitle\"  id=\"\"><div id=\"chapter\"><span class=\"tixingwB\">"+ tixingwz +"</span>"+item.knowledge_Name+" :<div calss=\"title\">"+text+"</din></div><img class=\"img7\"  src=\""+ imgst +"\"></div>"
                         questrhtml += "</div><div>"
                     }else { */
                    	 questrhtml += "<div class= \"quediv  col-xs-12\"    id=\"" + dataid[i] + "\" ><div  class=\"" + dataid[i] + "knowledge_Id" +"\"  id=\"" + datas[i].questions_id + "\" ></div><div class=\"quetitle\"  id=\"\"><div id=\"chapter\"><span class=\"tixingwB\">"+ tixingwz +"</span>"+item.knowledge_Name+" :<div calss=\"title\">"+questions_Json7.title+"</din></div></div>"
                         questrhtml += "</div><div>"
				/* 	} */
                    for(var n = 0 ;n<answerAnalysisbx.length;n++){
                    	     /* var  questions_Jsons = JSON.stringify(answerAnalysisbx); */  //将json字符串转换为对象
            		   		 /* console.log("对象："+questions_Jsons);   */ 
                    	   var  questionsJsontt = JSON.stringify(answerAnalysisbx[n].questions_Json); 
                   	 	    /* console.log("转换："+questionsJsontt);  */
            		   	   var  questionsJson  = JSON.parse(questionsJsontt);
            		   /* 	   console.log("questionsJson:"+questionsJson); */
                    	   /* var questions_Jsonjiexi = JSON.parse(answerAnalysisbx[n].questions_Json); */  //第几小题对象
            		       var  jiexilength = answerAnalysisbx.length; //最终解析个数
                    	   var  DiBiao = n+1;
                    	   var  knowledge_Id = $(".knowledge_Id").text();//获取到题型数据（后台传入 的json数据）
                    /*    if(questionsJson.title.search("http") != -1 || questionsJson.title.search("https") != -1){ */
                    	  /*  console.log("综合选项为图片");
                    	    var dansuan = questionsJson.title.split("<")[0];
                    	    var http = titles.split(">")[1];
                 		    var imgs = http.split("<")[0]; 
                 		    questrhtml += "<div class= \"titles\"  ><div class=\"ziti\"><span>"+ DiBiao +":</span>"+ dansuan +"</div><img class=\"img7\" src=\""+ imgs +"\"></div>"; 
                        }else { */
                        		questrhtml += "<div class= \"titles\"  ><div class=\"ziti\"><span>"+ DiBiao +":</span>" + questionsJson.title + "</div></div>"; 
						 /* }    */
                         for(var e = 0;e<5;e++){
                        		questrhtml += "<div class=\"queoption\"  tag=\"" + optiondata[e]+ "\"><span class=\"optionspan\"  id=\""+knowledge_Id+dataid[i]+DiBiao+optiondata[e]+"\" ><div  class=\"topic\"  id=\"" + dataid[i] + "\" ><div class=\"DiBiao\"  id=\""+DiBiao+"\"><div class=\"length\" id=\""+answerAnalysisbx.length+"\"><div  class=\"questions_id\"  id=\"" + datas[i].questions_id + "\"></div></div></div><div  id=\"answer\"  class=\""+questionsJson.answer+"\"  tag=\"" + optiondata[e]  + "\"></div><div  class=\"" + questionsJson.answerAnalysis + "\"   id=\"answerAnalysis\"></div><div  class=\"jiexigeshu\"  id=\""+jiexilength+"\"></div>"+item.questions_Type+"</div>" + optiondata[e] + "</span>"+questionsJson.options[e]+"</div>";//optiondata是设置选项数组，用角标循环出来。option是data里定义的题目内容 */
                           }
                      }
                     questrhtml += "</div></div>";
				  }
            });
            $(".quelist").append(questrhtml);//获取用来装题目的外围div盒子。append方法在被选元素的结尾（仍然在被选元素内部）插入指定内容。这里是插入循环出的div
            $("#Lpage").prop("page", 0);//jquery高版本才有的方法与低版本中的attr()方法类似，通过获取到元素，从而改变元素的属性值
            $("#Dpage").prop("page", 2);//给与下一页page属性值（初始值为2）
           /*  btnbindclick(dataid,knowledge_Name,datas,datalength); *///调用 btnbindclick()方法//id=\"" + dataid[i]+DiBiao + "\" 
            /* btnbindclick(); */
            $("#Lpage").click();//给上一页这个按钮点击事件
            bindoption(datalength);//调用 bindoption()方法
        }
        
        var  nickname = $(".nickname").text();
     	var  openid = $(".openid").text();
     	var  headimgurl = $(".headimgurl").text();
     	var  ques = "";
     	var  doubleanswer2 = "";
        var  doubleanswer1 = "";
        var  doubleanswer6 = "";
        var  dataids = "";
        var  DiBiaos = "";
        var  queianswerf = [];
        var  queianswerzh = [];
        var  DiBiaozonhes = "";
        var  dataidzonhes = "";
        var  quesb = "";
        var  quesz = "";
        var  onanswer = "a"//选择的上一题的答案
     
        //提交用户选择的选项数据
      function  Jexi(knowledge_Name,datas,datalength){
    	  var  knowledge_Id = $(".knowledge_Id").text(); //获取到题型数据（后台传入 的json数据）
    	  var  kemuZYHXY = $(".kemuZYHXY").text();
        	var   successrate = [];
        	//题目页码
        	var que = [];
        	for(var z = 1;z<= datalength ;z++){
        		que[z - 1] = locationABCDE["que"+z+knowledge_Id];
        	}
        	
        	for(var i = 1 ;i<= datalength ;i++){//判断题目正确率
		            if(locationABCDE["que"+i+"answer"+knowledge_Id] != null && locationABCDE["que"+i+"answer"+knowledge_Id] != ""){
		        	   if(locationABCDE["answers"+i+knowledge_Id] == Array.from(locationABCDE["que"+i+"answer"+knowledge_Id]).sort().join("")){//进行比较正确的为0，不正确的为1
		        		    locationABCDE["answer"+i+"s"+knowledge_Id]  =  0;
		               		  successrate[i - 1] = locationABCDE["answer"+i+"s"+knowledge_Id];
		               	}else if(locationABCDE["answers"+i+knowledge_Id] != Array.from(locationABCDE["que"+i+"answer"+knowledge_Id]).sort().join("")){
		               		locationABCDE["answer"+i+"s"+knowledge_Id]  =  1;
		               		  successrate[i - 1] = locationABCDE["answer"+i+"s"+knowledge_Id];
		       			}
       				 }else{
       					popTipShow.confirm('提示','您第!'+i+'题没有答完哦!',['取消','继续做题'],//前面的按钮是ok，后面按钮是cancel
    							function(e){
    							  //callback 处理按钮事件
    							   var button = $(e.target).attr('class');
    							  if(button == 'ok'){
    								//按下确定按钮执行的操作
    								//todo ....				
    								 this.hide();
    								setTimeout(function(){
    									
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
       			     return;
				}
       	} 
        	//对用户选择的选项进行排序
        	 var   queanswer = [];//用户选择的答案
        	for(var j = 1;j<= datalength ; j++){
        		locationABCDE["que"+j+"answer"+knowledge_Id] = Array.from(locationABCDE["que"+j+"answer"+knowledge_Id]).sort().join("");
        		queanswer[j] = locationABCDE["que"+j+"answer"+knowledge_Id];
        	} 
        	
        	 //该题正确的答案
        	 var   answers = [];
        	for(var k = 1;k<= datalength;k++){
        		answers[k] = locationABCDE["answers"+k+knowledge_Id];
        	} 
        	
        	
          /*   return; */
        	 for(var t = 1;t <= datalength;t++){
        		if(queanswer[t] == null || queanswer[t] == ""){
					
        			
        			
        		 }else{
        			console.log("传入ajax的提醒明："+subListname);
		        	var  number = [];//定义一个长度不定数组（这个数组中装的将是所有数据为0的数据，根据数组的长度判断 有几个做对了的）
		        	var k = 0;//定义一个变量初始值为0
		        	for(var i = 0;i < 5;i++){//循环答案的长度
		        	    var ai = successrate[i];//拿出每个比较后的数据
		        	    if(ai == 0){//如果为0
		        	    	number[k] = ai;//就将数据给number数组
		        	    	k++;
		        	    }
		        	}
		        	var  correctnumber = number.length;//正确题数
		        	var  jisu = 100/datalength;//datalength题目数
		        	/* alert("基数："+jisu); */
		        	var  percentage =Math.floor(jisu*correctnumber);//做题正确率//100/datalength*correctnumber
		        	/* alert("做题正确率："+percentage); */
		        	var  subListname = $("#subLists").text();//获取到题型数据，题型名（后台传入 的json数据）
		            var  tixing  = $(".tixing").text();//
		        	var  time_s  =  $("#time_s").text();//做题用时
		        	var  days = $(".days").text();//连续登录天数
		        	var  dateTime = $(".dateTime").text();//当前登录时间
		        	var  integral = $(".integral").text();//累计积分
		        	var  lv1state = $(".lv1state").text();//礼物1
		        	var  lv2state = $(".lv2state").text();//礼物2
		        	var  lv3state = $(".lv3state").text();//礼物3
		        	var  knowledge_Id = $(".knowledge_Id").text();//该科目中该章节id
		        	var  state = $(".state").text();//礼物领取状态
		        	/* alert("前台做题正确率："+percentage); 
		        	alert("前台正确题数："+correctnumber); */ 
		        	var jiexihuidiao = "zuowanti";
		        	storagexuanxian["queanswer"+knowledge_Id] = queanswer; //用户选择的答案
		        	storagexuanxian["answers"+knowledge_Id] = answers; //正确的答案
		        	var  kemuZYHXY  = $(".kemuZYHXY").text();
		        	console.log("正确答案："+storagexuanxian["answers"]);
		        	
		        	jiexizhu(correctnumber,percentage,time_s,subListname,nickname,openid,headimgurl,tixing,jiexihuidiao,days,dateTime,integral,lv1state,lv2state,lv3state,datalength,knowledge_Id,kemuZYHXY);    
        		}
        	}
        }  
        
          function  jiexizhu(correctnumber,percentage,time_s,subListname,nickname,openid,headimgurl,tixing,jiexihuidiao,days,dateTime,integral,lv1state,lv2state,lv3state,datalength,knowledge_Id,kemuZYHXY){
        	  window.location.href="../jingxuandetailspage/detailspage?correctnumber="+correctnumber+"&percentage="+percentage+"&int_second="+time_s+"&knowledge_Name="+subListname+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&tixing="+tixing+"&jiexihuidiao="+jiexihuidiao+"&days="+days+"&dateTime="+dateTime+"&integral="+integral+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"&datalength="+datalength+"&knowledge_Id="+knowledge_Id+"&kemuZYHXY="+kemuZYHXY+"";  
             }   
           
             
             
        function quedivshow() {
            var queid = $(".quediv").find(".active").prop("id");//获取到QueInIt循环中的提标div。设置一个变量，变量为div中的id
        }
        
        
        var  queanswer  = "";
        var  answerAnalysis6 = "";
        var  answerAnalysis7 = "";
        function bindoption(datalength) {//在QueInIt()方法中进行调用
            $(".queoption").click(function () {//获取到题目标签，给与点击时事件(这里是选择题点击事件，当点击选项的div后获取到div中的span标签给span标签追加一个类属性,实现span标签的选中后颜色变换效果)
            	/*  $(this).find(".optionspan").addClass("active"); */ //获取到题目span标签，添加一个class属性值。addClass() 方法向被选元素添加一个或多个类
                      /* var  types = $(".topic").text();//所有type的值  */
                  /*   var types = $(this).find(".optionspan").text();//获取到点击的那个选项 */
                    var  types = $(this).find(".topic").text();//在this下(可以理解为页面所有的元素)获取到装有type属性的div的文本文档
                    var  options = $(this).find(".optionspan").text();//获取到装有type属性值和选项值的div中的文本文档（type值和选项值(ABCDE)）
                    /* console.log("选择的选项："+options);  */
                    var  dataid = $(this).find(".optionspan").prop("id");//选项id
                   	var  que = $(this).find(".topic").prop("id");//当前div
                    var  answers  = $(this).find("#answer").prop("class");
                   	var  answerAnalysis = $(this).find("#answerAnalysis").prop("class");
                   	var  jiexilength  = $(this).find("#jiexigeshu").prop("class");//b型小题个数
                   	var  queoptions =$(this).find(".queoption").prop("id");
                   	var  DiBiao  = $(this).find(".DiBiao").prop("id");
                   	var  blength = $(this).find(".length").prop("id");//当前B型题的小题个数
                   	var  knowledge_Id = $(".knowledge_Id").text();//当前章节id
                   	var  questions_id = $(this).find(".questions_id").prop("id");//当前题目的id
                   	 /* alert("当前题目id："+questions_id); */ 
                   	 /* console.log("题目解析："+answerAnalysis);  */
                   	//最后选择的那道题
                   	locationABCDE["que"+knowledge_Id] = que;
                   	
                   //datalengths赋值
                   if(types == 2){//如果type为2
                		/* $(this).find(".optionspan").toggleClass("active"); *///jquery中toggleClass方法可以实现点击一下后在原有的class属性后面添加action属性，二次点击后删除action属性
                	   if(options == "2A"){
                		   if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
                			   $("[id = "+que+"2A]").removeClass("rightOK");
                			   locationcolor.removeItem(que+"2A"+knowledge_Id);
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							   locationcolor[que+"2A"+knowledge_Id] =  $("[id = "+que+"2A]").prop("class"); 
							}
						}
						if(options == "2B"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+que+"2B]").removeClass("rightOK");
								locationcolor.removeItem(que+"2B"+knowledge_Id);
							}else{
								$(this).find("#"+dataid).addClass("rightOK");
								locationcolor[que+"2B"+knowledge_Id] =  $("[id = "+que+"2B]").prop("class");
							}
						}
						if(options == "2C"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+que+"2C]").removeClass("rightOK");
								locationcolor.removeItem(que+"2C"+knowledge_Id);
							}else{
								$(this).find("#"+dataid).addClass("rightOK");
								locationcolor[que+"2C"+knowledge_Id] =  $("[id = "+que+"2C]").prop("class");
							}
						}
						if(options == "2D"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+que+"2D]").removeClass("rightOK");
								locationcolor.removeItem(que+"2D"+knowledge_Id);
							}else{
								$(this).find("#"+dataid).addClass("rightOK");
								locationcolor[que+"2D"+knowledge_Id] =  $("[id = "+que+"2D]").prop("class");
							}
						}
						if(options == "2E"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+que+"2E]").removeClass("rightOK");//移除e选项 
								locationcolor.removeItem(que+"2E"+knowledge_Id);
							}else{
								$(this).find("#"+dataid).addClass("rightOK");
								locationcolor[que+"2E"+knowledge_Id] =  $("[id = "+que+"2E]").prop("class");
							}
						}
                     }
					 if(types == 1){//如果type为1
						    if(options == "1A"){
								if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
									$("[id = "+que+"1A]").removeClass("rightOK");//移除a选项 
									locationcolor.removeItem(que+"1A"+knowledge_Id);
								}else{
								   $(this).find("#"+dataid).addClass("rightOK");
								   $("[id = "+que+"1B]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
								   $("[id = "+que+"1C]").removeClass("rightOK"); 
								   $("[id = "+que+"1D]").removeClass("rightOK"); 
								   $("[id = "+que+"1E]").removeClass("rightOK");
								   locationcolor[que+"1A"+knowledge_Id] =  $("[id = "+que+"1A]").prop("class");
								   locationcolor.removeItem(que+"1B"+knowledge_Id);
								   locationcolor.removeItem(que+"1C"+knowledge_Id);
								   locationcolor.removeItem(que+"1D"+knowledge_Id);
								   locationcolor.removeItem(que+"1E"+knowledge_Id);
								   /* console.log("选项的class属性："+$(this).find("#1A"+dataid).prop("class"));
						    	   console.log("id:"+$("[id!=1A"+dataid+"]").prop("id")); */
								}
							}
							if(options == "1B"){
								if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
									$("[id = "+que+"1B]").removeClass("rightOK"); 
									locationcolor.removeItem(que+"1B"+knowledge_Id);
								}else{
									$(this).find("#"+dataid).addClass("rightOK");
									$("[id = "+que+"1A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
									$("[id = "+que+"1C]").removeClass("rightOK");
									$("[id = "+que+"1D]").removeClass("rightOK");
									$("[id = "+que+"1E]").removeClass("rightOK");
									locationcolor[que+"1B"+knowledge_Id] =  $("[id = "+que+"1B]").prop("class");
									locationcolor.removeItem(que+"1A"+knowledge_Id);
									locationcolor.removeItem(que+"1C"+knowledge_Id);
									locationcolor.removeItem(que+"1D"+knowledge_Id);
									locationcolor.removeItem(que+"1E"+knowledge_Id);
								}
							}
							if(options == "1C"){
								if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
									$("[id = "+que+"1C]").removeClass("rightOK"); 
									locationcolor.removeItem(que+"1C"+knowledge_Id);
								}else{
									$(this).find("#"+dataid).addClass("rightOK");
									$("[id = "+que+"1A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
									$("[id = "+que+"1B]").removeClass("rightOK");
									$("[id = "+que+"1D]").removeClass("rightOK");
									$("[id = "+que+"1E]").removeClass("rightOK");
									locationcolor[que+"1C"+knowledge_Id] =  $("[id = "+que+"1C]").prop("class");
									locationcolor.removeItem(que+"1A"+knowledge_Id);
									locationcolor.removeItem(que+"1B"+knowledge_Id);
									locationcolor.removeItem(que+"1D"+knowledge_Id);
									locationcolor.removeItem(que+"1E"+knowledge_Id);
								}
							}
							if(options == "1D"){
								if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
									$("[id = "+que+"1D]").removeClass("rightOK");
									locationcolor.removeItem(que+"1D"+knowledge_Id);
								}else{
									$(this).find("#"+dataid).addClass("rightOK");
									$("[id = "+que+"1A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
									$("[id = "+que+"1B]").removeClass("rightOK"); 
									$("[id = "+que+"1C]").removeClass("rightOK"); 
									$("[id = "+que+"1E]").removeClass("rightOK"); 
									locationcolor[que+"1D"+knowledge_Id] =  $("[id = "+que+"1D]").prop("class");
									locationcolor.removeItem(que+"1A"+knowledge_Id);
									locationcolor.removeItem(que+"1B"+knowledge_Id);
									locationcolor.removeItem(que+"1C"+knowledge_Id);
									locationcolor.removeItem(que+"1E"+knowledge_Id);
								}
							}
							if(options == "1E"){
								if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
									$("[id = "+que+"1E]").removeClass("rightOK");
									locationcolor.removeItem(que+"1E"+knowledge_Id);
								}else{
									$(this).find("#"+dataid).addClass("rightOK");
									$("[id = "+que+"1A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
									$("[id = "+que+"1B]").removeClass("rightOK"); 
									$("[id = "+que+"1C]").removeClass("rightOK"); 
									$("[id = "+que+"1D]").removeClass("rightOK"); 
									locationcolor[que+"1E"+knowledge_Id] =  $("[id = "+que+"1E]").prop("class");
									locationcolor.removeItem(que+"1A"+knowledge_Id);
									locationcolor.removeItem(que+"1B"+knowledge_Id);
									locationcolor.removeItem(que+"1C"+knowledge_Id);
									locationcolor.removeItem(que+"1D"+knowledge_Id);
								}
							} 
					} 
						
					if(types == 6){//如果types等于6那么是b型题
						var dataidA=  dataid.replace("A","");//点击A选项去除A后的值(que+小题干数)que11
						console.log("dataidA的值："+dataidA);
						var dataidB=  dataid.replace("B","");//点击B选项去除B后的值
						var dataidC=  dataid.replace("C","");//点击C选项去除C后的值
						var dataidD=  dataid.replace("D","");//点击D选项去除D后的值
						var dataidE=  dataid.replace("E","");//点击E选项去除E后的值
					   if(options == "6A"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+dataid+"]").removeClass("rightOK");//移除a选项
								locationcolor.removeItem(dataidA+"6A");
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							   $("[id = "+dataidA+"B]").removeClass("rightOK");//$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
							   console.log("dataidb的值："+dataidA+"B");
							   $("[id = "+dataidA+"C]").removeClass("rightOK");
							   $("[id = "+dataidA+"D]").removeClass("rightOK");
							   $("[id = "+dataidA+"E]").removeClass("rightOK");
							   locationcolor[dataidA+"6A"] =  $("[id = "+dataid+"]").prop("class");
							   locationcolor.removeItem(dataidA+"6B");
							   locationcolor.removeItem(dataidA+"6C");
							   locationcolor.removeItem(dataidA+"6D");
							   locationcolor.removeItem(dataidA+"6E");
							}
						}
					   if(options == "6B"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+dataid+"]").removeClass("rightOK");//移除a选项 
								locationcolor.removeItem(dataidB+"6B");
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							   $("[id = "+dataidB+"A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
							   $("[id = "+dataidB+"C]").removeClass("rightOK"); 
							   $("[id = "+dataidB+"D]").removeClass("rightOK"); 
							   $("[id = "+dataidB+"E]").removeClass("rightOK");
							   locationcolor[dataidB+"6B"] =  $("[id = "+dataid+"]").prop("class");
							   locationcolor.removeItem(dataidB+"6A");
							   locationcolor.removeItem(dataidB+"6C");
							   locationcolor.removeItem(dataidB+"6D");
							   locationcolor.removeItem(dataidB+"6E");
							}
						}
					   if(options == "6C"){//
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+dataid+"]").removeClass("rightOK");//移除a选项 
								locationcolor.removeItem(dataidC+"6C");
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							   $("[id = "+dataidC+"A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
							   $("[id = "+dataidC+"B]").removeClass("rightOK"); 
							   $("[id = "+dataidC+"D]").removeClass("rightOK"); 
							   $("[id = "+dataidC+"E]").removeClass("rightOK"); 
							   locationcolor[dataidC+"6C"] =  $("[id = "+dataid+"]").prop("class");
							   locationcolor.removeItem(dataidC+"6A");
							   locationcolor.removeItem(dataidC+"6B");
							   locationcolor.removeItem(dataidC+"6D");
							   locationcolor.removeItem(dataidC+"6E");
							}
						}
					   if(options == "6D"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+dataid+"]").removeClass("rightOK");//移除a选项 
								locationcolor.removeItem(dataidD+"6D");
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							   $("[id = "+dataidD+"A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
							   $("[id = "+dataidD+"B]").removeClass("rightOK"); 
							   $("[id = "+dataidD+"C]").removeClass("rightOK"); 
							   $("[id = "+dataidD+"E]").removeClass("rightOK"); 
							   locationcolor[dataidD+"6D"] =  $("[id = "+dataid+"]").prop("class");
							   locationcolor.removeItem(dataidD+"6A"); 
							   locationcolor.removeItem(dataidD+"6B");
							   locationcolor.removeItem(dataidD+"6C");
							   locationcolor.removeItem(dataidD+"6E");
							}
						}
					   if(options == "6E"){//
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+dataid+"]").removeClass("rightOK");//移除a选项 
								locationcolor.removeItem(dataidE+"6D");
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							   $("[id = "+dataidE+"A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
							   $("[id = "+dataidE+"B]").removeClass("rightOK"); 
							   $("[id = "+dataidE+"C]").removeClass("rightOK"); 
							   $("[id = "+dataidE+"D]").removeClass("rightOK"); 
							   locationcolor[dataidE+"6E"] =  $("[id = "+dataid+"]").prop("class");
							   locationcolor.removeItem(dataidE+"6A");
							   locationcolor.removeItem(dataidE+"6B");
							   locationcolor.removeItem(dataidE+"6C");
							   locationcolor.removeItem(dataidE+"6D");
							}
						}
					   
					} 
					if(types == 7){
						var dataidA=  dataid.replace("A","");//点击A选项去除A后的值
						var dataidB=  dataid.replace("B","");//点击B选项去除B后的值
						var dataidC=  dataid.replace("C","");//点击C选项去除C后的值
						var dataidD=  dataid.replace("D","");//点击D选项去除D后的值
						var dataidE=  dataid.replace("E","");//点击E选项去除E后的值
						if(options == "7A"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+dataid+"]").removeClass("rightOK");//移除a选项 
								locationcolor.removeItem(dataidA+"7A");
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							   $("[id = "+dataidA+"B]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
							   $("[id = "+dataidA+"C]").removeClass("rightOK"); 
							   $("[id = "+dataidA+"D]").removeClass("rightOK"); 
							   $("[id = "+dataidA+"E]").removeClass("rightOK"); 
							   locationcolor[dataidA+"7A"] =  $("[id = "+dataid+"]").prop("class");
							   locationcolor.removeItem(dataidA+"7B");
							   locationcolor.removeItem(dataidA+"7C");
							   locationcolor.removeItem(dataidA+"7D");
							   locationcolor.removeItem(dataidA+"7E");
							}
						}
					   if(options == "7B"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+dataid+"]").removeClass("rightOK");//移除a选项 
								locationcolor.removeItem(dataidB+"7B");
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							   $("[id = "+dataidB+"A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
							   $("[id = "+dataidB+"C]").removeClass("rightOK"); 
							   $("[id = "+dataidB+"D]").removeClass("rightOK"); 
							   $("[id = "+dataidB+"E]").removeClass("rightOK");
							   locationcolor[dataidB+"7B"] =  $("[id = "+dataid+"]").prop("class");
							   locationcolor.removeItem(dataidB+"7A");
							   locationcolor.removeItem(dataidB+"7C");
							   locationcolor.removeItem(dataidB+"7D");
							   locationcolor.removeItem(dataidB+"7E");
							}
						}
					   if(options == "7C"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+dataid+"]").removeClass("rightOK");//移除a选项
								locationcolor.removeItem(dataidC+"7C");
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							   $("[id = "+dataidC+"A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
							   $("[id = "+dataidC+"B]").removeClass("rightOK");
							   $("[id = "+dataidC+"D]").removeClass("rightOK");
							   $("[id = "+dataidC+"E]").removeClass("rightOK"); 
							   locationcolor[dataidC+"7C"] =  $("[id = "+dataid+"]").prop("class");
							   locationcolor.removeItem(dataidC+"7A");
							   locationcolor.removeItem(dataidC+"7B");
							   locationcolor.removeItem(dataidC+"7D");
							   locationcolor.removeItem(dataidC+"7E");
							}
						}
					   if(options == "7D"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+dataid+"]").removeClass("rightOK");//移除a选项 
								locationcolor.removeItem(dataidD+"7D");
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							   $("[id = "+dataidD+"A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
							   $("[id = "+dataidD+"B]").removeClass("rightOK"); 
							   $("[id = "+dataidD+"C]").removeClass("rightOK"); 
							   $("[id = "+dataidD+"E]").removeClass("rightOK"); 
							   locationcolor[dataidD+"7D"] =  $("[id = "+dataid+"]").prop("class");
							   locationcolor.removeItem(dataidD+"7A");
							   locationcolor.removeItem(dataidD+"7B");
							   locationcolor.removeItem(dataidD+"7C");
							   locationcolor.removeItem(dataidD+"7D");
							}
						}
					   if(options == "7E"){
							if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
								$("[id = "+dataid+"]").removeClass("rightOK");//移除a选项 
								locationcolor.removeItem(dataidE+"7E");
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							   $("[id = "+dataidE+"A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
							   $("[id = "+dataidE+"B]").removeClass("rightOK"); 
							   $("[id = "+dataidE+"C]").removeClass("rightOK"); 
							   $("[id = "+dataidE+"D]").removeClass("rightOK"); 
							   locationcolor[dataidE+"7E"] = $("[id = "+dataid+"]").prop("class");
							   locationcolor.removeItem(dataidE+"7A");
							   locationcolor.removeItem(dataidE+"7B");
							   locationcolor.removeItem(dataidE+"7C");
							   locationcolor.removeItem(dataidE+"7D");
							}
						}
					}
					
					
					if(types == 1){//如果是单选题，就进入这个判断
	           			var	option = options.replace("1",""); //因为获取的选项值中带有type，因此去掉type值
	           			 for (var i = 1; i <= datalength; i++) {
	           				if("que"+i == $(this).find(".topic").prop("id")){//判断当前页面是哪个页面（哪道题）
	           					locationABCDE["answers"+i+knowledge_Id]  = $(this).find("#answer").prop("class");//本题正确答案
	           					locationABCDE["answerAnalysis"+i+knowledge_Id] = $(this).find("#answerAnalysis").prop("class");//本题解析
	           					locationABCDE["que"+i+knowledge_Id] = $(this).find(".topic").prop("id");//给当前页面的id赋值，用于判断选择是否正确
	           					doubleanswer1  = option;//会先给doubleanswer赋予选择的选项值
	           					 /* alert("单选选择的选项："+option);
	           					alert("i的值："+i);
	           					alert("科目id："+knowledge_Id);
	           					alert("当前选项值："+locationABCDE["que"+i+"answer"+knowledge_Id]); */ 
	           					onanswer = "a";
	           					if(option == locationABCDE["que"+i+"answer"+knowledge_Id]){//如果在次点击同一个选项，就移除que1answer和doubleanswer的值。因此他为空了是相等的，所以不会在重复添加
	               					locationABCDE["que"+i+"answer"+knowledge_Id] = locationABCDE["que"+i+"answer"+knowledge_Id].replace(option,"");//replace移除字符串中指定的字符。可以传入要移除字符的参数
	               					doubleanswer1 = doubleanswer1.replace(option,"");
	               					locationABCDE["que"+i+"answer"+questions_id] = locationABCDE["que"+i+"answer"+knowledge_Id];
	               				/* 	console.log("取消单选的选项"); */
	               					onanswer = "a";
	               					/* console.log("取消后的queianswerknowledge_Id值："+locationABCDE["que"+i+"answer"+knowledge_Id]); */
	               				}
	               				if(doubleanswer1 != locationABCDE["que"+i+"answer"+knowledge_Id]){//因为doubleanswer会先赋值因此正常情况下会比que1answer多一个值，只有在上面清除了值的情况下才会相等
	               					locationABCDE["que"+i+"answer"+knowledge_Id] = option;//将获取到的点击的选项的值(ABCD)，给与变量，用于答案比较
	               					console.log("赋值后的值："+locationABCDE["que"+i+"answer"+knowledge_Id]);
	               					locationABCDE["que"+i+"answer"+questions_id] = locationABCDE["que"+i+"answer"+knowledge_Id];
	               				}
	           				}
	           				  locationABCDE["que"+i+"answer"+knowledge_Id] =  locationABCDE["que"+i+"answer"+knowledge_Id];
	           				  locationABCDE["que"+i+"answer"+questions_id] = locationABCDE["que"+i+"answer"+knowledge_Id]               
	           				  onanswer  = locationABCDE["que"+i+"answer"+knowledge_Id];
	           			 }
	           		   }
	           		if(types == 2){//如果type为二，就是多选
	           			 var	option = options.replace("2",""); //先去除掉type的值
	           			for (var i = 1; i <= datalength; i++) {
	           			  if ("que"+i == $(this).find(".topic").prop("id")) {
	           			  	locationABCDE["answers"+i+knowledge_Id] = $(this).find("#answer").prop("class");//获取当前页面题目的真确答案
	           				locationABCDE["answerAnalysis"+i+knowledge_Id] = $(this).find("#answerAnalysis").prop("class");//本题解析
	           			    locationABCDE["que"+i+knowledge_Id] = $(this).find(".topic").prop("id");//获取当前页面id值，给与变量用于题目答案判断
	           			    if(ques != "que"+i){
	        					ques = "que"+i;
	        					doubleanswer2 = "";
	        					queanswer  = "";
	        				}
	           			    doubleanswer2  =  doubleanswer2 + option;//给与变量doubleanswer答案值，用于下面获取答案的判断
	           			    //不能直接用window["que"+i+"answer"]进行search比较的原因是window["que"+i+"answer"]开始时是未定义的数据不能直接比较
	           			    if(queanswer.search(option) != -1){//search方法用来判断字符串中某个字符是否存在，存在就不等于-1(这个时候变量里就有了传进去的数据，所以就)
	           			    	/* alert("清除"); */
	           			    	locationABCDE["que"+i+"answer"+knowledge_Id] = locationABCDE["que"+i+"answer"+knowledge_Id].replace(option,"");
	           					doubleanswer2 = doubleanswer2.replace(new RegExp(option,"gm"),"");
	           					queanswer = queanswer.replace(new RegExp(option,"gm"),"");
	           					if(locationABCDE["que"+i+"answer"+knowledge_Id] == null){
	           					    console.log("取多选的选项");
	           					}
	           				}
	           				  /*  alert("i的值："+i);  */ 
	           				/* alert("下一个多选的值："+locationABCDE["que"+i+"answer"+knowledge_Id]); */
	           			    if(doubleanswer2 != locationABCDE["que"+i+"answer"+knowledge_Id] && doubleanswer2 != null && doubleanswer2 != ""){//与上面类似
	           			    	/*  alert("进入添加值后初始值："+locationABCDE["que"+i+"answer"+knowledge_Id]);  */ 
	           			    	if(locationABCDE["que"+i+"answer"+knowledge_Id] == null){//window["que"+i+"answer"]没付值时是null
	           						locationABCDE["que"+i+"answer"+knowledge_Id] = option;
	           					}else {
	           						locationABCDE["que"+i+"answer"+knowledge_Id] = locationABCDE["que"+i+"answer"+knowledge_Id]+option;
	           						locationABCDE["que"+i+"answer"+knowledge_Id] = locationABCDE["que"+i+"answer"+knowledge_Id].replace("undefined","");
								}
	           					    queanswer = locationABCDE["que"+i+"answer"+knowledge_Id];
	           					}
	           			 		     locationABCDE["que"+i+"answer"+knowledge_Id] =  locationABCDE["que"+i+"answer"+knowledge_Id];
	           			 		     onanswer = locationABCDE["que"+i+"answer"+knowledge_Id];
	           			  	 }
						 }
	           		   }
	            	 if(types == 6){//等于6那么就是B型题//B型题如果没有把所有小题做完就默认是没做
	            		var	option = options.replace("6",""); //先去除掉type的值(去掉6之后就是选项ABCDE等)
	            		/* var  dataidDiBiao  =  dataid.replace(option,""); */
	            		for (var i = 1; i <= datalength; i++) {
	          			 if ("que"+i == $(this).find(".topic").prop("id")){//如果点击的当前的div是
	          			     if(ques != $(this).find(".topic").prop("id")){
	          			    	queianswerf  =  [];
	          			    	ques = "";
	          			    	answerAnalysis6 = "";
	          			     }
	          			   locationABCDE["answers"+i+knowledge_Id] = $(this).find("#answer").prop("class");//获取当前页面题目的真确答案
	          			   answerAnalysis6 = answerAnalysis6 + $(this).find("#answerAnalysis").prop("class"); 
	          			   locationABCDE["answerAnalysis"+i+knowledge_Id] = answerAnalysis6 //本题解析
	          			   locationABCDE["que"+i+knowledge_Id] = $(this).find(".topic").prop("id");//获取当前页面id值，给与变量用于题目答案判断
	          			   doubleanswer6  =   option;  //会先给doubleanswer赋予选择的选项值
	          			   if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
		          				 if(locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] == null){
		          					locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] = option;
		       						DiBiaos = DiBiao;
		       					    dataids = dataid;//dataid是当前点击的选项的id*/
		       					 	ques =  $(this).find(".topic").prop("id"); 
		       					  }else{
		       						  if(DiBiaos == DiBiao  && dataids != dataid){
		       							locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] =  option;
		       						    ques =  $(this).find(".topic").prop("id");
		       							/* alert("同一道题的选项变化："+window["que"+i+"answer"+DiBiao]) */
		       						   }
		       						  if(DiBiaos != DiBiao && dataids != dataid  && locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] != null){
		       							locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] =  option;
		       							 ques =  $(this).find(".topic").prop("id");  
		       							/* alert("不是同一道题的选项变化："+window["que"+i+"answer"+DiBiao]) */
		       						  }
		       						dataids = dataid;
		       						DiBiaos = DiBiao;
								  }
		          			}else if($(this).find("#"+dataid).prop("class") != "optionspan rightOK"){
		          				 locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] = locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id].replace(option,"");
		          				 /* alert("删除掉一个选项："+ window["que"+i+"answer"+DiBiao]) */
		          					doubleanswer6 = "";
		          					dataids = "";
		          					DiBiaos = "";
		          					queianswerf  =  [];
		          					locationABCDE["que"+i+"answer"+knowledge_Id] = "";
							}
	          			 	queianswerf[DiBiao-1]  =  locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id]
	          			    /*  alert("queianswerf值"+queianswerf[DiBiao-1]);  */
	          			     if(queianswerf.length == blength){//如果数组的长度与此b型题长度相同说明说以题都选了
	          			    	 /* alert("数组长度等于小题长度"); */
	          			    	 locationABCDE["que"+i+"answer"+knowledge_Id] = "";//定义一个数据变量
	          			    	for(var s = 0;s<queianswerf.length;s++){
		          			 		   queianswerf[s];//循环出数组
		          			 	 if(queianswerf[s] == null){//如果数组中有数值是空的直接结束循序（防止用户先选择顺序随意）
		          			 			return;
		          			 		} 
		          			 	}
	          			    	for(var j = 0;j< blength;j++){//如果数组的值中没有空值
	          			    		locationABCDE["que"+i+"answer"+knowledge_Id] += queianswerf[j];//循环将数组给与变量
	          			    		onanswer = locationABCDE["que"+i+"answer"+knowledge_Id];
	          			    		locationABCDE["que"+i+"answer"+questions_id] = onanswer;
		          			     }
	          			     }
	          			   /*    alert("window值"+window["que"+i+"answer"]);   */   
	          			  locationABCDE["que"+i+"answer"+knowledge_Id] =  locationABCDE["que"+i+"answer"+knowledge_Id];
	          			  locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] = "";
	          			  }
	            		}	
	            	} 
	            	
	            	 if(types == 7){//等于7那么就是综合题//综合型题如果没有把所有小题做完就默认是没做
		            		var	option = options.replace("7",""); //先去除掉type的值(去掉7之后就是选项ABCDE等)
		            		for (var i = 1; i <= datalength; i++) {
		          			 if ("que"+i == $(this).find(".topic").prop("id")){//如果点击的当前的div是
		          				if(ques != $(this).find(".topic").prop("id")){
		          				 	queianswerf = [];
		          				 	quesz = "";
		          				 	answerAnalysis7 = "";
		          			  	 } 
		          				locationABCDE["answers"+i+knowledge_Id] = $(this).find("#answer").prop("class");//获取当前页面题目的真确答案
		          				locationABCDE["answerAnalysis"+i+knowledge_Id] = $(this).find("#answerAnalysis").prop("class");//本题解析
		          			    answerAnalysis7 = answerAnalysis7 + $(this).find("#answerAnalysis").prop("class"); 
			          			locationABCDE["answerAnalysis"+i+knowledge_Id] = answerAnalysis7 //本题解析
		          				locationABCDE["que"+i+knowledge_Id] = $(this).find(".topic").prop("id");//获取当前页面id值，给与变量用于题目答案判断
		          			   doubleanswer6  =   option;  //会先给doubleanswer赋予选择的选项值
		          			   if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
			          				 if(locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] == null){
			          					locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] = option;
			       						DiBiaozonhes = DiBiao;
			       						dataidzonhes = dataid;//dataid是当前点击的选项的id */
			       						ques =  $(this).find(".topic").prop("id");
			       						/* alert("添加后的queanswerDiBiaozonhes值："+window["que"+i+"answer"+DiBiao]); */
			       					  }else{
			       						  if(DiBiaozonhes == DiBiao  && dataidzonhes != dataid){
			       							locationABCDE["que"+i+"answer"+DiBiaozonhes+knowledge_Id] =  option;
			       							ques =  $(this).find(".topic").prop("id");
			       							/* alert("同一道题的选项变化："+window["que"+i+"answer"+DiBiao])  */
			       						   }
			       						  if(DiBiaozonhes != DiBiao && dataidzonhes != dataid  && locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] != null){
			       							locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] =  option;
			       							ques =  $(this).find(".topic").prop("id");
			       							/* alert("不是同一道题的选项变化："+window["que"+i+"answer"+DiBiao])  */
			       						  }
			       						dataidzonhes = dataid;
			       						DiBiaozonhes = DiBiao;
									  }
			          			}else if($(this).find("#"+dataid).prop("class") != "optionspan rightOK"){
			          				locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] = locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id].replace(option,"");
			          					 /* alert("删除掉一个选项："+ window["que"+i+"answer"+DiBiao])  */
			          					doubleanswer6 = "";
			          					dataidzonhes = "";
			          					DiBiaozonhes = "";
			          					queianswerf  =  [];
			          					locationABCDE["que"+i+"answer"+knowledge_Id] = "";
								}
		          			 queianswerzh[DiBiao-1] = locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id]
		          			    /*  alert("queianswerf值"+queianswerf[DiBiao-1]);  */
		          			     if(queianswerzh.length == blength){
		          			    	locationABCDE["que"+i+"answer"+knowledge_Id] = "";
		          			    	for(var s = 0;s<queianswerzh.length;s++){
		          			    		queianswerzh[s];
			          			 		if(queianswerzh[s] == null){
			          			 			return;//如果发现数组里面有空值就结束程序（不在把数据附给变量）
			          			 		}
			          			 	}
		          			    	for(var j = 0;j< blength;j++){
		          			    		locationABCDE["que"+i+"answer"+knowledge_Id] += queianswerzh[j];
		          			    		onanswer = locationABCDE["que"+i+"answer"+knowledge_Id];
		          			    		locationABCDE["que"+i+"answer"+questions_id] = onanswer;
			          			     } 
		          			     }  
		          			      /*  alert("window值"+window["que"+i+"answer"]); */
		          				locationABCDE["que"+i+"answer"+knowledge_Id] =  locationABCDE["que"+i+"answer"+knowledge_Id];
		          			    locationABCDE["que"+i+"answer"+DiBiao+knowledge_Id] = "";
		          			  }
		            		}	
		            	} 
					
           		 });
        	}
        
        //时间计数器
        var int_second = 0;//设置时间变量，从0开始（做题所花费的时间）
        function show_time() {//上面fcuntion中调用的方法，在页面加载时加载
        	var self = this;
           /*  setTimeout('show_time()', 1000);//setTimeout是延时定时器 表示里面的函数500毫秒后执行 而且就只会执行一次 */
           self.practice = setInterval(() =>{
               var  minute = 0, second = 0;
               /*  hour=parseInt(int_second/60/60); */
                minute=parseInt(int_second/60%60);
                second=parseInt(int_second%60);
               /* $('#time_s').html(self.toDouble(hour)+":"+self.toDouble(minute)+":"+self.toDouble(second)); */
                $('#time_s').html(self.toDouble(minute)+":"+self.toDouble(second)); //获取时间显示标签，在html页面显示时间
                int_second++; 
           }, 1000);
        } 
        
        function toDouble(num){
            if(num < 10){
                return '0'+ num;
            }else{
                return '' + num;
            }
        }
        
        
        //上一题下一题按钮点击事件
       /*  function btnbindclick() { *///在QueInIt()方法中农调用此方法
       $(".btnanniu").click(function () {//用选择器获取到上一题按钮，给与点击事件
    	  		
    	   /* console.log(Dpages); */
        		quepageFun(this);//调用上一题下一题实现方法
            });
        /* } */
        
     	var  dataidq;
        var  knowledge_Nameq;
        var  datasq;
        var  datalengthq;
        var  pagesq;
        var  Dpagesq;
        var  queidst = "";
        var  queids = "";
        var  knowledge_Ids = "";
        var  quetumuids = "";
        var  datalengths;//该章节下的题目总数
        
        
         function quepageFun(btnpageobj){//
        	var  dataid = dataidq;
        	var  knowledge_Name = knowledge_Nameq;
            var  datas = datasq;
        	var  datalength = datalengthq;
        	var  pages = pagesq; 
        	var  page = $(btnpageobj).prop("page");//设置变量，获取页面中所有page属性，变量值为page属性值（0,1,2,3等）,初始值为空
        	var  Dpage = $(btnpageobj).prop("id");//id的值（上一题或下一题）(点击上一页时就已经Lpage)
            var  onpage = page - 1;
            var  knowledge_Id = $(".knowledge_Id").text();
            var  openid = $(".openid").text();
            var  kemu = $(".kemu").text();
      		var is = page + 1;
      	    var  bizi  = is/datalengths;//以做题数与总题数的比值 
      	    if(bizi >= 0.05){//如果比值大于或等于0.01，要求购买
      		    //进行用户是否付费查询（如果已经付费可做后面所有题，如果没有给与提示）
      	    	 /* $.ajax({查询用户表中是否以有付款记录
					 	 url:'../timushocang/timushocangshuanchu',
					 	 dataType:'json',
					 	 type:'post',
					 	 data:{openid:openid,knowledge_Id:knowledge_Ids,questions_id:quetumuids,kemu:kemu},  
					 	 success:function(data){
					 			 if(data.type == "error"){
					 		 	  console.log("给与提示");
					 		 	var layerindex=layer.confirm('购买题库后可完整做题!', 
										{		
									      title:'提醒',
										btn: ['购买'] //按钮
										}, function(){
									  	 layer.close(layerindex);//弹框消失
									  	 //购买完成后创建一个缓存值
									  	 //locationquestions_id["gomai"+knowledge_Id] = knowledge_Id;
									}); 
					 		   }else if(data.type == "success"){
					 			  //如果存在购买记录，直接给与一个缓存值
								   //locationquestions_id["gomai"+knowledge_Id] = knowledge_Id;
							  }
					 	}
					 }) */
      	    	//给与提示
      		var layerindex=layer.confirm('购买题库后可完整做题!', 
					{		
				      title:'提醒',
					btn: ['购买'] //按钮
					}, function(){
				  	 layer.close(layerindex);//弹框消失
				  	 //购买完成后创建一个缓存值
				  	 //locationquestions_id["gomai"+knowledge_Id] = knowledge_Id;
				}); 
      		 return;
      	   } 
            
           /*  alert("onpage的值："+onpage); */
        	$("#rowjiexi").css("display","none");
        	// locationABCDE["que"+onpage+"answer"+knowledge_Id]数据在没有定义时是null，定义时不赋值或去掉值值就会变为 undefined或空（""）
          if(locationABCDE["que"+onpage+"answer"+knowledge_Id] == null  &&  Dpage == "Dpage"  || locationABCDE["que"+onpage+"answer"+knowledge_Id] == "undefined" &&   Dpage == "Dpage" || locationABCDE["que"+onpage+"answer"+knowledge_Id] == "" &&  Dpage == "Dpage" ){
        	    console.log("进入提示后onpage的值："+onpage); 
 					var layerindex=layer.confirm('您这道题还没有做完!', 
								{
							      title:'提醒',
								btn: ['继续做题'] //按钮
								}, function(){
							layer.close(layerindex);//弹框消失
						}); 
      				   
      		 			
    				return;
      		 } 
  	        	
        	   
        	  if(pages !=  null && Dpage == "Dpage"){
  	        		console.log("不想等加一");
  	        		var  i = "1";
  	        		var  i1 = parseInt(i);
  	        		page =  parseInt(pages)  + i1 ;
  	        		pagesq = null;
  	        	}else if(pages !=  null && Dpage == "Lpage"){
  	        		page =  parseInt(pages);
  	        		pagesq = null;
  	        	}else{
  	        		var  page = $(btnpageobj).prop("page");//设置变量，获取页面中所有page属性，变量值为page属性值（0,1,2,3等）,初始值为空
  	        	}
  	        	
  	            var  bpage = parseInt(page) + 1;
  	        	
  	            if(bpage == datalength + 2){
  	            	 Jexi(knowledge_Name,datas,datalength);//当bpage为7时说明已经是第五到题了，后面已经没有题目了这时就执行Jexi方法，将选择的数据传给解析页面。
  	            	 return;//执行完Jexi函数后直接return掉，结束函数，不在执行后面的代码（这样就不会在显示一个没有题目的做题页面）
  	            }  
  	           
  	            
  	            /* var size = $("#comlcount"); *///获取到span标签text本值（当前题数） 
  	            if ($(btnpageobj).prop("id") == "Lpage") {//$(this)用来判断页面中的每一个元素，prop获取到标签的id属性。判断页面中的每一个元素id是否为Lpage（上一页按钮）
  	            /* 	console.log("判断"); */
  	            	page = page - 1;//如果标签的page属性为Lpage那么说明他是上一页，那每点击一下page值就减一
  	            	console.log("判断中page的值："+page);
  	            }
  	            $(".quediv").hide();//隐藏上一个题目页面(5个div盒子页面通过padding进行了定位，5个盒子层叠在了一起)
  	            if (page <= 0) {//如果页面的page值小于0
  	                page = 1;//那就将page值设置为1
  	                console.log("判断后page的值："+page);
  	            }					//这时的初始值就是0
  				/* console.log("queid："+dataid); */
  	            var queid = dataid[parseInt(page - 1)];//设置date的id属性为queid（将page的值作为data json数据的角标值,从而根据页数来判断是哪一页）
  	            queids = queid;//当前点击的是第几到题
  	            var  is = queids.replace("que","");
  	            var i = is - 1;
				//当点击下一页后对上题的答案进行比较判断，如果答题错误就将数据存储进错题库中
				var  quetumuid = $("."+queid+"knowledge_Id").prop("id");//当前题目的id
				/* console.log("题目id："+quetumuid); */ 
				quetumuids = quetumuid;
  	            var  knowledge_Id = $(".knowledge_Id").text();//章节id
  	            knowledge_Ids  = knowledge_Id;
  	            
  	            /* alert("当前题目id："+quetumuid); */
  	          //对id进行比较，如果相同说明存在，点亮星星，如果不相同去掉星星
  	               $.ajax({// 
  						 	url:'../timushocang/chaxuenshuoyshocangtimu',
  						  dataType:'json',
  						  type:'post',
  						  data:{openid:openid,questions_id:quetumuid},  
  						  success:function(data){
  						  	 if(data.type == "success"){
  								 	   console.log("有数据点亮");
  								 	   $("ul li").addClass('hs');
  						        	   $("#shocang").addClass("shocangyangshe");
  									}
  						     if(data.type == "error"){
  						    		   console.log("没有数据取消");
  						    		   $("ul li").removeClass('hs');
				        	   		   $("#shocang").removeClass("shocangyangshe");
  						     	}
  							}
  				     }); 
  	            
  	            
  	           //////////////////////////////////
  	           	/* locationABCDE["answerAnalysis"+i+knowledge_Id] 
  	            locationABCDE["que"+i+"answer"+knowledge_Id] */
  	        	   if(locationABCDE["que"+i+"answer"+knowledge_Id] != null && locationABCDE["que"+i+"answer"+knowledge_Id] != "null"){
						if(locationABCDE["answers"+i+knowledge_Id] != Array.from(locationABCDE["que"+i+"answer"+knowledge_Id]).sort().join("")){//排序后进行比较
							/* alert("科目类型："+kemu); */
								/* alert("答错题进入"); */
								//如果不相等，使用题目id去题库中查出题目信息，将题目数据存入数据库中去(在后台会进行判断，如果错题库中已经有了该题目信息，那么将不在进行数据储存)
								   $.ajax({
										url:'../cuoticucuen/cuoticucuen',
										dataType:'json',
										type:'post',
										data:{openid:openid,knowledge_Id:knowledge_Id,questions_id:quetumuid,kemu:kemu},  
										success:function(data){
											if(data.type == "success"){
												locationABCDE["cuoti"+i+knowledge_Id]  =  "已储存";
												console.log("错题存储成功");
											}
										}
									});
						
						}  	            	
           		 } 
  	            /////////////////
  	            
  	            var size  = parseInt(page);//上面的角标值就是页码数，将角标值给与一个变量
  				$("#comlcount").text(size);//将页码值给与题数显示span标签//$("#comlcount").text(size)是jquery给与span的标签文本文件的方法
  				var  width = 1/datalength*100;//进度条初始值为1除以总数乘以100
  				var  widths = width*size;//每页进度占比等于初始值乘以页码
  				$("#progress").css("width",widths + "%");//通过字符串拼接的方式给进度条宽度赋值		
  				
  	            var upage = page;//定义一个变量upage值就是上面获取到的页面所有page属性值
  	            var dpage = parseInt(page) + 1;//设置变量dpage，变量值为页面page属性（页码）的值加一
  				$("#" + queid).show();//根据data中id的值来显示题目页面。$("#" + queid)选择器拼接方法
  				window.scrollTo({//设置页面刷新时，垂直滚动条置顶
  				    top: 0, 
  				    behavior: "smooth" 
  				});
  	            if (upage <= 1){//如果属性值小于一
  	                $("#Lpage").hide();//隐藏上一页的按钮
  	            } else {
  	                $("#Lpage").show();//否则显示上一页按钮
  	            }
  	            if (dpage > dataid.length) {//如果dpage的长短大于data json数据的长度.也就是说后面没有题了
  	                $("#Dpage").html("交卷");//如果后面没题了，就改变下一页按钮的提示文字为交卷
  	                $("#Dpage").addClass("btn-warning");//改变交卷按钮颜色
  	                	
  	            } else {
  	                $("#Dpage").show();//否则下一页按钮显示
  	                $("#Dpage").html("下一题");//否则内容一致是下一题
  	                $("#Dpage").removeClass("btn-warning");//否则移除给交卷按钮追加的按钮颜色
  	            }
  	            	$("#Lpage").prop("page", upage);//获取到上一页按钮的page属性，将上面upage的值附给上一页按钮的page属性
  	            	$("#Dpage").prop("page", dpage);//获取到上一页按钮的page属性，将上面dpage的值附给下一页按钮的page属性
	            
        }
         $(".btnjiexi").click(function () {//点击之后就执行下面的方法
      	   	/* console.log(Dpages); */
          		  jiexi();//调用上一题下一题实现方法
              });
         
     //查看答案解析（当前这到题答完后点击查看答案可显示答案）
     function jiexi(){
    	/*  alert("进入解析按钮");
    	 alert("queid的值："+queids); */
     	 var  knowledge_Id = $(".knowledge_Id").text(); //获取到题型数据（后台传入 的json数据）
     	 var  i = queids.replace("que","");
     	 /* alert("现在的题目数："+i); */
    	 	//如果这道题没有答，那么给与提示 
    	 if(locationABCDE["que"+i+"answer"+knowledge_Id] == null  || locationABCDE["que"+i+"answer"+knowledge_Id] == "undefined" || locationABCDE["que"+i+"answer"+knowledge_Id] == "" ){
        	 /*   console.log("进入提示后onpage的值："+onpage); */
 					var layerindex=layer.confirm('您这道题还没有做完!', 
								{
							      title:'提醒',
								  btn: ['继续做题'] //按钮
								}, function(){
							layer.close(layerindex);//弹框消失
						}); 
      				   
      		 			
    				return;
      			  }else {
      				/* alert("有答题记录"); */
      				$("#rowjiexi").css("display","block");
      				$("#my").text(locationABCDE["que"+i+"answer"+knowledge_Id]);
    				$("#correct").text( locationABCDE["answers"+i+knowledge_Id]);
      			    $("#cankaojiexi").text(locationABCDE["answerAnalysis"+i+knowledge_Id]);
				}
     		}
 			       
          
        
     
			    //点击收藏按钮，收藏题目
			     $(function(){
			        $(".shocan").click(function () {
			        	var  classzhi = $("ul  li").attr("class");
				        	if(classzhi == null || classzhi == ""){
					        	$("ul li").addClass('hs');
					        	$("#shocang").addClass("shocangyangshe");
						           //将题目信息存入收藏题库中
						         var  kemu = $(".kemu").text();
						         var  openid = $(".openid").text();
						      	 $.ajax({
						 		 url:'../timushocang/timushocang',
						 		 dataType:'json',
						 		 type:'post',
						 		 data:{openid:openid,knowledge_Id:knowledge_Ids,questions_id:quetumuids,kemu:kemu},  
						 		 success:function(data){
						 				 if(data.type == "success"){
						 		 			console.log("错题存储成功");
						 		 			layer.msg("收藏成功",{icon:1});
						 		 	    }
						 		 	}
						 			});
				        	}else{//在点击收藏后，再次点击取消收藏，删除收藏表中已存在的题目信息
				        	   		  $("ul li").removeClass('hs');
				        	   		  $("#shocang").removeClass("shocangyangshe");
				        	   		  var  kemu = $(".kemu").text();
							          var  openid = $(".openid").text();
				        	   		  $.ajax({
								 		 url:'../timushocang/timushocangshuanchu',
								 		 dataType:'json',
								 		 type:'post',
								 		 data:{openid:openid,knowledge_Id:knowledge_Ids,questions_id:quetumuids,kemu:kemu},  
								 		 success:function(data){
								 				 if(data.type == "success"){
								 		 			console.log("删除成功");
								 		 			layer.msg("取消收藏",{icon:1});
								 		 	     }
								 		 	  }
								 			});//
				        			  /* alert("删除class");  */
				        			//删除收藏库中的题目数据
								}
			                 
			             });  
			        })
			    
			   //点击答题卡
			    function  datika(){//
			    	var kemuZYHXY = $(".kemuZYHXY").text();
			    	var kemu = $(".kemu").text();
			    	/* alert("科目："+kemu);  */
			        window.location.href="../tfcpractice/datika?openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"&knowledge_Id="+knowledge_Id+"&kemuZYHXY="+kemuZYHXY+"&kemu="+kemu+""; 
			    } 
			    
			    
			    
			    
			  //点击进入直播视频
			  function  shipin(){
				  
			    	 window.location.href="https://ke.qq.com/webcourse/index.html#cid=478537&term_id=100573496&taid=10760276056427849";  
			    }
			  
			  
			 //点击首页
			 function  shoye(){
				 /*alert("首页"); */
				 	window.location.href="../tiaozhuankonzhi/tiaozhuankonzhi?openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""; 
			 }
        		
			 
			//点击我的
			function  my(){
				//进入我的信息页面
					window.location.href="../tiaozhuankonzhi/my?openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""; 
			}
			
    </script>

</body>
</html>