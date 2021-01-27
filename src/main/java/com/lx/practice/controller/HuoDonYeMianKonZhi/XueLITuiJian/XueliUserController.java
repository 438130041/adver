package com.lx.practice.controller.HuoDonYeMianKonZhi.XueLITuiJian;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.HuoDongUser;
import com.lx.practice.service.huodongservice.XueLiTuiGuangService;
import com.lx.practice.util.Constant;
import com.lx.practice.util.EmojiFilter;
import com.lx.practice.util.IOEUtil;
import com.sun.tools.example.debug.expr.ParseException;

import net.sf.json.JSONObject;

/*@Slf4j*/
@Controller
@RequestMapping("/xuelituijian")
public class XueliUserController {
	
	@Autowired
	private  XueLiTuiGuangService xuelituiguangservice;
	
    
	// 微信公众号网页授权登录
    @RequestMapping(value ="wxLoginss",method=RequestMethod.GET)
    public String wxLogin(HttpServletRequest request,HttpServletResponse response,String  redeems,String gift) throws ParseException {
    		 System.out.println("进入学历提升授权");
            // 第一步：用户同意授权，获取code
            //WXAuthUtil.APPID 微信公众号的appenid 这个是微信公众号后台获取的
            String url ="https://open.weixin.qq.com/connect/oauth2/authorize?appid="+Constant.APP_ID
                            + "&redirect_uri="+ URLEncoder.encode("http://practice.jingyaoshi.net/xuelituijian/callBackss?redeem="+redeems+"&gift="+gift+"")//这个是我们回调的地址 在这里进行出来获取到用户的心
                            + "&response_type=code"
                            + "&scope=snsapi_userinfo"
                            + "&redeem="+redeems
                            + "&state=STATE#wechat_redirect";
            	System.out.println("下个方法");
            
          /*  qq授权方法    String  urlqq ="https://api.q.qq.com/sns/jscode2session?appid=APPID&secret=SECRET&js_code=JSCODE&grant_type=authorization_code";*/
            	
            return "redirect:"+url;//必须重定向，否则不能成功
    }
 
    
    

