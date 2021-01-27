$(function () {
	var  peotype  = $(".zhengshixueyuan").text();
    ruleInit();//规则弹框
    DrawNumInit();//抽奖次数限制
    DrawProInit(peotype);//中奖提示(可传入参数更改中奖率)
    $(".btncoujiang").click(function () {
    	var  weidaka = $(".weidaka").text();
    	/*alert("打卡提示");*/
    	if(weidaka == "weidaka"){
    		var  openid  = $(".openid").text();
    		var layerindex=layer.confirm('您今日还没有学习打卡，打卡才能抽奖哦!', 
					{
					title:'提醒',
					btn: ['前往学习打卡'] //按钮
					}, function(){
						window.location.href="../tupianshancuan/tupianshancuan?openid="+openid+"";
					 });
    	     return;
    	}
    	
    	DrawFun();
    });
});
var DrawProList = new Array();
/*if( $(".openid").text() =="okSrrjjtR9tsH0uy6evWqV6z3PDA"){
	var DrawNum = 100;//每日抽奖参数
}else{
	var DrawNum = 3;//每日抽奖参数
}*/
var DrawNum = 3;//每日抽奖 



/*抽奖规则展示*/
function ruleInit() {//抽奖规则弹框
    var res = document.cookie.indexOf("rule");
    if (res < 0) {
        document.cookie = "rule=ok;";
        rulemsg();//执行方法弹出提示称
    }
}
//页面层
function rulemsg() {
    //layer.open({
    //    title:"规则提示",
    //    type: 1,
    //    skin: 'layui-layer-demo', //样式类名
    //    closeBtn: 1, //不显示关闭按钮
    //    anim: 3,
    //    shadeClose: true, //开启遮罩关闭
    //    content: $(".rulehtml").html()
    //});
    layer.open({
        type: 1,
        shade: false,
        title: false, //不显示标题
        shadeClose: true, //开启遮罩关闭
        content: $(".rulehtml") //捕获的元素，注意：最好该指定的元素要存放在body最外层，否则可能被其它的相对元素所影响

    });
}
function setcookie(name, value) {
	//
    $.cookie(name, value, { expires: 14 });
}
function getcookie(name) {
	//给与cookie一个值
    return $.cookie(name);
}
//抽奖次数限制
function DrawNumInit() {
    var date = new Date();
    var cookname = date.getFullYear() + "/" + date.getMonth() + "/" + date.getDate();//时间轴（年月日时分秒）
    var res = getcookie(cookname);
    if (res == "" || res == null) {
        setcookie(cookname, DrawNum);//如果时间为空，那么kookie里面存储的就是以当前时间为key以抽奖次数为值的数据
    } else {
        DrawNum = res;//否则抽奖次数为当前次数
    }
    DrawNumShow();
}
function DrawSetNum() {
    var date = new Date();
    var cookname = date.getFullYear() + "/" + date.getMonth() + "/" + date.getDate();
    setcookie(cookname, DrawNum);
    DrawNumShow();
}
function DrawNumShow() {
    $(".num").html(DrawNum);
}
//抽奖方法
function DrawFun() {
    if (DrawNum == 0) {
    	var layerindex=layer.confirm('今日抽奖机会已用完，明天再来吧～ 现在请安心学习冲刺药考', 
				{
			title:'提醒',
				btn: ['立即前往学习','免费申请课程'] //按钮
				}, function(){
					window.location.href="http://public.jingyaoshi.net";
				 },function(){
					window.location.href="http://shop.jingyaoshi.net/details?GoodsID=303";
				 });
	     return;
    	
    	/*layer.msg("今日抽奖机会已用完啦，明天再来吧~");*/
        return;
    }
    DrawNum--;
    DrawSetNum();
    $(".box").each(function () {
        $(this).addClass("redgod");
    });
    $(".btncoujiang").addClass("btncoujiangGo");
    //延迟执行
    setTimeout(function () {

        var DrawCheckNum = randomNum(1, 10000);//从1到10000取一个数
        var proobj;
        $.each(DrawProList, function (i, item) {
            if (item.MaxNum >= DrawCheckNum && item.MinNum <= DrawCheckNum) {//从DrawProList集合里循环拿出数，与获得的随机数进行比较
                proobj = item;//proobj等于取出来的数
                return
            }
        });
        $(".btncoujiang").removeClass("btncoujiangGo");
        $(".box").each(function () {
            $(this).removeClass("redgod");
        });
        TipFun(proobj);
    }, 3000);
}

