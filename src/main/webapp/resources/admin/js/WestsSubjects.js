
 	   function  QueInIt(){
 		  /*  var  word =  $(".course").text();
 		   console.log(word) */
 		   //药事管理与法规
 		   $("#FG").click(function(){
 			  var  id = $(".course  #FG").prop("id");
 			  var subjectsid= $(".course  #FG").prop("id");
 			   console.log("题型"+subjectsid);    
 			  var  text = $("#FG").text();//获取到当前点击的a标签中的文本文档
 			   console.log("题型id"+text);   
 			 $("#FG").css("background-color","#DAA520");//点击a标签后给a标签一个背景颜色
 			 $("[id != FG]").css("background-color","");//同时删除id不为FG的标签的背景颜色
 			 if(id == "FG"){
 				$("#btn").click(function(){ 
 					 $("#jump").attr("href","../West/West?subjectsid="+Westid+"");  //后台在根据装题型的div的id的不同跳转的页面不同
 				})
 			 }    
 		   })
 		   //药学专业知识一
 	   	 $("#ZY").click(function(){
 	   		var  id = $(".course  #ZY").prop("id");
 	   		var  text = $("#ZY").text();
 	   			 console.log(text); 
 	   		var Westid= $(".course  #ZY").prop("id");
 			$("#ZY").css("background-color","#DAA520");
 			$("[id!=ZY]").css("background-color","");
 			if(id  == "ZY"){
 				$("#btn").click(function(){
 					 $("#jump").attr("href","../West/West?subjectsid="+Westid+"");
 				})
 			}
 		   })
 		   //药学专业知识二
 		  $("#ZE").click(function(){
 			 var  id = $(".course  #ZE").prop("id");
 	   		 var  text = $("#ZE").text();
 	   		 var subjectsid= $(".course  #ZE").prop("id");
 			 $("#ZE").css("background-color","#DAA520");
 			 $("[id!=ZE]").css("background-color","");
 			 if(id == "ZE"){
 				 $("#btn").click(function(){
 					 $("#jump").attr("href","../West/West?subjectsid="+Westid+"");
 				 })
 			 }
 		   })
 		   //药学综合知识与技能
 		  $("#ZH").click(function(){
 			 var  id = $(".course  #ZH").prop("id");
 	   		 var  text = $("#ZH").text();
 	   		 var subjectsid= $(".course  #ZH").prop("id");
 			 $("#ZH").css("background-color","#DAA520");
 			 $("[id!=ZH]").css("background-color","");
 			 if(id == "ZH"){
 				 $("#btn").click(function(){
 					$("#jump").attr("href","../West/West?subjectsid="+Westid+"");
 				 })
 			 }
 		   })
 	   
 	   }