    //微信授权网页回调接口
    @RequestMapping(value ="callBackss",method=RequestMethod.GET)
    public ModelAndView callBack(ModelAndView model,ModelMap modelMap, HttpServletRequest req, HttpServletResponse resp,String redeem,String gift) throws Exception {
        //如果用户同意授权，页面将跳转至 redirect_uri/?code=CODE&state=STATE
        //https://xxxxx/xxxxx/callBackss.do?code=CODE&state=STATE
        //获取code  code作为换取access_token的票据
    	System.out.println("进入授权接口");
    	
        String code =req.getParameter("code");
        //第二步：通过code换取网页授权access_token (获取openid接口)
        //WXAuthUtil.APPID 公众号的Appid
        //WXAuthUtil.APPSECRET 公众号的APPSECRET 可以在微信公众号后台获取
        String url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="+Constant.APP_ID
                        + "&secret="+Constant.APP_SECRET
                        + "&code="+code
                        + "&grant_type=authorization_code";

        //发送请求 get提交 拿code凭证去获取openid和access_token
        JSONObject jsonObject = IOEUtil.doGetJson(url);

        String openid = jsonObject.getString("openid");
        String access_token = jsonObject.getString("access_token");
        String refresh_token = jsonObject.getString("refresh_token");

        //拿到用户openid 和access_token 去获取用户信息
        //第五步,验证access_token是否过期
        String chickUrl="https://api.weixin.qq.com/sns/auth?access_token="+access_token+"&openid="+openid;
        JSONObject chickuserInfo = IOEUtil.doGetJson(chickUrl);

        //由于access_token拥有较短的有效期，当access_token超时后，可以使用refresh_token进行刷新，refresh_token有效期为30天，当refresh_token失效之后，需要用户重新授权
        //如果发送错误，就有可能是access_token过期了 errcode 的值是 0 那么就是没有问题，access_token没有过期,不等于0就是过期，那么我们要去刷新access_token
        if(!"0".equals(chickuserInfo.getString("errcode"))){
                //第三步刷新access_token(刷新access_token接口)
                String refreshTokenUrl="https://api.weixin.qq.com/sns/oauth2/refresh_token?appid="+openid+"&grant_type=refresh_token&refresh_token="+refresh_token;

                JSONObject refreshInfo = IOEUtil.doGetJson(chickUrl);

                access_token=refreshInfo.getString("access_token");
        }

        //获取用户拿到openid 和access_token去获取用户信息，在页面中进行业务处理，获取存储在数据库中:
        //第四步(获取用户接口)
        String infoUrl = "https://api.weixin.qq.com/sns/userinfo?access_token="+access_token
                        + "&openid="+openid
                        + "&lang=zh_CN";

        JSONObject userInfo = IOEUtil.doGetJson(infoUrl);
        userInfo.getString("openid");
        userInfo.getString("nickname");
        userInfo.getString("city");
        userInfo.getString("province");
        userInfo.getString("sex");
        userInfo.getString("country");
        userInfo.getString("headimgurl");
        userInfo.getString("language");
        userInfo.getString("privilege");
        System.out.println("userInfo------:"+userInfo.toString());
        /*System.out.println("微信名："+URLDecoder.decode(userInfo.getString("nickname"), "UTF-8"));*/
        
        String  nickname = EmojiFilter.filterEmoji(URLDecoder.decode(userInfo.getString("nickname"), "UTF-8"));
        HuoDongUser  huodonguser  = new  HuoDongUser();
        huodonguser.setOpenid(userInfo.getString("openid"));
        huodonguser.setNickname(userInfo.getString("nickname"));
        huodonguser.setHeadimgurl(userInfo.getString("headimgurl"));
        /*//对用户微信名进行编码处理，在存入数据库，取出来时进行解码
        // 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
        nickname = URLEncoder.encode(nickname, "ISO-8859-1");
       // 再进行utf-8编码 一次得到页面上输入的文本内容
      	nickname = URLDecoder.decode(nickname, "UTF-8");*/
         System.out.println("去掉表情后的微信名："+nickname);
       //先查询出所有用户,并将查询出的信息存入redis中去
        /*java.util.List<LogUser>  loguserfind  = logUserService.findUsers(userInfo.getString("openid"));
         * 
         *通过id查询出相对应的微信信息
         *java.util.List<LogUser> loguser = logUserService.findbyuser(userInfo.getString("openid"));  
         * */
       //查询用户表中是否已经有用户信息
         System.out.println("查询推荐表中是否有该用户信息");
        java.util.List<HuoDongUser> HuoDongUser = xuelituiguangservice.selectxuelituiguangren(huodonguser);
         //userInfo.getString("unionid");
         /*Map<String, Object> map = new HashMap<String, Object>();
         map.put("openId", userInfo.getString("openid"));
         modelMap.put("nickname", userInfo.getString("nickname"));//保存授权用户
         String baoqing = EmojiFilter.filterEmoji(userInfo.getString("nickname"));
         String wxUser=xueliUserService.findByxueopenid(openid);*/
        System.out.println("数据长度："+HuoDongUser.size());
         if (HuoDongUser.size() == 0 ){//存在数据(因为数据为空，所有此处不能用HuoDongUser.get(0)...进行判断)
        	 //如果不存在将用户微信信息存入数据库中去
        	 xuelituiguangservice.insetwxxinxi(huodonguser);
             model.addObject("headimgurl", userInfo.getString("headimgurl"));
             model.addObject("openid",userInfo.getString("openid"));
             model.addObject("nickname", userInfo.getString("nickname"));
             model.setViewName("huodongyemian/xuelituijian/zuduipage");
        	 
         } else {
        	 model.addObject("openid", userInfo.getString("openid"));
             model.addObject("headimgurl", userInfo.getString("headimgurl"));
             model.addObject("nickname", userInfo.getString("nickname"));
             model.setViewName("huodongyemian/xuelituijian/zudui");
         }
         
         return model;
    }
    
    
    
    
    
   @RequestMapping(value="/xuelituijian",method=RequestMethod.GET)
    public ModelAndView chakanhuodonguize(ModelAndView model,HttpServletRequest request,String  openid) throws UnsupportedEncodingException{
		System.out.println("进入查看活动规则");
		System.out.println("openid:"+openid);
		model.addObject("openid", openid);
		model.setViewName("huodongyemian/xuelituijian/zuduipage");
		//zuduipage第一个页面,zudui第二个页面，zutixian提现页面，
        return model;
    }

}