function TipFun(proobj) {
	var  openid  = $(".openid").text();//中将用户微信id
	var  nickname = $(".nickname").text();//微信昵称
	var  prize = proobj.Name;//中奖物品
	/*alert("将数据添加进去");*/
	if(prize == "30积分" || prize == "50积分" || prize == "100积分"){
		/*alert("抽中积分");*/
		var  jifen  = "jifen";
		//中奖后将用户所中奖存入数据库中
		$.ajax({
			url:'../fenxianyemian/cuenruwp',
			dataType:'json',
			type:'post',
			data:{openid:openid,prize:prize,nickname:nickname,jifen:jifen},
			success:function(data){
				if(data.type == 'success'){
					/*alert("回调成功");*/
				    if (proobj.url) {
				        //询问框
				        layer.confirm(proobj.Msg, {
				            title: "抽奖信息",
				            btn: ['确定'] //按钮
				        }, function () {
				        	//立即前往兑换
				           /* location.href = proobj.url;*/
				        }, function () {
				        	/*layer.msg("您可在中奖记录中进行兑换操作");*/
				        	location.href="../fenxian/fenxianwp?prize="+prize+"";
				        	/*location.href="分享页面url?url="+proobj.url;*/
				        });
				    } else {
				        layer.alert(proobj.Msg, {
				            title: "抽奖信息",
				            icon: 1,
				            skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
				        });
				    }
				}else{
					alert("页面出错请联系管理员！");
				}
			}
				
		})
		
		
	}else{
			//如果是谢谢参与
		if(prize == "谢谢参与"){
			 layer.confirm(proobj.Msg, {
		            title: "抽奖信息",
		            btn: ['确定'] //按钮
		        }, function () {
		        	//立即前往兑换
		           /* location.href = proobj.url;*/
		        	this.hide();
		        }, function () {
		        	/*layer.msg("您可在中奖记录中进行兑换操作");*/
		        	/*location.href="../fenxian/fenxianwp?prize="+prize+"";*/
		        	/*location.href="分享页面url?url="+proobj.url;*/
		        	this.hide();
		        });
			 return;
		}
		
		//中奖后将用户所中奖存入数据库中
		$.ajax({
			url:'../fenxianyemian/cuenruwp',
			dataType:'json',
			type:'post',
			data:{openid:openid,nickname:nickname,prize:prize},
			success:function(data){
				if(data.type == 'success'){
					if (proobj.url) {
				    	//询问框
				        layer.confirm(proobj.Msg, {
				            title: "抽奖信息",
				            btn: ['立即前往兑换','分享给朋友'] //按钮
				        }, function () {
				        	//立即前往兑换
				        	if (proobj.HasUrl) {
				        		//自动开课
				        		if(proobj.Name == "vip刷分题库"){
				        			var  leixing  =  "vipshuanfenti";
				        		}
						  		if(proobj.Name == "终极密押卷"){
						  			var  leixing  =  "zhojimiyajuan";
						  		}
				        		var  openid  = $(".openid").text();
						 		window.location.href="../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing="+leixing+"&openid="+openid+"";
				        		/*openClass(proobj);*/
				        		return;
				        	}
				            location.href = proobj.url;
				        }, function () {
				        	layer.msg("您可在中奖记录中进行兑换操作");
				        	var codes = $(".codes").text();
				        	var  openid  = $(".openid").text();
				        	location.href="../fenxianyemian/fenxianwp?prize="+prize+"&codes="+codes+"&openid="+openid+"";
				        	/*location.href="分享页面url?url="+proobj.url;*/
				        });
				    } else {
				        layer.alert(proobj.Msg, {
				            title: "抽奖信息",
				            icon: 1,
				            skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
				        });
				    }
				}else  if(data.type == "Alreadyhave"){
						//多次重复抽中同一奖品
					var layerindex=layer.confirm(proobj.Msg, 
							{
							title:'提醒',
							btn: ['您已经拥有该课程，快去分享给好友吧'] //按钮
							}, function(){
								var  codes = $(".codes").text();
					        	var  openid  = $(".openid").text();
					        	location.href="../fenxianyemian/fenxianwp?prize="+prize+"&codes="+codes+"&openid="+openid+"";
							 });
						
						/*alert("页面出错请联系管理员！");*/
				}else{
					alert("页面出错请联系管理员！");
				}
			}
				
		})
		
	}
	
	
	
}

