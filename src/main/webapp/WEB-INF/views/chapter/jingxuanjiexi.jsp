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
    <title>题目解析</title>
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
            margin-bottom: 50px;
        }

            .btndiv .btnanniu {
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
        .quediv .queoption .rightError {
                    background: #FF4500;
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
       .queanswer{
       		display: none;
        }
       .answers{
       		display: none;
         }
         .correctnumber{
         	display: none;
         }
       #cankaojiexi{
               font-size:15px;
           	   padding-top:7px;
           	   margin-left:35px; 
          }
         #jiexipage{
               padding-top:15px;
          }
       #myanswer{
           	   font-size:15px;
           	   font-weight:550;
           	   padding-top:7px;
           	   padding-bottom:7px;
           	   /* margin-left:135px;
           	   margin-bottom:50px; */
           }
       #my{
            	color:#32CD32;
            }  
         #correct{
            	color:#32CD32;
            } 
     #rowjiexi{
           		background-color: 	#FFFFFF;
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
      #jiexi{
               font-size:15px;
           	   font-weight:550;
           	   padding-top:7px;
           	    margin-left:35px; 
            }
      .knowledge_Id{
       		display: none;
        }
      .dayss{
      	   display:none;
       }
      .percentage{
      	  display:none;
       }
     .tixing{
     	display: none;
      }
     .kemuZYHXY{
     	display: none;
     }
    </style>
</head>

