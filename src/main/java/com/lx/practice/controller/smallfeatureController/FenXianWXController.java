package com.lx.practice.controller.smallfeatureController;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.LogUserService;
import com.lx.practice.service.smallfeatureservice.PaiHanService;
import com.lx.practice.util.Constant;
import com.lx.practice.util.EmojiFilter;
import com.lx.practice.util.IOEUtil;
import com.sun.tools.example.debug.expr.ParseException;

import net.sf.json.JSONObject;


//被分享用户验证并将分享的物品添加进数据库
@Controller
@RequestMapping("/fenxianwx")
public class FenXianWXController {
		
	@Autowired
	private  LogUserService logUserService;
		
	@Autowired
	private  PaiHanService  paiHanService;
	
	// 微信公众号网页授权登录
    @RequestMapping(value ="fenxianwx",method=RequestMethod.GET)
    public String wxLogin(HttpServletRequest request,HttpServletResponse response) throws ParseException {
    			System.out.println("分享进入授权");
    			
            // 第一步：用户同意授权，获取code
            //WXAuthUtil.APPID 微信公众号的appenid 这个是微信公众号后台获取的
            String url ="https://open.weixin.qq.com/connect/oauth2/authorize?appid="+Constant.APP_ID
                            + "&redirect_uri="+ URLEncoder.encode("http://practice.jingyaoshi.net/callBackss")//这个是我们回调的地址 在这里进行出来获取到用户的心
                            + "&response_type=code"
                            + "&scope=snsapi_userinfo"
                            + "&state=STATE#wechat_redirect";
            	System.out.println("下个方法");
            return "redirect:"+url;//必须重定向，否则不能成功
    }
	
    
    
  //微信授权网页回调接口
    @RequestMapping(value ="callBackss",method=RequestMethod.GET)
    public ModelAndView callBack(ModelAndView model,ModelMap modelMap, HttpServletRequest req, HttpServletResponse resp) throws Exception {
        //如果用户同意授权，页面将跳转至 redirect_uri/?code=CODE&state=STATE
        //https://xxxxx/xxxxx/callBackss.do?code=CODE&state=STATE
        //获取code  code作为换取access_token的票据
    	
    	
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
        
         System.out.println("去掉表情后的微信名："+nickname);
       //先查询出所有用户,并将查询出的信息存入redis中去
        /*java.util.List<LogUser>  loguserfind  = logUserService.findUsers(userInfo.getString("openid"));
         * 
         *通过id查询出相对应的微信信息
         *ava.util.List<LogUser> loguser = logUserService.findbyuser(userInfo.getString("openid"));  
         * */
		
         return model;
    	
    		}
		}
