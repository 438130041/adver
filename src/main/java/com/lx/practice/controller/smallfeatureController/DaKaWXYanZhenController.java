package com.lx.practice.controller.smallfeatureController;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
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

@Controller
public class DaKaWXYanZhenController {
		
	@Autowired
	private  LogUserService logUserService;
	
	
	@Autowired
	private  PaiHanService  paiHanService;
	
	// 微信公众号网页授权登录
    @RequestMapping(value ="dakawxLogin",method=RequestMethod.GET)
    public String wxLogin(HttpServletRequest request,HttpServletResponse response,String lscodes,String prize,String fenxian) throws ParseException {
    			System.out.println("进入授权");
    			System.out.println("营销老师的专属代码codes:"+lscodes);
    			System.out.println("fenxian值："+fenxian);
            // 第一步：用户同意授权，获取code
            //WXAuthUtil.APPID 微信公众号的appenid 这个是微信公众号后台获取的
            String url ="https://open.weixin.qq.com/connect/oauth2/authorize?appid="+Constant.APP_ID
                            + "&redirect_uri="+ URLEncoder.encode("http://practice.jingyaoshi.net/callBackss?lscodes="+lscodes+"&prize="+prize+"&fenxian="+fenxian+"")//这个是我们回调的地址 在这里进行出来获取到用户的心
                            + "&response_type=code"
                            + "&scope=snsapi_userinfo"
                            + "&state=STATE#wechat_redirect";
            	System.out.println("下个方法");
            return "redirect:"+url;//必须重定向，否则不能成功
    }
	
    
    
