<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
   	<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520">
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <title>每日一练</title>
    <style>


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
    </style>
</head>

<body>

    <div class="bgcolor container">
    	<div class="nickname">${nickname}</div>
		<div class="openid">${openid}</div>
		<div class="headimgurl">${headimgurl}</div>
		 <div  class="days">${days}</div>
		 <div  class="integral">${integral}</div><!-- 累计积分 -->
		 <div  class="dateTime">${dateTime}</div>
		 <div  class="lv1state">${lv1state}</div><!-- 礼物领取状态 -->
	    <div  class="lv2state">${lv2state}</div><!-- 礼物领取状态 -->
	    <div  class="lv3state">${lv3state}</div><!-- 礼物领取状态 -->
		<div class="tixing">西药</div>
        <div class='row '>
            <div class='quehead'>
                <div class='col-xs-3 headcount'>
                     <span id="comlcount" >1</span>/<span>5</span>题 
                </div>
                <div class='col-xs-5'>
                    <div class='headsubject'><span id="subLists">${subList}</span></div>
                </div>
                <div class='col-xs-4'>				<!-- 前台计时 -->
                    <div class='headtime'><span>用时：<span id='time_s'></span></span></div>
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
        <div class='row'>
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
    //页面加载时就会加载这个函数，然后会调用下面的方法
        $(function () {
			var  subList = ${EQtitle} //获取到题型数据（后台传入 的json数据）
		 	 console.log("题目类型："+subList);   
        	ajaxjson(subList); 
            show_time();
        });
        
        
        function  ajaxjson(subList){
			$.ajax({
					url:'../West/practice',
					dataType:'json',
					type:'post',
					data:subList, 
					success:function(data){
						if(data.type == 'success'){
							var  datajson  = data.datas;//获取到后台回调回来的json数据
							var  datas  =  JSON.parse(datajson);//转化为对象
							/* var  questions_json0  = JSON.parse(datas[0].questions_json); *///将数据中的questions_json数据装换为对象
							var optiondata = ["A", "B", "C", "D", "E", "F", "G"];
							var dataid = ["que1","que2","que3","que4","que5"];
							var chooses  = ["【多选】","【单选】","【多选】"];
							var knowledge_Name = datas[0].knowledge_Name;
						        QueInIt(optiondata,datas,dataid,chooses,knowledge_Name); 
						}else{
							console.log("页面出错请联系管理员！");
						}
					}
				});
		}
        
        

        function QueInIt(optiondata,datas,dataid,chooses,knowledge_Name){
            var questrhtml = "";//设置一个变量，将div盒子给与这个变量。用来显示题目       
            $.each(datas, function (i, item) {//each是jquery的遍历方法。data就是传入的用来循环的题目数据与c:forEach中从后台传入的集合变量类似。item与c:forEach中var的用来循环集合值的变量
            	 var  questions_json  = JSON.parse(datas[i].questions_json);  
            	 var   titles = questions_json.title;//题目名
            	 if(titles.search("http") != -1){
            		 var DiBiao = titles.split("<")[0];//题目,split截取字符串中以<号为界，[0]表示<号前面的数据
            		 //图片
            		 var http = titles.split(">")[1];
            		 var imgs = http.split("<")[0];
            		 questrhtml += "<div class= \"quediv  col-xs-12\"    id=\"" + dataid[i] + "\" ><div class=\"quetitle\"  id=\""+questions_json.answer+"\"><div id=\"chapter\">"+item.knowledge_Name+" :</div><span  class=\"choose\">"+chooses[item.questions_Type]+"</span>" + DiBiao + "</div><img  src=\"" + imgs + "\"  id=\"imgname\"><div>";//item.id将id插入，item.title 中间插入提标
            	 }else {
		             questrhtml += "<div class= \"quediv  col-xs-12\"    id=\"" + dataid[i] + "\" ><div class=\"quetitle\"  id=\""+questions_json.answer+"\"><div id=\"chapter\">"+item.knowledge_Name+" :</div><span  class=\"choose\">"+chooses[item.questions_Type]+"</span>" + questions_json.title + "</div><div>";//item.id将id插入，item.title 中间插入提标
				} 
                $.each(questions_json.options,function (x, option) {																						
                	if(option.search("http") != -1){
                		//图片
               		 var http = option.split(">")[1];
               		 var imgsx = http.split("<")[0];
               		       questrhtml += "<div class=\"queoption\"    tag=\"" + optiondata[x]+ "\"><span class=\"optionspan\"  id=\""+dataid[i]+item.questions_Type+optiondata[x]+"\" ><div  class=\"topic\"  id=\"" + dataid[i] + "\" ><div  id=\"answer\"  class=\""+questions_json.answer+"\"  tag=\"" + optiondata[x]  + "\"></div>"+item.questions_Type+"</div>" + optiondata[x] + "</span><div>"
               		       questrhtml += "<img  src=\"" + imgsx + "\" id=\"imgname\"></div></div>";//optiondata是设置选项数组，用角标循环出来。option是data里定义的题目内容
                	  }else {
                           questrhtml += "<div class=\"queoption\"    tag=\"" + optiondata[x]+ "\"><span class=\"optionspan\"  id=\""+dataid[i]+item.questions_Type+optiondata[x]+"\" ><div  class=\"topic\"  id=\"" + dataid[i] + "\" ><div  id=\"answer\"  class=\""+questions_json.answer+"\"  tag=\"" + optiondata[x]  + "\"></div>"+item.questions_Type+"</div>" + optiondata[x] + "</span>" 
                           + option + "</div>";//optiondata是设置选项数组，用角标循环出来。option是data里定义的题目内容
					  }
                });
                questrhtml += "</div></div>";
            });
            
            $(".quelist").append(questrhtml);//获取用来装题目的外围div盒子。append方法在被选元素的结尾（仍然在被选元素内部）插入指定内容。这里是插入循环出的div
            $("#Lpage").prop("page", 0);//jquery高版本才有的方法与低版本中的attr()方法类似，通过获取到元素，从而改变元素的属性值
            //$("#Lpage").hide();
            $("#Dpage").prop("page", 2);//给与下一页page属性值（初始值为2）
            btnbindclick(dataid,knowledge_Name,datas);//调用 btnbindclick()方法
            $("#Lpage").click();//给上一页这个按钮点击事件
            bindoption();//调用 bindoption()方法
        }
        
        
        //题目页面(第几到题)
        var ques = "";
        var que1 = "";
        var que2 = "";
        var que3 = "";
        var que4 = "";
        var que5 = "";
        //选择的选项(用户选择的五道题的选项，在js中给与赋值)
        var doubleanswer2 = "";
        var doubleanswer1 = "";
        var que1answer = "";
        var que2answer = "";
        var que3answer = "";
        var que4answer = "";
        var que5answer = "";
        //题目正确答案(五道题的正确答案，查询出来的answers数据)
        var answers1 = "";
        var answers2 = "";
        var answers3 = "";
        var answers4 = "";
        var answers5 = "";
        
        var  nickname = $(".nickname").text();
     	var  openid = $(".openid").text();
     	var  headimgurl = $(".headimgurl").text();
        /* answer=options.split(); 
        console.log("数组值："+answer[0]); */
        //提交用户选择的选项数据
        function  Jexi(knowledge_Name,datas){
        	//Array.from(que3answer).sort().join("")方法对字符串进行排序
        	console.log("对que3answer字符串进行排序："+Array.from(que3answer).sort().join(""));
        	//answers3.localeCompare()方法进行字符串比较。answers3要进行比较的固定字符串，()里填入的是要进行比较的参数.
        	//如果相等就返回0，如果answers3小于()里的数据返回小于0的数，如果answers3大于()里的数就返回一个大于0的数
        	console.log("选择的选项比较（0就是相等）："+answers3.localeCompare(Array.from(que3answer).sort().join("")));
        	/* var  answer1 = answers1.localeCompare(Array.from(que1answer).sort().join(""));
        	var  answer2 = answers2.localeCompare(Array.from(que2answer).sort().join(""));
        	var  answer3 = answers3.localeCompare(Array.from(que3answer).sort().join(""));
        	var  answer4 = answers4.localeCompare(Array.from(que4answer).sort().join(""));
        	var  answer5 = answers5.localeCompare(Array.from(que5answer).sort().join("")); */
        	
        	if(answers1 == Array.from(que1answer).sort().join("")){
        		var  answer1s =  0;
        	}else {
        		var  answer1s =  1;
			}
        	if(answers2 == Array.from(que2answer).sort().join("")){
        		var  answer2s =  0;
        	}else {
        		var  answer2s =  1;
			}
        	if(answers3 == Array.from(que3answer).sort().join("")){
        		var  answer3s =  0;
        	}else {
        		var  answer3s =  1;
			}
        	if(answers4 == Array.from(que4answer).sort().join("")){
        		var  answer4s =  0;
        	}else {
        		var  answer4s =  1;
			}
        	if(answers5 == Array.from(que5answer).sort().join("")){
        		var  answer5s =  0;
        	}else {
        		var  answer5s =  1;
			}
        	var answer1s  ;
        	var answer2s  ;
        	var answer3s  ;
        	var answer4s  ;
        	var answer5s  ;
        	
        	
        	//对选项进行排序
        	que1answer = Array.from(que1answer).sort().join("");
        	que2answer = Array.from(que2answer).sort().join("");
        	que3answer = Array.from(que3answer).sort().join("");
        	que4answer = Array.from(que4answer).sort().join("");
        	que5answer = Array.from(que5answer).sort().join("");
        	/* var  percentage = +"%"; */
        	var   successrate =  [answer1s,answer2s,answer3s,answer4s,answer5s];
        	var   queanswer = [que1answer,que2answer,que3answer,que4answer,que5answer];//用户选择的答案
        	var   answers  = [answers1,answers2,answers3,answers4,answers5];//该题正确的答案
        	var   que = [que1,que2,que3,que4,que5];//题目页码
			
            /* for(var i = 0;i<5;i++){ */
        	if(queanswer[0] == null || queanswer[0] == "" ||queanswer[1] == null || queanswer[1] == ""|| queanswer[2] == null || queanswer[2] == "" || 
        			queanswer[3] == null || queanswer[3] == "" || queanswer[4] == null || queanswer[4] == ""
        		){
        			popTipShow.confirm('提示','您还有题目没答完哦!',['去答题'],
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
        	        		console.log("传入ajax的提醒明："+knowledge_Name);
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
        		        	var  percentage = 20*correctnumber;//做题正确率
        		        	var  subListname = $("#subLists").text(); //获取到题型数据（后台传入 的json数据）
        		        	var  tixing = $(".tixing").text();//西药
        		        	var   time_s  =  $("#time_s").text();//做题用时
        		        	var  days = $(".days").text();//连续登录天数
        		        	var dateTime = $(".dateTime").text();//当前登录时间
        		        	var  integral = $(".integral").text();//累计积分
        		        	var lv1state = $(".lv1state").text();//礼物领取
        		        	var lv2state = $(".lv2state").text();//累计积分
        		        	var lv3state = $(".lv3state").text();//累计积分
        		        	/* console.log("做题正确率："+correctnumber);
        		        	console.log("正确题数："+percentage); */
        		        	var jiexihuidiao = "zuowanti"
        		            jiexizhu(correctnumber,percentage,time_s,subListname,queanswer,answers,nickname,openid,headimgurl,tixing,jiexihuidiao,days,dateTime,integral,lv1state,lv2state,lv3state);
        		        	/* console.log("做题所用总时间："+int_second); */
        		        	/* window.location.href="../detailspage/detailspage?correctnumber="+correctnumber+"&percentage="+percentage+"&int_second="+time_s+"&knowledge_Name="+subListname+"&queanswer="+queanswer+"&answers="+answers+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&tixing="+tixing+"&jiexihuidiao="+jiexihuidiao+"&days="+days+"";  */
        	        	}        		
        	/* } */
        	
        }  
        
        
        function  jiexizhu(correctnumber,percentage,time_s,subListname,queanswer,answers,nickname,openid,headimgurl,tixing,jiexihuidiao,days,dateTime,integral,lv1state,lv2state,lv3state){
     	   window.location.href="../detailspage/detailspage?correctnumber="+correctnumber+"&percentage="+percentage+"&int_second="+time_s+"&knowledge_Name="+subListname+"&queanswer="+queanswer+"&answers="+answers+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&tixing="+tixing+"&jiexihuidiao="+jiexihuidiao+"&days="+days+"&dateTime="+dateTime+"&integral="+integral+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""; 
     }
        
        function quedivshow() {//
            var queid = $(".quediv").find(".active").prop("id");//获取到QueInIt循环中的提标div。设置一个变量，变量为div中的id
        }
        
        
        function bindoption() {//在QueInIt()方法中进行调用
            $(".queoption").click(function () {//获取到题目标签，给与点击时事件(这里是选择题点击事件，当点击选项的div后获取到div中的span标签给span标签追加一个类属性,实现span标签的选中后颜色变换效果)
            	/*  $(this).find(".optionspan").addClass("active"); */ //获取到题目span标签，添加一个class属性值。addClass() 方法向被选元素添加一个或多个类
                      /* var  types = $(".topic").text();//所有type的值  */
                  /*   var types = $(this).find(".optionspan").text();//获取到点击的那个选项 */
                   var types = $(this).find(".topic").text();//在this下(可以理解为页面所有的元素)获取到装有type属性的div的文本文档
                    var options = $(this).find(".optionspan").text();//获取到装有type属性值和选项值的div中的文本文档（type值和选项值(ABCDE)）
                   	/* console.log("选择的选项："+options);  */
                    var   dataid = $(this).find(".optionspan").prop("id");
                   	var   que = $(this).find(".topic").prop("id");//当前div
                   		
                    var  answers  = $(this).find("#answer").prop("class");
                    console.log("dataid："+dataid);
               		/* console.log("当前div："+$(this).find(".topic").prop("id"));
                    console.log("选项id："+id);  */
           		   if(types == 1){//如果是单选题，就进入这个判断
           			  var	option = options.replace("1",""); //因为获取的选项值中带有type，因此去掉type值
           			if("que1" == $(this).find(".topic").prop("id")){//判断当前页面是哪个页面（哪道题）
           				answers1 = $(this).find("#answer").prop("class");//本题正确答案
           				que1 = $(this).find(".topic").prop("id");//给当前页面的id赋值，用于判断选择是否正确
           				doubleanswer1  = option;//会先给doubleanswer赋予选择的选项值
           				if(option == que1answer){//如果在次点击同一个选项，就移除que1answer和doubleanswer的值。因此他为空了是相等的，所以不会在重复添加
           					que1answer = que1answer.replace(option,"");//replace移除字符串中指定的字符。可以传入要移除字符的参数
           					doubleanswer1 = doubleanswer1.replace(option,"");
           				}
           				if(doubleanswer1 != que1answer){//因为doubleanswer会先赋值因此正常情况下会比que1answer多一个值，只有在上面清除了值的情况下才会相等
                 	   		que1answer = option;//将获取到的点击的选项的值(ABCD)，给与变量，用于答案比较
           				}
                    }
                    if("que2" == $(this).find(".topic").prop("id")){
                    	answers2 = $(this).find("#answer").prop("class");
                    	que2 = $(this).find(".topic").prop("id"); 
                    	doubleanswer1  = option;
                    	  if(option == que2answer){
                    		  que2answer = que2answer.replace(option,"");
                    		  doubleanswer1 = doubleanswer1.replace(option,"");
             				}
                    	  if(doubleanswer1 != que2answer){
                 	   	     que2answer = option;
                    	  }
                    }
            		if("que3" == $(this).find(".topic").prop("id")){
            			answers3 = $(this).find("#answer").prop("class");
            			que3 = $(this).find(".topic").prop("id");
            			doubleanswer1  = option;
            			  if(option == que3answer){
            				  que3answer = que3answer.replace(option,"");
            				  doubleanswer1 = doubleanswer1.replace(option,"");
            			  }
            			  if(doubleanswer1 != que3answer){
            		  		 que3answer = option;
             				}
             	   }
            		if("que4" == $(this).find(".topic").prop("id")){
            			answers4 = $(this).find("#answer").prop("class");
            			que4 = $(this).find(".topic").prop("id");
            			doubleanswer1  = option;
            			if(option == que4answer){
            				que4answer = que4answer.replace(option,"");
            				doubleanswer1 = doubleanswer1.replace(option,"");
           				}
            			if(doubleanswer1 != que4answer){
            		   	    que4answer = option;
            			}
             	   }
            		if("que5" == $(this).find(".topic").prop("id")){
            			answers5 = $(this).find("#answer").prop("class");
            			que5 = $(this).find(".topic").prop("id");
            			doubleanswer1  = option;
            			if(option == que5answer){
            				que5answer = que5answer.replace(option,"");
            				doubleanswer1 = doubleanswer1.replace(option,"");
           				}
            			if(doubleanswer1 != que5answer){
           			   		que5answer = option;
            			}
            	      }
           		   }
           		   
           		if(types == 2){//如果type为二，就是多选
           			 var	option = options.replace("2",""); //先去除掉type的值
           			console.log("去掉type后选择的选项："+option); 
           			if("que1" == $(this).find(".topic").prop("id")){
           				answers1 = $(this).find("#answer").prop("class");//获取当前页面题目的真确答案
           				que1 = $(this).find(".topic").prop("id");//获取当前页面id值，给与变量用于题目答案判断
           				if(ques != "que1"){
           					ques = "que1";
           					doubleanswer2 = "";
           				}
           				doubleanswer2  =  doubleanswer2 + option;//给与变量doubleanswer答案值，用于下面获取答案的判断
           				 if(que1answer.search(option) != -1){//search方法用来判断字符串中某个字符是否存在，存在就不等于-1(这个时候变量里就有了传进去的数据，所以就)
           					que1answer = que1answer.replace(option,"");
           					doubleanswer2 = doubleanswer2.replace(new RegExp(option,"gm"),"");
           				} 
           				if(doubleanswer2 != que1answer && doubleanswer2 != null && doubleanswer2 != ""){//与上面类似
                 	   		que1answer = que1answer+option;
           					}
           				}
                    
                    if("que2" == $(this).find(".topic").prop("id")){
                    	answers2 = $(this).find("#answer").prop("class");
                    	que2 = $(this).find(".topic").prop("id");
                    	doubleanswer2  =  doubleanswer2 + option;
                    	if(ques != "que2"){
           					ques = "que2";
           					doubleanswer2 = "";
           				}
                    	if(que2answer.search(option) != -1){
                    		que2answer = que2answer.replace(option,"");
                    		doubleanswer2 = doubleanswer2.replace(new RegExp(option,"gm"),"");
           				}
                    	if(doubleanswer2 != que2answer && doubleanswer2 != null && doubleanswer2 != ""){
                    		que2answer = que2answer+option;
           				}
                    }
            		if("que3" == $(this).find(".topic").prop("id")){
            			answers3 = $(this).find("#answer").prop("class");
            			que3 = $(this).find(".topic").prop("id");
            			if(ques != "que3"){
           					ques = "que3";
           					doubleanswer2 = "";
           				}
            			doubleanswer2  =  doubleanswer2 + option;
            			if(que3answer.search(option) != -1){
            				que3answer = que3answer.replace(option,"");
            				doubleanswer2 = doubleanswer2.replace(new RegExp(option,"gm"),"");
           				}
            			if(doubleanswer2 != que3answer && doubleanswer2 != null && doubleanswer2 != ""){
            				que3answer = que3answer+option;
           				}
             	   }
            		if("que4" == $(this).find(".topic").prop("id")){
            			answers4 = $(this).find("#answer").prop("class");
            			que4 = $(this).find(".topic").prop("id");
            			if(ques != "que4"){
           					ques = "que4";
           					doubleanswer2 = "";
           				}
            			doubleanswer2  =  doubleanswer2 + option;
            			if(que4answer.search(option) != -1){
            				que4answer = que4answer.replace(option,"");
            				doubleanswer2 = doubleanswer2.replace(new RegExp(option,"gm"),"");
           				}
            			if(doubleanswer2 != que4answer && doubleanswer2 != null && doubleanswer2 != ""){
            				que4answer = que4answer+option;
           				}
             	   }
            		if("que5" == $(this).find(".topic").prop("id")){
            			answers5 = $(this).find("#answer").prop("class");
            			que5 = $(this).find(".topic").prop("id");
            			if(ques != "que5"){
           					ques = "que5";
           					doubleanswer2 = "";
           				}
            			doubleanswer2  =  doubleanswer2 + option;
            			if(que5answer.search(option) != -1){
            				que5answer = que5answer.replace(option,"");
            				doubleanswer2 = doubleanswer2.replace(new RegExp(option,"gm"),"");
           				}
            			if(doubleanswer2 != que5answer && doubleanswer2 != null && doubleanswer2 != ""){
            				que5answer = que5answer+option;
           				}
            	      }
           		   }
            
                 /*   console.log("字符窜"+answer); */
                   if(types == 2){//如果type为2
                		/* $(this).find(".optionspan").toggleClass("active"); *///jquery中toggleClass方法可以实现点击一下后在原有的class属性后面添加action属性，二次点击后删除action属性
                	   if(options == "2A"){
                		   if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
                			   $("[id = "+que+"2A]").removeClass("rightOK");
							}else{
							   $(this).find("#"+dataid).addClass("rightOK");
							}
						}
						if(options == "2B"){
							 if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
	                			   $("[id = "+que+"2B]").removeClass("rightOK");
								}else{
								   $(this).find("#"+dataid).addClass("rightOK");
								}
						}
						if(options == "2C"){
							 if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
	                			   $("[id = "+que+"2C]").removeClass("rightOK");
								}else{
								   $(this).find("#"+dataid).addClass("rightOK");
								}
						}
						if(options == "2D"){
							 if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
	                			   $("[id = "+que+"2D]").removeClass("rightOK");
								}else{
								   $(this).find("#"+dataid).addClass("rightOK");
								}
						}
						if(options == "2E"){
							 if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
	                			   $("[id = "+que+"2E]").removeClass("rightOK");
								}else{
								   $(this).find("#"+dataid).addClass("rightOK");
								}
						}
                    }
					 if(types == 1){//如果type为1
						 if(options == "1A"){
							 console.log("单选A"+dataid);
							 if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
									$("[id = "+que+"1A]").removeClass("rightOK");//移除a选项 
								}else{
									console.log("添加效果");
								   $(this).find("#"+dataid).addClass("rightOK");
								   $("[id = "+que+"1B]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
								   $("[id = "+que+"1C]").removeClass("rightOK"); 
								   $("[id = "+que+"1D]").removeClass("rightOK"); 
								   $("[id = "+que+"1E]").removeClass("rightOK"); 
								}
							}
							if(options == "1B"){
								if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
									$("[id = "+que+"1B]").removeClass("rightOK");//移除a选项 
								}else{
								   $(this).find("#"+dataid).addClass("rightOK");
								   $("[id = "+que+"1A]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
								   $("[id = "+que+"1C]").removeClass("rightOK"); 
								   $("[id = "+que+"1D]").removeClass("rightOK"); 
								   $("[id = "+que+"1E]").removeClass("rightOK"); 
								}
							}
							if(options == "1C"){
								if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
									$("[id = "+que+"1C]").removeClass("rightOK");//移除a选项 
								}else{
								   $(this).find("#"+dataid).addClass("rightOK");
								   $("[id = "+que+"1B]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
								   $("[id = "+que+"1A]").removeClass("rightOK"); 
								   $("[id = "+que+"1D]").removeClass("rightOK"); 
								   $("[id = "+que+"1E]").removeClass("rightOK"); 
								}
							}
							if(options == "1D"){
								if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
									$("[id = "+que+"1D]").removeClass("rightOK");//移除a选项 
								}else{
								   $(this).find("#"+dataid).addClass("rightOK");
								   $("[id = "+que+"1B]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
								   $("[id = "+que+"1C]").removeClass("rightOK"); 
								   $("[id = "+que+"1A]").removeClass("rightOK"); 
								   $("[id = "+que+"1E]").removeClass("rightOK"); 
								}
							}
							if(options == "1E"){
								if($(this).find("#"+dataid).prop("class") == "optionspan rightOK"){
									$("[id = "+que+"1E]").removeClass("rightOK");//移除a选项 
								}else{
								   $(this).find("#"+dataid).addClass("rightOK");
								   $("[id = "+que+"1B]").removeClass("rightOK"); //$("[id!=1A]"),jquery中根据属性值比较进行元素的获取
								   $("[id = "+que+"1C]").removeClass("rightOK"); 
								   $("[id = "+que+"1D]").removeClass("rightOK"); 
								   $("[id = "+que+"1A]").removeClass("rightOK"); 
								}
							} 
					} 
           		 });
        	}
       /*  var int_second = 0;//设置时间变量，从0开始（做题所花费的时间）
        function show_time() {//上面fcuntion中调用的方法，在页面加载时加载
            int_second++;
            $('#time_s').html(int_second);//获取时间显示标签，在html页面显示时间
            setTimeout('show_time()', 1000);//setTimeout是延时定时器 表示里面的函数500毫秒后执行 而且就只会执行一次
        } */
       
        
        
        var int_second = 0;//设置时间变量，从0开始（做题所花费的时间）
        function show_time() {//上面fcuntion中调用的方法，在页面加载时加载
        	var self = this;
           /*  setTimeout('show_time()', 1000);//setTimeout是延时定时器 表示里面的函数500毫秒后执行 而且就只会执行一次 */
           self.practice = setInterval(() =>{
               var  minute = 0, second = 0;
               /*  hour=parseInt(int_second/60/60); */
                minute=parseInt(int_second/60%60);
                second=parseInt(int_second%60);
               /* self.toDouble(hour)+":"+self.toDouble(minute)+":"+self.toDouble(second); */
                $('#time_s').html(self.toDouble(minute)+":"+self.toDouble(second));//获取时间显示标签，在html页面显示时间
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
        
        
        
        function btnbindclick(dataid,knowledge_Name,datas) {//在QueInIt()方法中农调用此方法
            $(".btnanniu").click(function () {//用选择器获取到上一题按钮，给与点击事件
                var page = $(this).prop("page");//设置变量，获取页面中所有page属性，变量值为page属性值（0,1,2,3等）
                 /* console.log("点击的按钮"+$(this).prop("id"));
                console.log("当前页面："+$(this).find(".quediv").prop("id"));
                console.log("当前题目正确答案："+$(".quetitle").prop("id"));   */
                var  Dpage = $(this).prop("id");
                var bpage = parseInt(page) + 1;
                if(bpage == 7){
                	 Jexi(knowledge_Name,datas);//当bpage为7时说明已经是第五到题了，后面已经没有题目了这时就执行Jexi方法，将选择的数据传给解析页面。
                	 return;//执行完Jexi函数后直接return掉，结束函数，不在执行后面的代码（这样就不会在显示一个没有题目的做题页面）
                } 
               
                console.log("bpage的值："+bpage);
                console.log("是否向下执行");
                /*   alert("page值"+page) */
                /* var size = $("#comlcount"); *///获取到span标签text本值（当前题数） 
                if ($(this).prop("id") == "Lpage") {//$(this)用来判断页面中的每一个元素，prop获取到标签的id属性。判断页面中的每一个元素id是否为Lpage（上一页按钮）
                    page = page - 1;//如果标签的page属性为Lpage那么说明他是上一页，那每点击一下page值就减一
                } 
                
                $(".quediv").hide();//隐藏上一个题目页面(5个div盒子页面通过padding进行了定位，5个盒子层叠在了一起)
                if (page <= 0) {//如果页面的page值小于0
                    page = 1;//那就将page值设置为1
                }					//这时的初始值就是0
                var queid = dataid[parseInt(page - 1)];//设置date的id属性为queid（将page的值作为data json数据的角标值,从而根据页数来判断是哪一页）
				var size  = parseInt(page);//上面的角标值就是页码数，将角标值给与一个变量
			/* 	alert("角标"+page); */
				$("#comlcount").text(size);//将页码值给与题数显示span标签//$("#comlcount").text(size)是jquery给与span的标签文本文件的方法
			    var  width = 20;//进度条初始值为20
				var  widths = width*size;//每页进度占比等于初始值乘以页码
				$("#progress").css("width",widths + "%");//通过字符串拼接的方式给进度条宽度赋值		
				
                var upage = page;//定义一个变量upage值就是上面获取到的页面所有page属性值
                var dpage = parseInt(page) + 1;//设置变量dpage，变量值为页面page属性（页码）的值加一
				$("#" + queid).show();//根据data中id的值来显示题目页面。$("#" + queid)选择器拼接方法
                if (upage <= 1) {//如果属性值小于一
                    $("#Lpage").hide();//隐藏上一页的按钮
                } else {
                    $("#Lpage").show();//否则显示上一页按钮
                }
                
				
                if (dpage > dataid.length) {//如果dpage的长短大于data json数据的长度.也就是说后面没有题了
                  /*   $("#Dpage").hide(); *///就让下一页按钮隐藏
                  	/* console.log("dpage的值"+dpage); */
                    $("#Dpage").html("交卷");//如果后面没题了，就改变下一页按钮的提示文字为交卷
                    $("#Dpage").addClass("btn-warning");//改变交卷按钮颜色
                    	
                } else {
                    $("#Dpage").show();//否则下一页按钮显示
                    $("#Dpage").html("下一题");//否则内容一致是下一题
                    $("#Dpage").removeClass("btn-warning");//否则移除给交卷按钮追加的按钮颜色
                }
                $("#Lpage").prop("page", upage);//获取到上一页按钮的page属性，将上面upage的值附给上一页按钮的page属性
                $("#Dpage").prop("page", dpage);//获取到上一页按钮的page属性，将上面dpage的值附给上一页按钮的page属性
            });
        }
    </script>
	


</body>
</html>