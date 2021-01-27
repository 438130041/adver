<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%><!-- jsp标签库（c:forEach等标签） -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
  	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <!-- <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  -->
    <!--  <script  type="text/javascript"  src="../resources/admin/js/jquery-1.10.1.min.js"></script>  -->
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <title>兑换码兑换</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0); 
        }
        body{
            background-color: #f6f5ec;
            max-width: 1080px;
            min-width: 320px;
            margin: 0 auto;
        }
        a{
            text-decoration: none;
            color: #464547;
        }
        .head_warp{
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }
        .warp{
            margin: 1rem 0;
            display: flex;
        }
        .warp .logo{
            width: 5rem;
            height: 1.8rem;
            margin-left: 1rem;
            background: url(../resources/admin/login/img/logo.png) no-repeat 0 0.2rem;
            background-size: 5rem;
        }
        .setup{
            position: absolute;
            right: 0;
            line-height: 2rem;
            margin-right: 1.5rem;
            font-size: 0.75rem;
        }
        .times{
            position: absolute;
            top: 4rem;
            left: 50%;
            margin-left: -4rem;
            display: inline-block;
            width: 8rem;
            height: 8rem;
        }
        .times img{
            width: 8rem;
            height: 8rem;
            color: #ed1941;
        }
        .datetime{
            position: absolute;
            top: 3.8rem;
            left: 50%;
            margin-left: -4rem;
            width: 8rem;
            height: 8rem;
        }
        .date{
            font-size: 1rem;
            text-align: center;
            margin-top: 1.5rem;
        }
        .day{
            font-size: 2.5rem;
            text-align: center;
            font-weight: 600;
            padding-top: 0.2rem; ;

        }
        .week{
            font-size: 0.8rem;
            text-align: center;
        }
        .practice{
            position: absolute;
            top: 14rem;
            left: 50%;
            margin-left: -35%;
            width: 70%;
            margin-top: -1.5rem;
            text-align: center;
        }
        .practice p{
            padding-top: 0.4rem;
            font-size: 0.6rem;
        }
        .starts{
            position:relative;
            top: 16rem;
            left: 50%;
            margin-left: -30%;
            width: 60%;
        }
        .start{
            width: 100%;
            background: #f26522;
            margin-bottom: 0.3rem;
            text-align: center;
            line-height: 2rem;
            border-radius: 2rem;
            cursor: pointer;
            font-size: 0.9rem;
            color: #ffffff;
        }
        .start a{
            
            font-size: 0.9rem;
            text-decoration: none;
        }
        .img{
        	height:40px;
        	width:40px;
        	}
        .setup a{
         	text-decoration: none;
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

               
        /* 兑换码输入弹框 */
        #createFileMModal{
        	display: none;
        }
       #tixin{
		     text-align:center;	
	    };
       #createFileTitle{
	         font-size: 30px;
	         text-align:center;	
	         color:#FF8C00;
	   }
	 #fractionPe{
	        margin-right:13px;
	  };
	 /* 新增头部 */
	 
        
        
        .start a{
            color: #ffffff;
        }
      .redeem{
      		display:none;
       } 
     #href{
     	text-decoration:none;
      }
     #earn{
        text-decoration:none;
       } 
     #integral{
        text-decoration:none;
       }
     .gifts{
     		display:none;
        }
      .hanshu{
      	display:none;
       }
    </style>
</head>
<body>
        <div class="redeem">${redeem}</div>
		<div class="nickname">${nickname}</div>
		<div class="openid">${openid}</div>
		<div class="headimgurl">${headimgurl}</div>
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
 <script type="text/javascript" src="../resources/admin/js/alertPopShow.js"></script>
 
 <script  type="text/javascript">
 	var  redeem = $(".redeem").text();
 	//获取到用户微信信息
  	var  nickname = $(".nickname").text();
  	var  openid = $(".openid").text();
  	var  headimgurl = $(".headimgurl").text();
  	  
  	  
      $(function(){
    	   //授权完后显示兑换码输入框
    	     if(redeem == "redeemphone"){
    	        	$("#createFileMModal").modal('show');
    	          	// 关闭弹框， 获取输入值，然后执行逻辑
    	          	$(".redeem").text("");
    	        }
      })
       
       
	  $("#createFileSureBut").click(function (){
              $("#createFileMModal").modal("hide");
              var inputFileName = $("#fileName").val();//兑换码
              $.ajax({
					url:'../codephone/codephone',
					dataType:'json',
					type:'post',
					data:{exchange:inputFileName,openid:openid},
					success:function(data){
						if(data.type == 'success'){
							alert("兑换码兑换成功，进入商城兑换商品");
							$(".redeem").text("");
							/* popTipShow.confirm('提示',+data.integral+'积分到账成功',['立即前往兑换奖品','做题赚取积分'],//前面的按钮是ok，后面按钮是cancel
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
							     ); */
							window.location.href="http://shop.jingyaoshi.net";
						}else if(data.type == 'erorr'){
							    alert("您输入的兑换码有误!");
							    $(".redeem").text("");
				        }else if(data.type == 'change') {
				        		alert("该兑换码已兑换!");
				        		window.location.href="http://shop.jingyaoshi.net";
				        		$(".redeem").text("");
				        	/* popTipShow.confirm('提示','该兑换码已兑换',['立即前往兑换奖品','做题赚取积分'],//前面的按钮是ok，后面按钮是cancel
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
	 												$(".redeem").text("");
	 											}, 0); 
	 										}
	 					 			       }
	 								     ); */
					    }
					}
				});      
          });
    </script>

</body>
</html>