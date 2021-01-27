<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
   <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <!-- <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  -->
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

.quediv .queoption .rightOK {
                    background: #1E90FF;
                }
.quediv .queoption .rightError {
                    background: #FF4500;
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
           .queanswer{
           		display: none;
           }
           .answers{
           	   display: none;
           }
           #correctanswer{
           	   font-size:15px;
           	   font-weight:550;
           	   margin-left:35px; 
           	   padding-top:7px;
           	   padding-bottom:7px;
           }
           #myanswer{
           	   font-size:15px;
           	   font-weight:550;
           	   padding-top:7px;
           	   padding-bottom:7px;
           	   /* margin-left:135px;
           	   margin-bottom:50px; */
           }
           #rowjiexi{
           		background-color: 	#FFFFFF;
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
            #cankaojiexi{
               font-size:15px;
           	   padding-top:7px;
           	   margin-left:35px; 
            }
            #correct{
            	color:#32CD32;
            }
            #my{
            	color:#32CD32;
            }
           #jiexipage{
               padding-top:15px;
            }
            .tixing{
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
            .correctnumber{
            	display: none;
            }
            .percentage{
            	display: none;
            }
            .tixing{
            	tixing
            }
           .dayss{
           		display: none;
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
	<span  class="queanswer">${queanswer}</span>
	<span  class="answers">${answers}</span>
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
	<div class="tixing">中药</div>
    <div class="bgcolor container">
        <div class='row '>
            <div class='quehead'>
                <div class='col-xs-3 headcount'>
                     <span id="comlcount" >1</span>/<span>5</span>题 
                </div>
                <div class='col-xs-5'>													<!-- 题型名 -->
                    <div class='headsubject'><%-- <span>${subList.subjects}</span> --%><span id="subLists">${subList}</span></div>
                </div>
                <div class='col-xs-4'>				<!-- 前台计时 -->
                    <div class='headtime'><span>用时：<span id="int_second">${int_second}</span></span></div>
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
        <!-- 上下题 -->
        <div class='row'  id="jiexipage">
            <div class="btndiv " >
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

	 <script>
    //页面加载时就会加载这个函数，然后会调用下面的方法
		var  queanswer = $(".queanswer").text();//用户选择的答案（所有）
		var  answers = $(".answers").text();//正确的答案（所有）
		console.log("正确选择："+answers);
		var  queanswers = queanswer.split(',');//将一个以逗号隔开的字符串以逗号隔开转换为数组
		var  answerss = answers.split(',');
		$(function () {
        	var  subList = ${EQtitle} //获取到题型数据（后台传入 的json数据）
        	ajaxjson(subList); 
			console.log("用户的选择："+queanswers[0]);
			console.log("正确选择："+answerss[0]);
        });
        
    	
    
        
        function  ajaxjson(subList,queanswer,answers){
			$.ajax({
					url:'../practice/practice',
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
							var questions_json  = JSON.parse(datas[0].questions_json); 
							/*  console.log("题目数据："+datajson); 
							 console.log("题型名："+datas[0].knowledge_Name);
							 console.log("第一个解析："+questions_json.answerAnalysis);  */
							 $("#cankaojiexi").text(questions_json.answerAnalysis);//第一道题的解析
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
            	 var   titles = questions_json.title;
            	 /* console.log("type的值："+item.questions_Type); */
            	if(titles.search("http") != -1){
            		 var DiBiao = titles.split("<")[0];//题目,split截取字符串中以<号为界，[0]表示<号前面的数据,[1]表示<号后面的
            		 //图片
            		 var http = titles.split(">")[1];
            		 var imgs = http.split("<")[0];
		             questrhtml += "<div class= \"quediv  col-xs-12\"    id=\"" + dataid[i] + "\" ><div class=\"quetitle\" ><div id=\"chapter\">"+item.knowledge_Name+" :</div><span  class=\"choose\">"+chooses[item.questions_Type]+"</span>" + DiBiao + "<img src="+imgs+" \  id=\"imgname\"></div><div>";//item.id将id插入，item.title 中间插入提标
            	  }else {
            		 questrhtml += "<div class= \"quediv  col-xs-12\"    id=\"" + dataid[i] + "\" ><div class=\"quetitle\" ><div id=\"chapter\">"+item.knowledge_Name+" :</div><span  class=\"choose\">"+chooses[item.questions_Type]+"</span>" + questions_json.title + "</div><div>";//item.id将id插入，item.title 中间插入提标
				 }
            	$.each(questions_json.options,function (x, option) {
            		 if(option.search("http") != -1){
            			//图片
                   		 var http = option.split(">")[1];
                   		 var imgsx = http.split("<")[0];
                         questrhtml += "<div class=\"queoption\"  tag=\"" + optiondata[x]+ "\"   ><span id=\""+dataid[i]+optiondata[x]+"option\" class=\"optionspan\"  id=\"\" ><div  class=\"topic\"   tag=\"" + optiondata[x]  + "\" ><div  id=\"answer\"  ></div>"+item.questions_Type+"</div>" + optiondata[x] + "</span>" 
                         "<img  src="+imgsx+" id=\"imgname\"></div>";//optiondata是设置选项数组，用角标循环出来。option是data里定义的题目内容
                        }else {
                    	questrhtml += "<div class=\"queoption\"  tag=\"" + optiondata[x]+ "\"   ><span id=\""+dataid[i]+optiondata[x]+"option\" class=\"optionspan\"  id=\"\" ><div  class=\"topic\"   tag=\"" + optiondata[x]  + "\" ><div  id=\"answer\"  ></div>"+item.questions_Type+"</div>" + optiondata[x] + "</span>" 
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
            /* bindoption(); *///调用 bindoption()方法
        }
        
       
        //时间显示
        /* var int_second = 0;//设置时间变量，从0开始（做题所花费的时间）
        function show_time() {//上面fcuntion中调用的方法，在页面加载时加载
            int_second++;
            $('#time_s').html(int_second);//获取时间显示标签，在html页面显示时间
            setTimeout('show_time()', 1000);//setTimeout是延时定时器 表示里面的函数500毫秒后执行 而且就只会执行一次
        } */
        
        function  Jexi(knowledge_Name,datas){
        	  var  subListname = $("#subLists").text(); //获取到题型数据，题型名（后台传入 的json数据）
        	  var  tixing  = $(".tixing").text();
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
        	  var integral = $(".integral").text();//累计积分
        	  var lv1state = $(".lv1state").text();//累计积分
	          var lv2state = $(".lv2state").text();//累计积分
	          var lv3state = $(".lv3state").text();//累计积分
        	  var jiexihuidiao = "jiexihuidiao";
        	  console.log("解析页面跳转到主页面去");
        	/*  window.location.href="../detailspage/jiexihuidiao?correctnumber="+correctnumber+"&percentage="+percentage+"&int_second="+int_second+"&knowledge_Name="+subListname+"&queanswer="+queanswer+"&answers="+answers+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&tixing="+tixing+"";  */
        	    window.location.href="../detailspage/detailspage?correctnumber="+correctnumber+"&percentage="+percentage+"&int_second="+int_second+"&knowledge_Name="+subListname+"&queanswer="+queanswer+"&answers="+answers+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&tixing="+tixing+"&jiexihuidiao="+jiexihuidiao+"&days="+days+"&dateTime="+dateTime+"&integral="+integral+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""; 
        }  
        
        
        
        
        //下一题
        function btnbindclick(dataid,knowledge_Name,datas) {//在QueInIt()方法中农调用此方法
            $(".btnanniu").click(function () {//用选择器获取到上一题按钮，给与点击事件
                var page = $(this).prop("page");//设置变量，获取页面中所有page属性，变量值为page属性值（0,1,2,3等）
                var  Dpage = $(this).prop("id");
                var bpage = parseInt(page) + 1;
                if(bpage == 7){
                	 Jexi(knowledge_Name,datas);//当bpage为7时说明已经是第五到题了，后面已经没有题目了这时就执行Jexi方法，将选择的数据传给解析页面。
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
			/* 	alert("角标"+page); */
				$("#comlcount").text(size);//将页码值给与题数显示span标签//$("#comlcount").text(size)是jquery给与span的标签文本文件的方法
			    var  width = 20;//进度条初始值为20
				var  widths = width*size;//每页进度占比等于初始值乘以页码
				$("#progress").css("width",widths + "%");//通过字符串拼接的方式给进度条宽度赋值		
				//根据id判断当前页面（题目），给与相应的解析
				
				if("que1" == dataid[parseInt(page - 1)]){
					$("#correct").text(answerss[0]);//第一道题的正确答案
					$("#my").text(queanswers[0]);//用户选择的第一个答案
					var questions_json  = JSON.parse(datas[0].questions_json); 
					$("#cankaojiexi").text(questions_json.answerAnalysis);//第一道题的解析
					answerAddClass(dataid[parseInt(page - 1)],answerss[0],queanswers[0])
				}
				if("que2" == dataid[parseInt(page - 1)]){
					$("#correct").text(answerss[1]);//第二道题的正确答案
					$("#my").text(queanswers[1]);//用户选择的第二个答案
					var questions_json  = JSON.parse(datas[1].questions_json); 
					$("#cankaojiexi").text(questions_json.answerAnalysis);//第二道题的解析
					
					answerAddClass(dataid[parseInt(page - 1)],answerss[1],queanswers[1])
					
				}
				if("que3" == dataid[parseInt(page - 1)]){
					$("#correct").text(answerss[2]);
					$("#my").text(queanswers[2]);
					var questions_json  = JSON.parse(datas[2].questions_json); 
					$("#cankaojiexi").text(questions_json.answerAnalysis);
					answerAddClass(dataid[parseInt(page - 1)],answerss[2],queanswers[2])
				}
				if("que4" == dataid[parseInt(page - 1)]){
					$("#correct").text(answerss[3]);
					$("#my").text(queanswers[3]);
					var questions_json  = JSON.parse(datas[3].questions_json); 
					$("#cankaojiexi").text(questions_json.answerAnalysis);
					answerAddClass(dataid[parseInt(page - 1)],answerss[3],queanswers[3])
				}
				if("que5" == dataid[parseInt(page - 1)]){
					$("#correct").text(answerss[4]);
					$("#my").text(queanswers[4]);
					var questions_json  = JSON.parse(datas[4].questions_json); 
					$("#cankaojiexi").text(questions_json.answerAnalysis);
					answerAddClass(dataid[parseInt(page - 1)],answerss[4],queanswers[4])
				}
				
				
                var upage = page;//定义一个变量upage值就是上面获取到的页面所有page属性值
                var dpage = parseInt(page) + 1;//设置变量dpage，变量值为页面page属性（页码）的值加一
				$("#" + queid).show();//根据data中id的值来显示题目页面。$("#" + queid)选择器拼接方法
                if (upage <= 1) {//如果属性值小于一
                    $("#Lpage").hide();//隐藏上一页的按钮
                } else {
                    $("#Lpage").show();//否则显示上一页按钮
                }
                
				
                if (dpage > dataid.length) {//如果dpage的长短大于data json数据的长度.也就是说后面没有题了
                 /*  $("#Dpage").hide(); */ //就让下一页按钮隐藏
                  	/* console.log("dpage的值"+dpage); */
                  /*   $("#Dpage").html("交卷");//如果后面没题了，就改变下一页按钮的提示文字为交卷
                    $("#Dpage").addClass("btn-warning");//改变交卷按钮颜色 */
                    $("#Dpage").html("回到主页面");//如果后面没题了，就改变下一页按钮的提示文字为交卷
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
        
        function answerEq(useranswer,queanswer){
        	var isok=false;
        	if(useranswer==queanswer){
        		console.log("选择的与正确答案相等"); 
        		isok=true;
        	}
        return  isok;
        }
        
        function answerAddClass(id,useranswer,queanswer){
        	var isok=answerEq(useranswer,queanswer);
     
    		$.each(queanswer.split(''),function(x,item){//循环出queanswer（用户选择的答案）中所有元素
    			if(isok){//如果相等
    				$("#"+id+item+"option").addClass("rightOK");//rightOK
    			}else{//如果不相等
    				$("#"+id+item+"option").addClass("rightError");//rightError
    			}
    		});
    		$.each(useranswer.split(''),function(x,item){//循环出useranswer（用户选择的答案）中所有元素
    			if(isok){//如果相等
    				$("#"+id+item+"option").addClass("rightOK");//rightOK
    			}else{//如果不相等
    				$("#"+id+item+"option").addClass("rightOK");//rightError
    			}
    		});
        }
    </script>
	


</body>
</html>