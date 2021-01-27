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
     <script src="../resources/admin/js/flexible.js"></script>
    <title>答题卡</title>
    <style>
	
	html{
        background: #f1f1f1;
    }
    body{
        max-width: 1000px;
        min-width: 320px;
        margin: 0 auto;
        background: #f7f7f7;
    }
    .warpper{
        width: 100%
    }
    .head-box{
        padding: 0.555556rem  0 1.851852rem 0;
    }
    .question-type{
        width: calc(100% - 0.555556rem) ;
        margin-left: 0.277778rem;
        background: #fefefe;
        margin: 0 auto;
        margin-bottom: 0.277778rem;
        border-radius: 5px;
    }
    .question-type>ul{
        margin-left: 0.185185rem;
        padding: 0.185185rem 0;
    }
    .question-type>ul>li{
        display: inline-block;
        width: 0.925926rem;
        height: 0.925926rem;
        border-radius: 50%;
        border: 1px solid #ccc;
        margin: 0.185185rem 0.37037rem;
        text-align: center;
        line-height: 0.925926rem;
        font-size: 0.333333rem;
        font-weight: 500;
        color: #6e6e6e;
        cursor: pointer;
    }
    p{
        font-size: 0.462963rem;
        color: #f09d46;
        padding: 0.277778rem 0 0 0.37037rem;
        font-weight: 700;
    }
    .foot{
        position: fixed;
        bottom: 0;
        height: 1.481481rem;
        width: 100%;
        max-width: 1000px;
        background: #fff;
        border-top: 1px solid rgb(241, 241, 241) ;
    }
    button{
        display: block;
        font-size: 0.462963rem;
        border: 0;
        background: content-box;
        color: #f09d46;
        margin: 0 auto;
        line-height: 1.481481rem ;
        cursor: pointer;
    }
   
   
   /*-- 数据隐藏 --*/
   .kemu{
   		display:none;
    }
   .knowledge_Id{
   		display:none;
    }
   .nickname{
   		display:none;
    }
   .openid{
   		display:none;
    }
   .headimgurl{
   		display:none;
   }
   .days{
   		display:none;
    }
   .dateTime{
   		display:none;
    }
   .integral{
   		display:none;
    }
   .lv1state{
   		display:none;
    }
   .lv2state{
   		display:none;
    }
   .lv3state{
   		display:none;
    }
   .timushusize{
   		display:none;
    }
   .kemuZYHXY{
   		display:none;
    }
  /*-------------*/
      /*--下排按钮--*/
      .xiapaiann{
				background-color:#D3D3D3;      
      			height:60px;
      			width:100%;
      			position:relative;
      			top:-35px;
       }
       /*--答题卡--*/
        .datika{
       		background-color:blue;
       		height:50px;
       		width:30%;
       		position:relative;
       		top:7%;
       		left:8%;
       		float:left;
       } 
       /*--视频--*/
       .shipin{
			background-color:blue;
       		height:50px;
       		width:30%;
       		position:relative;
       		top:7%;
       		left:62%;       
        }
      /*--单选题--*/
        .danxuan{
        		background-color:red;
        		width:100%;
        		height:300px;
         }
       .yanse{
			background-color:#f09d46;       
        }  
      
    </style>
</head>