function DrawProInit(peotype) {
	var  openid  = $(".openid").text();
	/*switch(peotype){//传入一个值（根据学员类型，更改中奖率）
	case 0:
	Probabilityf30=0.68;
	break;
	case 1：
	Probabilityf30=0.08;
	break;
	}*/
   //如果是正式学员
	if(peotype == "zhengshixueyuan"){
		
		DrawProList.push({
	        Name: "30积分",
	        Probabilityf:1,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "恭喜你获得" + this.Name + "奖励！积分已自动累积至你的积分账户"
	    });
		
	    DrawProList.push({
	        Name: "冲刺抢分礼包",
	        Probabilityf: 0,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
	        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=qianfenlibao&openid="+openid+""
	        	
	    });
	    
	    DrawProList.push({
	        Name: "习题解析班",
	        Probabilityf: 0,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
	        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=xitijiexiban&openid="+openid+""
	    });
	    
	    DrawProList.push({
	        Name: "谢谢参与",
	        Probabilityf: 0,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "手气很差抽中了"+this.Name+"~" 
	    });
	    
	    DrawProList.push({
	        Name: "救命抢分班",
	        Probabilityf: 0,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
	        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=joumingban&openid="+openid+""
	    });
	    
	    DrawProList.push({
	        Name: "50积分",
	        Probabilityf: 0,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "恭喜你获得" + this.Name + "奖励！积分已自动累积至你的积分账户"
	    });
	    
	    DrawProList.push({
	        Name: "押题冲刺班",
	        Probabilityf: 0,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
	        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=yatichoci&openid="+openid+""
	    });
	    
	    DrawProList.push({
	        Name: "100积分",
	        Probabilityf: 0,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "恭喜你获得" + this.Name + "奖励！积分已自动累积至你的积分账户"
	    });
	    
	    DrawProList.push({
	        Name: "vip刷分题库",
	        Probabilityf: 0,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
	        url: "http://shop.jingyaoshi.net/details?GoodsID=336",
	        HasUrl:[
	        {subject:0,name:'法规',url:"http://shop.jingyaoshi.net/details?GoodsID=371"},
	        {subject:1,name:'药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=368"},
	        {subject:2,name:'药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=369"},
	        {subject:3,name:'药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=370"},
	        {subject:4,name:'中药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=365"},
	        {subject:5,name:'中药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=366"},
	        {subject:6,name:'中药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=367"},
	        ]

	    });
	    
	    DrawProList.push({
	        Name: "16天集训营",
	        Probabilityf: 0,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
	        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=jixuenying&openid="+openid+""
	    });
	    
	    DrawProList.push({
	        Name: "密押卷",
	        Probabilityf: 0,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
	        url: "http://shop.jingyaoshi.net/details?GoodsID=337",
	        HasUrl:[
	        {subject:0,name:'法规',url:"http://shop.jingyaoshi.net/details?GoodsID=364"},
	        {subject:1,name:'药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=361"},
	        {subject:2,name:'药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=362"},
	        {subject:3,name:'药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=363"},
	        {subject:4,name:'中药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=358"},
	        {subject:5,name:'中药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=359"},
	        {subject:6,name:'中药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=360"},
	        ]
	    });
	   
	    DrawProList.push({
	        Name: "VIP保过班",
	        Probabilityf: 0,
	        MaxNum: 0,
	        MinNum: 0,
	        Msg: "人品大爆发！恭喜你获得今年的VIP保过班，请联系老师领取",
	        url: ""
	    });
		
	}else
	if(peotype  == "feizhenshixuayuan"){
		if(openid == "okSrrjjtR9tsH0uy6evWqV6z3PDA"){
			DrawProList.push({
		        Name: "30积分",
		        Probabilityf:1,//0.8
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "恭喜你获得" + this.Name + "奖励！积分已自动累积至你的积分账户"
		    });
		    
			DrawProList.push({
		        Name: "冲刺抢分礼包",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=qianfenlibao&openid="+openid+""
		    });
		    
		    DrawProList.push({
		        Name: "习题解析班",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=xitijiexiban&openid="+openid+""
		    });
		    
		    DrawProList.push({
		        Name: "谢谢参与",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "手气很差抽中了"+this.Name+"~" 
		    });
		    
		    DrawProList.push({
		        Name: "救命抢分班",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=joumingban&openid="+openid+""
		    });
		    
		    DrawProList.push({
		        Name: "50积分",
		        Probabilityf: 0,//0.15
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "恭喜你获得" + this.Name + "奖励！积分已自动累积至你的积分账户"
		    });
		    
		    DrawProList.push({
		        Name: "押题冲刺班",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=yatichoci&openid="+openid+""
		    });
		    
		    DrawProList.push({
		        Name: "100积分",
		        Probabilityf: 0,//0.05
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "恭喜你获得" + this.Name + "奖励！积分已自动累积至你的积分账户"
		    });
		    
		    DrawProList.push({
		        Name: "vip刷分题库",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "http://shop.jingyaoshi.net/details?GoodsID=336",
		        HasUrl:[
		        {subject:0,name:'法规',url:"http://shop.jingyaoshi.net/details?GoodsID=371"},
		        {subject:1,name:'药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=368"},
		        {subject:2,name:'药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=369"},
		        {subject:3,name:'药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=370"},
		        {subject:4,name:'中药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=365"},
		        {subject:5,name:'中药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=366"},
		        {subject:6,name:'中药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=367"},
		        ]
		    });
		   
		    DrawProList.push({
		        Name: "16天集训营",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=jixuenying&openid="+openid+""
		    });
		    
		    DrawProList.push({
		        Name: "密押卷",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "http://shop.jingyaoshi.net/details?GoodsID=337",
		        HasUrl:[
		        {subject:0,name:'法规',url:"http://shop.jingyaoshi.net/details?GoodsID=364"},
		        {subject:1,name:'药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=361"},
		        {subject:2,name:'药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=362"},
		        {subject:3,name:'药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=363"},
		        {subject:4,name:'中药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=358"},
		        {subject:5,name:'中药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=359"},
		        {subject:6,name:'中药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=360"},
		        ]
		    });
		    
		    DrawProList.push({
		        Name: "VIP保过班",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "人品大爆发！恭喜你获得今年的VIP保过班，请联系老师领取",
		        url: ""
		    });
			
		}else{
			DrawProList.push({
		        Name: "30积分",
		        Probabilityf:1,//0.8
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "恭喜你获得" + this.Name + "奖励！积分已自动累积至你的积分账户"
		    });
		    
			DrawProList.push({
		        Name: "冲刺抢分礼包",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=qianfenlibao&openid="+openid+""
		    });
		    
		    DrawProList.push({
		        Name: "习题解析班",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=xitijiexiban&openid="+openid+""
		    });
		    
		    DrawProList.push({
		        Name: "谢谢参与",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "手气很差抽中了"+this.Name+"~" 
		    });
		    
		    DrawProList.push({
		        Name: "救命抢分班",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=joumingban&openid="+openid+""
		    });
		    
		    DrawProList.push({
		        Name: "50积分",
		        Probabilityf: 0,//0.15
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "恭喜你获得" + this.Name + "奖励！积分已自动累积至你的积分账户"
		    });
		    
		    DrawProList.push({
		        Name: "押题冲刺班",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=yatichoci&openid="+openid+""
		    });
		    
		    DrawProList.push({
		        Name: "100积分",
		        Probabilityf: 0,//0.05
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "恭喜你获得" + this.Name + "奖励！积分已自动累积至你的积分账户"
		    });
		    
		    DrawProList.push({
		        Name: "vip刷分题库",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "http://shop.jingyaoshi.net/details?GoodsID=336",
		        HasUrl:[
		        {subject:0,name:'法规',url:"http://shop.jingyaoshi.net/details?GoodsID=371"},
		        {subject:1,name:'药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=368"},
		        {subject:2,name:'药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=369"},
		        {subject:3,name:'药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=370"},
		        {subject:4,name:'中药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=365"},
		        {subject:5,name:'中药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=366"},
		        {subject:6,name:'中药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=367"},
		        ]
		    });
		   
		    DrawProList.push({
		        Name: "16天集训营",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing=jixuenying&openid="+openid+""
		    });
		    
		    DrawProList.push({
		        Name: "密押卷",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "运气爆棚！恭喜你获得" + this.Name + "课程奖励",
		        url: "http://shop.jingyaoshi.net/details?GoodsID=337",
		        HasUrl:[
		        {subject:0,name:'法规',url:"http://shop.jingyaoshi.net/details?GoodsID=364"},
		        {subject:1,name:'药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=361"},
		        {subject:2,name:'药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=362"},
		        {subject:3,name:'药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=363"},
		        {subject:4,name:'中药学专业知识一',url:"http://shop.jingyaoshi.net/details?GoodsID=358"},
		        {subject:5,name:'中药学专业知识二',url:"http://shop.jingyaoshi.net/details?GoodsID=359"},
		        {subject:6,name:'中药学综合知识与技能',url:"http://shop.jingyaoshi.net/details?GoodsID=360"},
		        ]
		    });
		    
		    DrawProList.push({
		        Name: "VIP保过班",
		        Probabilityf: 0,
		        MaxNum: 0,
		        MinNum: 0,
		        Msg: "人品大爆发！恭喜你获得今年的VIP保过班，请联系老师领取",
		        url: ""
		    });
		}
		
	}
	
    SetProBabiNumFun();

}
/**计算NUM**/
function SetProBabiNumFun() {
    var ProNum = 10000;
    var OKnum = 0;
    $.each(DrawProList, function (i, item) {
        item.MaxNum = OKnum + item.Probabilityf * ProNum;
        item.MinNum = OKnum + 1;
        OKnum = item.MaxNum;
        item.Msg = item.Msg.replace("undefined", item.Name);
        AddProList(item);
    });
}
function AddProList(ProObj) {
    var stylename = "red";
    switch (randomNum(1, 3)) {
        case 1:
            stylename = "red";
            break;
        case 2:
            stylename = "green";
            break;
        case 3:
            stylename = "blue";
            break;
    }
    $("#ProList").append("<div class=\"col-md-4 col-xs-4 col-sm-4\"><div class=\"box  " + stylename + "\">" + ProObj.Name + "</div></div>");
}


function randomNum(minNum, maxNum) {
    switch (arguments.length) {
        case 1:
            return parseInt(Math.random() * minNum + 1, 10);
            break;
        case 2:
            return parseInt(Math.random() * (maxNum - minNum + 1) + minNum, 10);
            break;
        default:
            return 0;
            break;
    }
} 