  //微信授权网页回调接口
    @RequestMapping(value ="callBackss",method=RequestMethod.GET)
    public ModelAndView callBack(ModelAndView model,ModelMap modelMap, HttpServletRequest req, HttpServletResponse resp,String lscodes,String prize,String fenxian) throws Exception {
        //如果用户同意授权，页面将跳转至 redirect_uri/?code=CODE&state=STATE
        //https://xxxxx/xxxxx/callBackss.do?code=CODE&state=STATE
        //获取code  code作为换取access_token的票据
    	
    	
        String code =req.getParameter("code");
        System.out.println("授权返回code信息---------:"+lscodes);
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
        
        /*//对用户微信名进行编码处理，在存入数据库，取出来时进行解码
        // 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
        nickname = URLEncoder.encode(nickname, "ISO-8859-1");
       // 再进行utf-8编码 一次得到页面上输入的文本内容
      	nickname = URLDecoder.decode(nickname, "UTF-8");*/
        /*prize = URLEncoder.encode(prize, "ISO-8859-1");
        // 再进行utf-8编码 一次得到页面上输入的文本内容
        prize = URLDecoder.decode(prize, "UTF-8");*/
        
        System.out.println("prize值："+prize);
         System.out.println("去掉表情后的微信名："+nickname);
         
         System.out.println("微信头像："+userInfo.getString("headimgurl"));
         
       //先查询出所有用户,并将查询出的信息存入redis中去
        /*java.util.List<LogUser>  loguserfind  = logUserService.findUsers(userInfo.getString("openid"));
         * 
         *通过id查询出相对应的微信信息
         *ava.util.List<LogUser> loguser = logUserService.findbyuser(userInfo.getString("openid"));  
         * */
       //查询用户表中是否已经有用户信息
        java.util.List<LogUser> loguser = logUserService.findbyuser(userInfo.getString("openid"));
        
        System.out.println("营销老师的专属代码codes:"+lscodes);
          if (loguser.size() == 0 ){//如果长度为0，说明没有该用户数据
        	  //打卡学员通过营销老师分享的链接进入活动页面（打卡活动时间计算与每日一练不同）
          	if (!StringUtils.isEmpty(lscodes) && !lscodes.equals("null")) {//如果不为空
  				System.out.println("学员参与活动时老师的专属代码codes："+lscodes);
  				//给与用户登录日志
  	         	 SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
  	         	 LogUser  logUser  =  new LogUser();
  	         	 logUser.setOpenid(userInfo.getString("openid"));//用户微信id
  	         	 logUser.setNickname(nickname);//微信用户名
  	         	 logUser.setHeadimgurl(userInfo.getString("headimgurl"));//用户微信头像
  	         	 logUser.setCreateTime(date.format(new Date()));//用户登录时间
  	         	 logUser.setTeacherCodes(lscodes);//学员所属老师代码
  	         	 logUser.setLv1state("领礼物");//lv1礼物领取状态（初始值为已领取，领取后变为已领取）
  	         	 logUser.setLv2state("领礼物");//lv2礼物领取状态（初始值为已领取，领取后变为已领取）
  	         	 logUser.setLv3state("领礼物");//lv3礼物领取状态（初始值为已领取，领取后变为已领取）
  	         	 logUserService.insertusercodes(logUser);//将用户信息添加进日志表中
  	         	 if(fenxian.equals("fenxian")){
   	         		//将数据存入数据库中
   	         			if (prize.equals("qiangfenglibao")) {
   	         					logUser.setDaima("551");
   	         				    logUser.setPrize("冲刺抢分礼包");
   	         			}
   	         			if (prize.equals("xitijiexi")) {
   	         					logUser.setDaima("552");
   	         				    logUser.setPrize("习题解析班");
   	         			}
   	         			if (prize.equals("joumingqianfen")) {
   	         					logUser.setDaima("554");
   	         				    logUser.setPrize("救命抢分班");
   	         			}
   	         			if (prize.equals("shuafentiku")) {
   	         					logUser.setDaima("555");
   	         				    logUser.setPrize("vip刷分题库");
   	         			}
   	         			if (prize.equals("jixuenying")) {
   	         					logUser.setDaima("556");
   	         				    logUser.setPrize("16天集训营");
   	         			}
   	         			if (prize.equals("miyajuan")) {
   	         					logUser.setDaima("557");
   	         				    logUser.setPrize("密押卷");
   	         			} 
   	         			if (prize.equals("yatichoci")) {
   	         					logUser.setDaima("558");
   	         					logUser.setPrize("押题冲刺班");
   	         			}
   	         		SimpleDateFormat datemm = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
     	         	 logUser.setState("未领取");//物品领取状态
     	         	 logUser.setPrizetime(datemm.format(new Date()));
     	         	 //将分享的物品存入数据库中
     	         	 paiHanService.insertzjwupin(logUser);
     	         	 model.addObject("nickname", userInfo.getString("nickname"));
                     model.addObject("openid", userInfo.getString("openid"));
                     model.addObject("headimgurl", userInfo.getString("headimgurl"));
                     model.addObject("lqfenxianye", "lqfenxianye");
                     model.addObject("codes", lscodes);
                     model.addObject("fenxianzhojian", "fenxianzhojian");
                     model.setViewName("smallfeature/ZhonJianJiLu");
                     return model;
   	         	 }
  	         	 
  	         	 //老师专属代码不为空说明进入了打卡活动
           		  model.addObject("nickname", userInfo.getString("nickname"));
                  model.addObject("openid", userInfo.getString("openid"));
                  model.addObject("headimgurl", userInfo.getString("headimgurl"));
                  model.addObject("codes", lscodes);
                 //根据专属代码判断属于哪个部门，跳转进入不同的页面
                  
                  model.setViewName("smallfeature/huodonjiesao");
                  return model;
  			}
        	  
     	}else{
     		
     		if(fenxian.equals("fenxian")){
     			System.out.println("分享");
     			 LogUser  logUser  =  new LogUser();
  	         	 logUser.setOpenid(userInfo.getString("openid"));//用户微信id
  	         	 logUser.setNickname(nickname);;
	         		//将数据存入数据库中
  	         	if (prize.equals("qiangfenglibao")) {
    					logUser.setDaima("551");
    				    logUser.setPrize("冲刺抢分礼包");
    			}
    			if (prize.equals("xitijiexi")) {
    					logUser.setDaima("552");
    				    logUser.setPrize("习题解析班");
    			}
    			if (prize.equals("joumingqianfen")) {
    					logUser.setDaima("554");
    				    logUser.setPrize("救命抢分班");
    			}
    			if (prize.equals("shuafentiku")) {
    					logUser.setDaima("555");
    				    logUser.setPrize("vip刷分题库");
    			}
    			if (prize.equals("jixuenying")) {
    					logUser.setDaima("556");
    				    logUser.setPrize("16天集训营");
    			}
    			if (prize.equals("miyajuan")) {
    					logUser.setDaima("557");
    				    logUser.setPrize("密押卷");
    			} 
    			if (prize.equals("yatichoci")) {
    					logUser.setDaima("558");
    					logUser.setPrize("押题冲刺班");
    			}
	         	SimpleDateFormat datemm = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
  	         	 logUser.setState("未领取");//物品领取状态
  	         	 logUser.setPrizetime(datemm.format(new Date()));
  	         	 //将分享的物品存入数据库中
  	         	 paiHanService.insertzjwupin(logUser);
  	         	 model.addObject("nickname", userInfo.getString("nickname"));
                 model.addObject("openid", userInfo.getString("openid"));
                 model.addObject("headimgurl", userInfo.getString("headimgurl"));
                 model.addObject("lqfenxianye", "lqfenxianye");
                 model.addObject("codes", lscodes);
                 model.addObject("fenxianzhojian", "fenxianzhojian");
                 model.setViewName("smallfeature/ZhonJianJiLu");
                 return model;
	         	 }
     		
     		//打卡学员通过营销老师分享的链接进入活动页面
        	if (!lscodes.equals("") && !lscodes.equals(null) && !lscodes.equals("null")) {
//        		System.out.println("老师代码不为空进入");
        		if (StringUtils.isEmpty(loguser.get(0).getNumber())  ||  StringUtils.isEmpty(loguser.get(0).getUser_Name())  ||  StringUtils.isEmpty(loguser.get(0).getTeacherCodes())) {//如果为空进入
        			System.out.println("没有报名");
        			//老师专属代码不为空说明进入了打卡活动
            		model.addObject("nickname", userInfo.getString("nickname"));
            		model.addObject("openid", userInfo.getString("openid"));
                 	model.addObject("headimgurl", userInfo.getString("headimgurl"));
                 	model.addObject("codes", lscodes);//老师代码
                 	LogUser  loguserupurl  =  new LogUser();
        			loguserupurl.setOpenid(userInfo.getString("openid"));
        			loguserupurl.setHeadimgurl(userInfo.getString("headimgurl"));
        			loguserupurl.setNickname(nickname);
        			loguserupurl.setTeacherCodes(lscodes);
        			logUserService.updateusercodes(loguserupurl);
        			//根据专属代码判断属于哪个部门，跳转进入不同的页面
        			model.setViewName("smallfeature/huodonjiesao");
        			return model;
				}else{
					//老师专属代码不为空说明进入了打卡活动
					System.out.println("跳转");
					model.addObject("nickname", userInfo.getString("nickname"));
					model.addObject("openid", userInfo.getString("openid"));
					model.addObject("headimgurl", userInfo.getString("headimgurl"));
					model.addObject("codes", lscodes);//老师代码
					model.setViewName("smallfeature/jianpinjieshao");
					return model;
				}
        		
			 }
     		
     	}
        return model;
    }
    
}