<body>  
   		<div class="kemuZYHXY">${kemuZYHXY}</div>
        <div class="kemu">${kemu}</div>
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
		<div class="tixing">${tixing}</div><!-- 题型 -->
		<div class="timushusize">${timushusize}</div><!-- 总的题目数 -->
        <div class='row '>
        </div>
         <!-- 题目显示框 -->
       <div class="wrapper">
        <div class="head-box">
           
			<%-- <div class="question-type">
                <p>【单选题】</p>
                <ul>
                    <c:forEach items = "${chaxuenzhanjieshuoyti}" var = "chaxuenzhanjieshuoyti"  varStatus="ts"   begin="0">
                   		<c:if test="${'1'  == chaxuenzhanjieshuoyti.questions_Type}">
	                   		 <li  class=""  id="${chaxuenzhanjieshuoyti.questions_id}"  onclick="tishi('${chaxuenzhanjieshuoyti.questions_id}')">${ts.count}</li>
                   		</c:if>
                    </c:forEach>
                </ul>
            </div>  --%>          
           
              <div class="question-type">
                <p>【单选题】</p>
                <ul>
                    <c:forEach items = "${dangxuanti}" var = "dangxuanti"  varStatus="ts"   begin="0">
                   		 <li  class=""  id="${dangxuanti.questions_id}"  onclick="tishi('${dangxuanti.questions_id}')">${ts.count}</li>
                    </c:forEach>
                </ul>
            </div>
        	
        	<div class="question-type">
                <p>【多选题】</p>
                <ul>
                	 <c:forEach items = "${duoxuanti}" var = "duoxuanti"  varStatus="ts"   begin="0">
                   		<li  class=""  id="${duoxuanti.questions_id}"  onclick="tishi('${duoxuanti.questions_id}')">${ts.count}</li>
                     </c:forEach>
                </ul>
            </div>
        	
            <div class="question-type">
                <p>【配伍选择题】</p>
                <ul>
                	 <c:forEach items = "${bxingti}" var = "bxingti"  varStatus="ts"   begin="0">
                    	<li  class=""  id="${bxingti.questions_id}" onclick="tishi('${bxingti.questions_id}')">${ts.count}</li>
                     </c:forEach>
                </ul>
            </div>
            <div class="question-type">
                <p>【综合分析题】</p>
                <ul>
                	  <c:forEach items = "${zonheti}" var = "zonheti"  varStatus="ts"   begin="0">
                    	 <li  class=""  id="${zonheti.questions_id}"  onclick="tishi('${zonheti.questions_id}')">${ts.count}</li>
                      </c:forEach>
                </ul>
            </div>  
        </div>
        <div class="foot">
            <button>交卷并查看结果</button>
        </div>
    </div>
        
    
    <!-- 下排按钮 -->
    <!-- <div  class="xiapaiann">
		    答题卡
		    <div  class="datika"   onclick="datika()">
		    		<img  id="datikaimg"   alt="" src="">
		    </div> 
		    视频
		    <div class="shipin"  onclick="shipin()">
		    	   <img  id="shipinimg"  alt="" src="">
		    </div>
		    
    </div> -->
    
	<script type="text/javascript" src="../resources/admin/js/alertPopShow.js"></script>
	<script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
	<script type="text/javascript">
					var  locationABCDE = window.localStorage;
					var  locationquestions_id = window.localStorage;//题目id缓存
					var  id = locationquestions_id["questions_id"].split(','); //将字符串以空格分割拿出来（该章节中的所有题目id）
					var  datalength  =  $(".timushusize").text();
				//显示该章节下哪些题目已经做过
				$(function(){
					var  knowledge_Id = $(".knowledge_Id").text();
					var  questions_ids = [];//题目id数组 
					/* console.log("id:"+id); */
					 for(var k = 0;k<id.length;k++){//将选项循环拿出给与数组
                       	questions_ids[k] = id[k];//将分割出来的字符串拿出来一个个添加进数组中
                     }
					for(var j = 0;j<datalength; j++){
						  for(var i = 0;i<datalength;i++){
							  if(locationABCDE["que"+i+"answer"+questions_ids[j]]  != null){ 
			        			  /*  alert("不为空"); */
			        			      $("#"+questions_ids[j]).addClass("yanse");
			        		   } 
						  }
						
		        	} 
					
					
				})
				
				
				
			    
			   //点击答题卡
			  function  datika(){
					/*  var  knowledge_Id = $(".knowledge_Id").text();
					 var   datalengths = locationquestions_id["datalengths"+knowledge_Id]
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
								 		 	  
								 		   }
								 	}
								 }) */
			      	    	//给与提示
			      		/* var layerindex=layer.confirm('购买题库后可完整做题!', 
								{		
							      title:'提醒',
								btn: ['购买'] //按钮
								}, function(){
							  	 layer.close(layerindex);//弹框消失
							}); 
			      	    
			      		 return;
			      	   } */  
					 window.location.href="../tfcpractice/datika?openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"&knowledge_Id="+knowledge_Id+""; 
			    } 
			    
			    
			    
			  //点击进入直播视频
			  function  shipin(){
			    	 window.location.href="https://ke.qq.com/webcourse/index.html#cid=478537&term_id=100573496&taid=10760276056427849";  
			    }
        		
			 //小题点击效果
			 function  tishi(questions_id){//
	        		   //跳转进入做题页面
	  					var  kemuZYHXY = $(".kemuZYHXY").text(); 
	        		    var  kemu = $(".kemu").text();
	        		    var  knowledge_Id = $(".knowledge_Id").text();
	        		    var  nickname = $(".nickname").text();
	        		    var  openid = $(".openid").text();
	        		    var  headimgurl = $(".headimgurl").text();
	        		    var  days = $(".days").text();
	        		    var  integral = $(".integral").text();
	        		    var  dateTime = $(".dateTime").text();
	        		    var  lv1state = $(".lv1state").text();
	        		    var  lv2state = $(".lv2state").text();
	        		    var  lv3state = $(".lv3state").text();
	        		    var  tixing = $(".tixing").text();
	        		    if( locationquestions_id["gomai"+knowledge_Id] != null &&   locationquestions_id["gomai"+knowledge_Id] != ""){
	        		    	//传入一个参数，用于判断是否是从答题卡中进入的
		        		    	var  datika  = "datika";
					 			 $("#"+questions_id).addClass("yanse");
		  						 setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
		  						 	$("#"+questions_id).removeClass("yanse");
		  								},60);
		        		   		 window.location.href="../tfcpractice/practice?knowledge_Id="+knowledge_Id+"&kemu="+kemu+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&kemuZYHXY="+kemuZYHXY+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"&datika="+datika+"&questions_id="+questions_id+"";
	        		    }else {
	        		    	var layerindex=layer.confirm('购买题库后可完整做题!', 
	        						{		
	        					      title:'提醒',
	        						btn: ['购买'] //按钮
	        						}, function(){
	        					  	 layer.close(layerindex);//弹框消失
	        					}); 
						} 
	        		     
			 }
			 
			  
    </script>

</body>
</html>