<body>
    <div class="bgcolor container">
    		<div class="tixing">${tixing}</div>
    		<div class="knowledge_Id">${knowledge_Id}</div>
    		 <div class="kemuZYHXY">${kemuZYHXY}</div>
    		<span class="queanswer">${queanswer}</span>
			<span class="answers">${answers}</span>
			<div class="nickname">${nickname}</div>
			<div class="openid">${openid}</div>
			<div class="headimgurl">${headimgurl}</div>
			<div class="correctnumber">${correctnumber}</div>
			<div class="percentage">${percentage}</div>
			<div  class="dayss">${days}</div>
			<div  class="integral">${integral}</div><!-- 累计积分 -->
			<div  class="dateTime">${dateTime}</div>
			<div  class="lv1state">${lv1state}</div><!-- 礼物领取状态 -->
			<div  class="lv2state">${lv2state}</div><!-- 礼物领取状态 -->
			<div  class="lv3state">${lv3state}</div><!-- 礼物领取状态 -->
        <div class='row '>
            <div class='quehead'>
                <div class='col-xs-3 headcount'>
                     <span id="comlcount" >1</span>/<span><span class="number">${datalength}</span></span>题 
                </div>
                <div class='col-xs-5'>
                    <div class='headsubject'><span id="subLists">${subList}</span></div>
                </div>
                <div class='col-xs-4'>				<!-- 前台计时 -->
                    <div class='headtime'><span>用时：<span id='int_second'>${int_second}</span></span></div>
                </div>
                <div class='col-xs-12 mt10'>
                    <div style='width:90%; margin:0 auto;'><!-- 设置div进度条的宽度占比 -->
                        <div class='progress'>
                            <div class='progress-bar' role='progressbar' aria-valuenow='60'
                                 aria-valuemin='0' aria-valuemax='100' style='width: 20%;background-color:#3cadfb;'  id="progress"><!--这里的div的style属性设置进度条颜色的占比 -->
                                <span class='sr-only'>100% 完成</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <!-- 题目显示框 -->
        <div class='row quelist '>
        		
        </div>
        <!-- 题目解析显示 -->
        <div class='row' id="rowjiexi">
        	<div class='row'>
        		<div class="col-xs-5" id="correctanswer">正确答案：<span  id="correct"></span></div>
        		<div class="col-xs-5" id="myanswer">我的答案：<span id="my"></span></div> 
        	</div>
        	<div class="divider"></div>
        	<div class="row">
        		<div class="col-xs-6" id="jiexi">参考解析:</div>
        	</div> 
        	<div class='row'>
        		<div class="col-xs-10" id="cankaojiexi"></div>
        	</div> 
        </div>
        
        <div class='row'  id="jiexipage">
            <div class="btndiv ">
                <div class="row">
                    <div class="col-xs-6">
                        <div page="" id="Lpage" class="btn btn-primary btnanniu">上一题</div>
                    </div>
                    <div class="col-xs-6">
                        <div page="" id="Dpage" class="btn btn-primary btnanniu col-xs-6">下一题</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
	 <script type="text/javascript" src="../resources/admin/js/alertPopShowprac.js"></script>
	 <script>
	 String.prototype.replaceAll = function (s1, s2) {//定义一个replaceAll方法，因为juqery中没有没有全部替换的方法，因此需要自己定义一个方法
         return this.replace(new RegExp(s1, "gm"), s2);
     }
    //页面加载时就会加载这个函数，然后会调用下面的方法
        
      
      
      $(function () {
        	var  knowledge_Id = $(".knowledge_Id").text(); //获取到题型数据（后台传入 的json数据）
        	var  kemuZYHXY = $(".kemuZYHXY").text();
		 	 /* console.log("题目id："+knowledge_Id);  */  
        	/* alert("kemuZYHXY："+kemuZYHXY); */ 
      		
        	ajaxjson(knowledge_Id,kemuZYHXY);
            
        });
        
        //选项的个数
        var  count=0;
         function getStrCountarmstr(abcdeq,armstr) {//scrstr 源字符串 armstr 特殊字符
       	  /* alert("进入函数"); */
            while(abcdeq.indexOf(armstr) != -1 ) {
           	 /* alert("选项个数："+count); */
           	 abcdeq = abcdeq.replace(armstr,"") 
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
							/* alert("回调成功");  */
							var  datajson  = data.datas;//获取到后台回调回来的json数据
							var  datas  =  JSON.parse(datajson);//转化为对象
							  /* console.log("题目个数："+datas.length);  */
						 	/* 	console.log("题目数据："+datajson); */
							/* console.log("第四个b型题的score值："+datas[3].questions_Type);   */ 
							/* var  questions_json0  = JSON.parse(datas[0].questions_json); *///将数据中的questions_json数据装换为对象
							var optiondata = ["A", "B", "C", "D", "E", "F", "G"];
							/* var dataid = ["que1","que2","que3","que4","que5"]; */
							var chooses  = ["【多选】","【单选】","【多选】"];
							var knowledge_Name = datas[0].knowledge_Name;
							var dataid = []; //定义一个数组
							var que = "que";//定义一个变量用于拼接id
							for(var i = 1 ;i <= datas.length;i++){
								dataid[i - 1] = que + i ;//因为是从第一个开始的，当i等于2 时数组角标就要减一
							} 
							var  datalength = datas.length;//题目的长度（也就是题目个数）
							$(".number").text(datalength);
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
            	 var   titles = questions_json.title;
            	//根据questions_Type判断题型类型（1单选，2多选）
            	 if(item.questions_Type == 1 || item.questions_Type == 2){
     		             questrhtml += "<div class= \"quediv  col-xs-12\"    id=\"" + dataid[i] + "\" ><div class=\"quetitle\"  id=\""+questions_json.answer+"\"><div id=\"chapter\">"+item.knowledge_Name+" :</div><span  class=\"choose\">"+chooses[item.questions_Type]+"</span>" + questions_json.title + "</div><div>";//item.id将id插入，item.title 中间插入提标
                   $.each(questions_json.options,function (x, option) {
                         questrhtml += "<div class=\"queoption\"   tag=\"" + optiondata[x]+ "\"><span class=\"optionspan\"  id=\""+dataid[i]+optiondata[x]+"option\" ><div  class=\"topic\"  id=\"" + dataid[i] + "\" ><div  id=\"answer\"  class=\""+questions_json.answer+"\"  tag=\"" + optiondata[x]  + "\"></div>"+item.questions_Type+"</div>" + optiondata[x] + "</span>" 
                         + option + "</div>";//optiondata是设置选项数组，用角标循环出来。option是data里定义的题目内容						//id，itmetype，abcd
                     });
                   	   questrhtml += "</div></div>";
            	 }else  if(item.questions_Type == 6){//b型题
            		 var  questions_Jsons = datas[i].questions_json.replaceAll("<label class='annex' >", "<img  class='imgs'  src='").replaceAll("</label>", "'/>");
      		         var  questions_Json = JSON.parse(questions_Jsons);
            		 var  answerAnalysis =  questions_Json.answerAnalysis;//拿出第三道题的answerAnalysis值,是个字符串
                     var  answerAnalysisbx = JSON.parse(answerAnalysis);//转换为对象 
                     var  abcdsz = [];//定义一个数组
                     var  abcde =  JSON.stringify(questions_Json.title);//将b型题的答案选择转换为json数据
                     var  abcdeq =  abcde.replace(new RegExp(abcde[0],"gm"),"");//将字符串中的双引号替换为空
                     var  tixingwB = "B型题: ";
                     if(abcdeq.search("http") != -1){
                             abcdsz[0] = abcdeq;//将分割出来的字符串拿出来一个个添加进数组中
                     }else {
                    	 var  armstr = ":";
                    	 getStrCountarmstr(abcdeq,armstr);
                    	 for(var k = 0;k<count;k++){//将选项循环拿出给与数组
                            	var abcdf = abcdeq.split(" ");//将字符串以空格分割拿出来
                            	abcdsz[k] = abcdf[k];//将分割出来的字符串拿出来一个个添加进数组中
                          }
                    	 count = 0;
					}
                     questrhtml += "<div class= \"quediv  col-xs-12\"    id=\"" + dataid[i] + "\" ><div class=\"quetitle\"  id=\""+questions_json.answer+"\"><div id=\"chapter\"><span class=\"tixingwB\">"+ tixingwB +"</span>"+item.knowledge_Name+" :</div>"
                     for(var l = 0;l<abcdsz.length;l++){//题干
                    			 questrhtml += "<div>"+ abcdsz[l] +"</div>";
                     }
                     questrhtml += "</div><div>";
                     for(var j = 0 ;j<answerAnalysisbx.length;j++){//循环出下面的小题
                    	 var  answerAnalysisbxt = JSON.stringify(answerAnalysisbx[j]);//将对象中的第一个装换为json字符串
                         var  questions_Jsons = JSON.parse(answerAnalysisbxt);//将json字符串转换为对象
                         var  questionsJson = JSON.parse(questions_Jsons.questions_Json);
                         var  DiBiao = j+1;//b型题小题题干（小题题干也可能是图片）
                             questrhtml += "<div class= \"titles\"  ><div class=\"ziti\"><span>"+ DiBiao +":</span><span  class=\"choose\">"+chooses[1]+"</span>" + questionsJson.title + "</div></div>"; 
                         for(var e = 0;e<5;e++){//ABCDE选项
                        	 questrhtml += "<div class=\"queoption\"  tag=\"" + optiondata[e]+ "\"><span class=\"optionspan\"  id=\""+DiBiao+dataid[i]+optiondata[e]+"option\"  ><div  class=\"topic\"  id=\"" + dataid[i] + "\" ><div class=\"DiBiao\"  id=\""+DiBiao+"\"><div class=\"length\" id=\""+answerAnalysisbx.length+"\"></div></div><div  id=\"answer\"  class=\""+questions_Json.answer+"\"  tag=\"" + optiondata[e]  + "\"></div>"+item.questions_Type+"</div>" + optiondata[e] + "</span></div>";//optiondata是设置选项数组，用角标循环出来。option是data里定义的题目内容 */
                            }
                     }
                     questrhtml += "</div></div>";
			     }else if(item.questions_Type == 7){//type为7说明是综合题
			    	 var  questions_Jsons = datas[i].questions_json.replaceAll("<label class='annex' >", "<img  class='imgs'  src='").replaceAll("</label>", "'/>");
			    	 var  questions_Json7 = JSON.parse(questions_Jsons);//将第三道题的questions_json转换为对象
			    	 var  answerAnalysis =  questions_Json7.answerAnalysis;//拿出第三道题的answerAnalysis值,是个字符串
                     var  answerAnalysisbx = JSON.parse(answerAnalysis);//转换为对象 
                     var  tixingwz = "综合题: ";
                    	 questrhtml += "<div class= \"quediv  col-xs-12\"    id=\"" + dataid[i] + "\" ><div class=\"quetitle\"  id=\"\"><div id=\"chapter\"><span class=\"tixingwB\">"+ tixingwz +"</span>"+item.knowledge_Name+" :<div calss=\"title\">"+questions_Json7.title+"</din></div></div>"
                         questrhtml += "</div><div>"
                    for(var n = 0 ;n<answerAnalysisbx.length;n++){
                    	   var  questionsJson = answerAnalysisbx[n].questions_Json;
                    	   var  DiBiao = n+1;
                        		questrhtml += "<div class= \"titles\"  ><div class=\"ziti\"><span>"+ DiBiao +":</span>" + questionsJson.title + "</div></div>"; 
                         for(var e = 0;e<5;e++){
                        		questrhtml += "<div class=\"queoption\"  tag=\"" + optiondata[e]+ "\"><span class=\"optionspan\"  id=\""+DiBiao+dataid[i]+optiondata[e]+"option\" ><div  class=\"topic\"  id=\"" + dataid[i] + "\" ><div class=\"DiBiao\"  id=\""+DiBiao+"\"><div class=\"length\" id=\""+answerAnalysisbx.length+"\"></div></div><div  id=\"answer\"  class=\""+questionsJson.answer+"\"  tag=\"" + optiondata[e]  + "\"></div>"+item.questions_Type+"</div>" + optiondata[e] + "</span>"+questionsJson.options[e]+"</div>";//optiondata是设置选项数组，用角标循环出来。option是data里定义的题目内容 */
                           }
                      }
                     questrhtml += "</div></div>";
				  }
            });
            $(".quelist").append(questrhtml);//获取用来装题目的外围div盒子。append方法在被选元素的结尾（仍然在被选元素内部）插入指定内容。这里是插入循环出的div
            $("#Lpage").prop("page", 0);//jquery高版本才有的方法与低版本中的attr()方法类似，通过获取到元素，从而改变元素的属性值
            $("#Dpage").prop("page", 2);//给与下一页page属性值（初始值为2）
            btnbindclick(dataid,knowledge_Name,datas,datalength);//调用 btnbindclick()方法//id=\"" + dataid[i]+DiBiao + "\" 
            $("#Lpage").click();//给上一页这个按钮点击事件
            /* bindoption(datalength); *///调用 bindoption()方法
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
        //提交用户选择的选项数据
      function  Jexi(knowledge_Name,datas,datalength){
    	   		    
        	        var  subListname = $("#subLists").text(); //获取到题型数据，题型名（后台传入 的json数据）
      	  			var  tixing  = $(".tixing").text();
      	  			var knowledge_Id = $(".knowledge_Id").text();
    	  			var queanswer = $(".queanswer").text();
      	  			var answers = $(".answers").text();
      	 			var nickname = $(".nickname").text();
      	  			var openid = $(".openid").text();
      	  			var headimgurl = $(".headimgurl").text();
      	 			var correctnumber = $(".correctnumber").text();
      	  			var percentage = $(".percentage").text();
      	  			var tixing = $(".tixing").text();
      	  			var int_second = $("#int_second").text();
      	  			var days = $(".dayss").text();
      	  			var  dateTime = $(".dateTime").text();//当前登录时间
          			var lv1state = $(".lv1state").text();//累计积分
          			var lv2state = $(".lv2state").text();//累计积分
          			var lv3state = $(".lv3state").text();//累计积分
      	  			var integral = $(".integral").text();
      	  			var jiexihuidiao = "jiexihuidiao";
      	  			var  kemuZYHXY  = $(".kemuZYHXY").text();
      	  			console.log("解析页面跳转到主页面去");
		        	window.location.href="../jingxuandetailspage/detailspage?correctnumber="+correctnumber+"&percentage="+percentage+"&int_second="+int_second+"&knowledge_Name="+subListname+"&queanswer="+queanswer+"&answers="+answers+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&tixing="+tixing+"&jiexihuidiao="+jiexihuidiao+"&days="+days+"&dateTime="+dateTime+"&integral="+integral+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"&knowledge_Id="+knowledge_Id+"&datalength="+datalength+"&kemuZYHXY="+kemuZYHXY+""; 
        		}
        
        
        function quedivshow() {//
            var queid = $(".quediv").find(".active").prop("id");//获取到QueInIt循环中的提标div。设置一个变量，变量为div中的id
        }
        
        
        
        	
      		//定义h5缓存变量，将变量中存储的值拿出来
    		var knowledge_Id  = $(".knowledge_Id").text();
      		var storagexuanxian = window.localStorage;//window.localStorage，H5的页面缓存
      		var locationcolor = window.localStorage;//选项颜色缓存
  			console.log("正确选择："+storagexuanxian["answers"+knowledge_Id]);
	 		console.log("用户选择的答案："+storagexuanxian["queanswer"+knowledge_Id]);
        	
  		    var  queanswer  = storagexuanxian["queanswer"+knowledge_Id];//用户选择的题目答案
		    var  answers = storagexuanxian["answers"+knowledge_Id];//题目正确答案 
  		    
		    var  queanswers = queanswer.split(',');//将一个以逗号隔开的字符串以逗号隔开转换为数组
  		    var  answerss = answers.split(',');
         
  		 function btnbindclick(dataid,knowledge_Name,datas,datalength) {//在QueInIt()方法中农调用此方法
            $(".btnanniu").click(function () {//用选择器获取到上一题按钮，给与点击事件
            	var  DiBiao  = $(this).find(".DiBiao").prop("id");
            	var page = $(this).prop("page");//设置变量，获取页面中所有page属性，变量值为page属性值（0,1,2,3等）
                var  Dpage = $(this).prop("id");
                var bpage = parseInt(page) + 1;
                if(bpage == datalength + 2){
                	 Jexi(knowledge_Name,datas,datalength);//当bpage为7时说明已经是第五到题了，后面已经没有题目了这时就执行Jexi方法，将选择的数据传给解析页面。
                	 return;//执行完Jexi函数后直接return掉，结束函数，不在执行后面的代码（这样就不会在显示一个没有题目的做题页面）
                }  
                if ($(this).prop("id") == "Lpage") {//$(this)用来判断页面中的每一个元素，prop获取到标签的id属性。判断页面中的每一个元素id是否为Lpage（上一页按钮）
                    page = page - 1;//如果标签的page属性为Lpage那么说明他是上一页，那每点击一下page值就减一
                } 
                $(".quediv").hide();//隐藏上一个题目页面(5个div盒子页面通过padding进行了定位，5个盒子层叠在了一起)
                if (page <= 0) {//如果页面的page值小于0
                    page = 1;//那就将page值设置为1
                }					//这时的初始值就是0
                var queid = dataid[parseInt(page - 1)];//设置date的id属性为queid（将page的值作为data json数据的角标值,从而根据页数来判断是哪一页）
				var size  = parseInt(page);//上面的角标值就是页码数，将角标值给与一个变量
				$("#comlcount").text(size);//将页码值给与题数显示span标签//$("#comlcount").text(size)是jquery给与span的标签文本文件的方法
			    var  width = 1/datalength*100;//进度条初始值为1除以总数乘以100
				var  widths = width*size;//每页进度占比等于初始值乘以页码
				$("#progress").css("width",widths + "%");//通过字符串拼接的方式给进度条宽度赋值		
				for(var k = 1;k <= datalength;k++){
					if("que"+k == dataid[parseInt(page - 1)]){
							if(datas[k -1].questions_Type == 2 || datas[k -1].questions_Type == 1){
								/*   var  questions_jsons = datas[k].questions_json.replaceAll("<label class='annex' >", "<img  class='imgs'  src='").replaceAll("</label>", "'/>");   */
							  var  questions_jsondx = JSON.parse( datas[k -1].questions_json.replaceAll("<label class='annex' >", "<img  class='imgs'  src='").replaceAll("</label>", "'/>"));
					          var type = datas[k -1].questions_Type;
							  $("#correct").text(answerss[k]);//第一道题的正确答案
							  $("#my").text(queanswers[k]);//用户选择的第一个答案
							  $("#cankaojiexi").text(questions_jsondx.answerAnalysis);//第一道题的解析
							  answerAddClass(DiBiao,dataid[parseInt(page - 1)],answerss[k],queanswers[k],type);
							}else if(datas[k -1].questions_Type  == 6  || datas[k -1].questions_Type  == 7){
							  $("#correct").text(answerss[k]);//第一道题的正确答案
							  $("#my").text(queanswers[k]);//用户选择的第一个答案
							  var  type = datas[k -1].questions_Type;
							  var  questions_Json = JSON.parse(datas[k -1].questions_json.replaceAll("<label class='annex' >", "<img  class='imgs'  src='").replaceAll("</label>", "'/>"));
			      		      var  answerAnalysis =  questions_Json.answerAnalysis;//拿出对象里的answerAnalysis（也就是所有题目数据）
			      		      var  questions_Jsonanswer = JSON.parse(answerAnalysis);//转化为对象
			      			  var  chandu = questions_Jsonanswer.length;
			      		      var  ans = JSON.parse(questions_Jsonanswer[chandu -1].questions_Json);
			      		      $("#cankaojiexi").text(ans.answerAnalysis);//B型题解析
			      		      answerAddClass(DiBiao,dataid[parseInt(page - 1)],answerss[k],queanswers[k],type);
						    }
					}
				}
				
				
                var upage = page;//定义一个变量upage值就是上面获取到的页面所有page属性值
                var dpage = parseInt(page) + 1;//设置变量dpage，变量值为页面page属性（页码）的值加一
				$("#" + queid).show();//根据data中id的值来显示题目页面。$("#" + queid)选择器拼接方法
				window.scrollTo({//设置页面刷新时，垂直滚动条置顶
				    top: 0, 
				    behavior: "smooth" 
				});
                if (upage <= 1) {//如果属性值小于一
                    $("#Lpage").hide();//隐藏上一页的按钮
                } else {
                    $("#Lpage").show();//否则显示上一页按钮
                }
                if (dpage > dataid.length) {//如果dpage的长短大于data json数据的长度.也就是说后面没有题了
                	$("#Dpage").html("回到主页面");//如果后面没题了，就改变下一页按钮的提示文字为交卷
                    $("#Dpage").addClass("btn-warning");//改变交卷按钮颜色
                    	
                } else {
                    $("#Dpage").show();//否则下一页按钮显示
                    $("#Dpage").html("下一题");//否则内容一致是下一题
                    $("#Dpage").removeClass("btn-warning");//否则移除给交卷按钮追加的按钮颜色
                }
                	$("#Lpage").prop("page", upage);//获取到上一页按钮的page属性，将上面upage的值附给上一页按钮的page属性
                	$("#Dpage").prop("page", dpage);//获取到上一页按钮的page属性，将上面dpage的值附给下一页按钮的page属性
            });
        }
        
        
        
        function answerEq(useranswer,queanswer){
        	var isok=false;
        	if(useranswer==queanswer){
        		/* console.log("选择的与正确答案相等");  */
        		isok=true;
        	}
        return  isok;
        }
        
        function answerAddClass(DiBiao,id,useranswer,queanswer,type){
        	/* console.log("用户选项："+queanswer);
        	console.log("正确选项："+useranswer); */
        	var isok=answerEq(useranswer,queanswer);
    		$.each(queanswer.split(''),function(x,item){//循环出queanswer（用户选择的答案）中所有元素
    			/* console.log("用户所选选项"); 
    			console.log("type的值："+type); */ 
    			if(type == 1 || type == 2){
    				/* console.log("是单选或多选");  */
    				if(isok){//如果相等
    					/* console.log("相等");  */
        				$("#"+id+item+"option").addClass("rightOK");//rightOK
        			}else{//如果不相等
        				/* console.log("不相等");  */
        				$("#"+id+item+"option").addClass("rightError");//rightError
        			}
    			}
    			if(type == 6 || type == 7){
    				/* console.log("是B型题");  */
    				if(isok){//如果相等
        				$("#"+DiBiao+id+item+"option").addClass("rightOK");//rightOK
        			}else{//如果不相等
        				$("#"+DiBiao+id+item+"option").addClass("rightError");//rightError
        			}
    			}
    		
    		});
    		$.each(useranswer.split(''),function(x,item){//循环出useranswer（用户选择的答案）中所有元素
    		/* 	console.log("正确答案"); */
    			if(type == 1 || type == 2){
    			/* 	console.log("正确题是单选或多选"); */
    				if(isok){//如果相等
    					/* console.log("变色"); */
        				$("#"+id+item+"option").addClass("rightOK");//rightOK
        			}else{//如果不相等
        				$("#"+id+item+"option").addClass("rightOK");//rightError
        			}
    			}
    			if(type == 6 || type == 7){
    			/* 	console.log("正确题是B型题");  */
    				if(isok){//如果相等
        				$("#"+DiBiao+id+item+"option").addClass("rightOK");//rightOK
        			}else{//如果不相等
        				$("#"+DiBiao+id+item+"option").addClass("rightError");//rightError
        			}
    			}
    		
    		});
        }
        
        
        
    </script>
</body>
</html>