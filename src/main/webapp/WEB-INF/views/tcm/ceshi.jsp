<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <title>切换科目</title>
    <style>
		
		
		
		
		
		
    </style>
</head>
<body>
	
	<body class="bodybgfff">
<!-- 头部start -->
<header class="trx_header clearfix">
    <h1>节日贺卡</h1>
    <div class="fl trx_return"><a href="../page/personalCenter.html"></a></div>
</header>
<!-- 头部搜索end -->
<!-- 海报start -->
<input type="hidden" id="posterType" value="02"/>
<div class="my_haibao">
    <ul class="haibao-list" id="my_poster_id">

    </ul>
</div>
<img style="display:none" class="qdb_nocotent no_search_data" src="../img/search_no.png" alt="" >
<p style="display:none" class="search_not_text no_search_data">暂时木有海报哦</p>
<!-- 海报end -->


<!-- 弹出层end -->
<div class="mark" ></div>
<div class="haibao-show">
    <span class="btn-close-haibao"></span>
    <img src="img/app-down-bg.jpg" alt="" id="picurl"/>
    <p id="successHint" style="display:none">图片已保存到相册，可分享给好友</p>
    <p id="failHint" style="display:none">图片保存失败</p>
    <a href="#" onclick="javascript:savePic();">保存到相册</a>
</div>
		
	
	
<script type="text/javascript">
	
	
$(document).ready(function(){
    pageShow = 9;
    nowPage = 1;
    loadDataId="my_poster_id";
    /*var url = window.basePath + "/h5/front/poster/toPoster";
    $.ajax({
        url: url,
        type: 'GET',
        dataType: 'json',
        data: {},
        success: function (rest) {
            $("#salesmanUuid").val(rest.data.salesmanUuid);
        }
    })*/

    pageCallBack()
});
function pageCallBack(){
    loadPosterContent();
}
function loadPosterContent(){
    var storeNo = getSessionStoreNo();
    var posterType = $("#posterType").val();
    var url = window.basePath + "/h5/front/poster/ajaxSearchPoster";
    $.ajax({
        url: url,
        type: 'POST',
        dataType: 'json',
        data: {currentPage: nowPage,pageShow:pageShow,storeNo:storeNo,posterType:posterType},
        success: function (rest) {
            console.log(rest)
            if(rest.result){
                appendPosterResult(rest);
            }else{
                $(".no_search_data").show();
            }
            console.log('start')
        }
    })
}
//拼接加载出来的产品
function appendPosterResult(data){
    var results = data.results;
    if(results!=null&&results.length>0){
        var appendHtml = "";
        for(var i=0;i<results.length;i++){
            var poster = results[i];
            //appendHtml += '<li><a href="javascript:void(0);" onclick="toPosterPage(\''+poster.uuid+'\',\''+poster.posterTitle+'\')"><img src="'+poster.posterImgUrl+'" alt=""/><p>'+poster.posterTitle+'</p></a></li>';
            appendHtml +='<li>'
                        +'<a href="#"><img src="'+poster.posterImgUrl+'" alt=""/><p>'+poster.posterTitle+'</p></a>'
                       +'</li>';
        }
        $("#my_poster_id").append(appendHtml);
        $(".no_search_data").hide();
    }else{
        if(nowPage==1){
            totalPage = data.totalPage;
            $(".no_search_data").show();
        }
    }
    nowPage++;
    initPreviewJs();
}


//初始化图片预览效果js
function initPreviewJs(){
       $(".haibao-list li img").click(function(){
            var imgSrc = $(this)[0].src;
            $(".mark").fadeIn();
            $(".haibao-show").fadeIn().children("img").attr("src",imgSrc);
            
        })

    $(".btn-close-haibao,.mark").click(function(){
            $(".mark").fadeOut();
            $(".haibao-show").fadeOut();
            $("#successHint").hide();
            $("#failHint").hide();
            
        })
}

//保存到相册
function savePic(){         
    var picurl= $("#picurl").attr("src");
    //alert(picurl);
    savePicture(picurl);
}




var triggerEvent = "touchstart";
function savePicture(Url){
    var blob=new Blob([''], {type:'application/octet-stream'});
    var url = URL.createObjectURL(blob);
    var a = document.createElement('a');
    a.href = Url;
    a.download = Url.replace(/(.*\/)*([^.]+.*)/ig,"$2").split("?")[0];
    var e = document.createEvent('MouseEvents');
    e.initMouseEvent('click', true, false, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);
    a.dispatchEvent(e);
    URL.revokeObjectURL(url);
}
	
	
</script>
</body>
</html>