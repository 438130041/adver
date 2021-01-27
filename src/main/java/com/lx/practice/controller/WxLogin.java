package com.lx.practice.controller;

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
import com.lx.practice.entity.UserinFormation;
import com.lx.practice.service.LogUserService;
import com.lx.practice.service.GeRenXinXiService.GeRenXinXiService;
import com.lx.practice.util.Constant;
import com.lx.practice.util.EmojiFilter;
import com.lx.practice.util.IOEUtil;
import com.sun.tools.example.debug.expr.ParseException;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/wxlogin")
public  class   WxLogin {//
		
	@Autowired
	private  LogUserService logUserService;

    @Autowired
    private  GeRenXinXiService  gerenxinxiservice;
    		
	
    
    
    
    
    
    
	
	// 微信公众号网页授权登录
    @RequestMapping(value ="wxLoginss",method=RequestMethod.GET)
    public String wxLogin(HttpServletRequest request,HttpServletResponse response,String  redeems,String gift) throws ParseException {
    			System.out.println("授权方法中的redeem:"+redeems);
    			//
            // 第一步：用户同意授权，获取code
            //WXAuthUtil.APPID 微信公众号的appenid 这个是微信公众号后台获取的
            String url ="https://open.weixin.qq.com/connect/oauth2/authorize?appid="+Constant.APP_ID
                            + "&redirect_uri="+ URLEncoder.encode("http://practice.jingyaoshi.net/wxlogin/callBackss?redeem="+redeems+"&gift="+gift+"")//这个是我们回调的地址 在这里进行出来获取到用户的心
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
    	System.out.println("进入接口");
    	
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
         *ava.util.List<LogUser> loguser = logUserService.findbyuser(userInfo.getString("openid"));  
         * */
       //查询用户表中是否已经有用户信息
        java.util.List<LogUser> loguser = logUserService.findbyuser(userInfo.getString("openid"));
        System.out.println("redeems的值："+redeem);
        System.out.println("gift的值："+gift);
          if (loguser.size() == 0){//如果长度为0，说明没有该用户数据
         	/* System.out.println("如果是首次登录，将数据存入数据库中");*/
  			//给与用户登录日志
  	         	 SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
  	         	 LogUser  logUser  =  new LogUser();
  	         	 UserinFormation  userinformation = new  UserinFormation();
  	         	 logUser.setCreateTime(date.format(new Date()));//用户登录时间
  	         	 logUser.setDays(1);//登录天数(初始值为1)
  	         	 logUser.setOpenid(userInfo.getString("openid"));//用户微信id
  	         	 logUser.setNickname(nickname);//微信用户名
  	         	 logUser.setHeadimgurl(userInfo.getString("headimgurl"));//用户微信头像
  	         	 logUser.setIntegral(5);//给与累计积分初始值
  	         	 logUser.setLv1state("领礼物");//lv1礼物领取状态（初始值为已领取，领取后变为已领取）
  	         	 logUser.setLv2state("领礼物");//lv2礼物领取状态（初始值为已领取，领取后变为已领取）
  	         	 logUser.setLv3state("领礼物");//lv3礼物领取状态（初始值为已领取，领取后变为已领取）
  	         	 userinformation.setOpenid(userInfo.getString("openid"));
  	         	 userinformation.setNickname(nickname);
  	         	 userinformation.setHeadimgurl(userInfo.getString("headimgurl"));
  	         	 logUserService.insertuser(logUser);//将用户信息添加进日志表中
  	         	/*gerenxinxiservice.insertgerenxinxi(userinformation);*///将用户信息存入用户信息表中（单独的用户信息表不是学员积分信息表）
  	         	String	  dateTime = date.format(new Date()).replace("-","");//去掉特殊字符
  	         	if ("redeem".equals(redeem)){//用户输入兑换码兑换积分
  	         		  model.addObject("openid", userInfo.getString("openid"));
  	         		  model.addObject("redeem", "redeem");
  	                  model.setViewName("system/homepage");
  	                  return model;
  	     		}
  	         	
  	         	if ("gift".equals(gift)){//进入商城兑换礼品
  	         		model.addObject("gifts", "gifts");
  	         		model.setViewName("system/homepage");
  	                return model;
  				}
  	         	
  	         	if ("redeemphone".equals(redeem)){//用户输入兑换码兑换积分
  	         		  
  	                model.addObject("openid", userInfo.getString("openid"));
  	         		model.addObject("redeem", "redeemphone");
  	                model.setViewName("tcm/phonecode");
  	                return model;
  	           	}
  	         	
  	         	
  	         	/*java.util.List<LogUser> loguser0 = logUserService.findbyuser(userInfo.getString("openid"));*/
  	         	model.addObject("days", 1);
  	            model.addObject("nickname", userInfo.getString("nickname"));
  	            model.addObject("openid", userInfo.getString("openid"));
  	            model.addObject("headimgurl", userInfo.getString("headimgurl"));
  	            model.addObject("dateTime", dateTime);//当前日期
  	            model.addObject("integral",5);
  	            model.addObject("userInfo", userInfo);
  	            model.addObject("number", loguser.get(0).getNumber());//这里如果用户没有填写手机号就会报错（后台错误）
  	            model.addObject("lv1state", "领礼物");
  	            model.addObject("lv2state", "领礼物");
  	            model.addObject("lv3state", "领礼物");
  	            model.setViewName("chapter/jingxuantiku");
  				
        	  
     	}else{
     		
     		/*System.out.println("不为0说明数据库中有数据，更改数据信息");*/
    		 SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
    		 String   str = date.format(new  Date());//将时间类型转换为String类型
    		 String	  strg = str.replace("-","");//去掉特殊字符
    		 String	  dateTime =str.replace("-","");//去掉特殊字符
    		 /*System.out.println("去掉-之后的数据："+strg);
    		 System.out.println("将时间数据类型转换为int型");*/
    		 int    newdates =Integer.parseInt(strg);//现在时间转化为int类型的数据（用户登录时的时间）
    		/* System.out.println("转换为int型数据后的新的时间值："+newdates);*/
    		 //查询出用户上次登录时间数据
    		 String  strs  =  loguser.get(0).getCreateTime();
    		 //将String类型的时间数据集转换为int类型数据
    		 String	  strsg = strs.replace("-","");//去掉特殊字符
    		 int  olddates = Integer.parseInt(strsg);
    		 /*System.out.println("转换为in型数据后的旧的时间值"+olddates);*/
    		 //新的时间去减去旧的时间
    		 int  k = newdates - olddates;
    		 System.out.println("k的值："+k);
     		
     		
     		if ("redeem".equals(redeem)){
       		    System.out.println("跳转到主页面");
       		    model.addObject("redeem", "redeem");
       		  	model.addObject("openid", userInfo.getString("openid"));
                model.setViewName("system/homepage");
                return model;
   		      }
     		
     		if ("redeemphone".equals(redeem)){//用户输入兑换码兑换积分
         		  model.addObject("openid", userInfo.getString("openid"));
         		 model.addObject("redeem", "redeemphone");
                  model.setViewName("tcm/phonecode");
                  return model;
           	}
     		if ("gift".equals(gift)){
         		System.out.println("跳转回主页面");
         		model.addObject("gifts", "gifts");
         		model.setViewName("system/homepage");
                return model;
			}
     		 if(k == 1 || k == 71 || k == 72 || k == 73 || k == 8870){//新的时间减去旧的时间如果等于一，说明登录天数是连续的（更改登录天数和当前登录时间）
     			 LogUser  logUser  =  new LogUser();
     			 logUser.setDays(loguser.get(0).getDays()+1);//如果k等于一那么现在的天数就等于原来的天数加一
     			 logUser.setCreateTime(date.format(new  Date()));//更改为新的时间
     			 logUser.setNickname(nickname);
     			 logUser.setOpenid(userInfo.getString("openid"));//根据用户微信id进行更改
     			 logUser.setHeadimgurl(userInfo.getString("headimgurl"));//用户微信头像
       			//进入每日一练打卡
         			 logUser.setIntegral(loguser.get(0).getIntegral()+5);//更改用户积分（不管用户是否是连续登录，只要登录积分就加30）
         			 /*System.out.println("更改后的天数"+logUser.getCreateTime());*/
         			 //将原先的天数更改掉
         			 System.out.println("不是老师代码进行判断");
         			if(loguser.get(0).getDays()+1 >= 3 && !loguser.get(0).getLv1state().equals("已领取")){
         				logUser.setLv1state("可领取");//
         				logUser.setLv2state(loguser.get(0).getLv2state());
         				logUser.setLv3state(loguser.get(0).getLv3state());
         				model.addObject("lv1state", "可领取");//lv1礼物领取状态
                        model.addObject("lv2state", loguser.get(0).getLv2state());//lv2礼物领取状态
                        model.addObject("lv3state", loguser.get(0).getLv3state());//lv3礼物领取状态
         			}else if (loguser.get(0).getDays()+1 >= 7 && !loguser.get(0).getLv2state().equals("已领取")) {
         				logUser.setLv1state(loguser.get(0).getLv1state());
         				logUser.setLv2state("可领取");//
         				logUser.setLv3state(loguser.get(0).getLv3state());
         				model.addObject("lv1state", loguser.get(0).getLv1state());//lv1礼物领取状态
                        model.addObject("lv2state","可领取");//lv2礼物领取状态
                        model.addObject("lv3state", loguser.get(0).getLv3state());//lv3礼物领取状态
    				}else  if (loguser.get(0).getDays()+1 >= 15 && !loguser.get(0).getLv3state().equals("已领取")) {
         				logUser.setLv1state(loguser.get(0).getLv1state());
         				logUser.setLv2state(loguser.get(0).getLv2state());
         				logUser.setLv3state("可领取");
         				model.addObject("lv1state", loguser.get(0).getLv1state());//lv1礼物领取状态
                        model.addObject("lv2state", loguser.get(0).getLv2state());//lv2礼物领取状态
                        model.addObject("lv3state", "可领取");//lv3礼物领取状态
    				}else{
    					logUser.setLv1state(loguser.get(0).getLv1state());
         				logUser.setLv2state(loguser.get(0).getLv2state());
         				logUser.setLv3state(loguser.get(0).getLv3state());
         				model.addObject("lv1state", loguser.get(0).getLv1state());//lv1礼物领取状态
                        model.addObject("lv2state", loguser.get(0).getLv2state());//lv2礼物领取状态
                        model.addObject("lv3state", loguser.get(0).getLv3state());//lv3礼物领取状态
    				}
         			
         			if (loguser.get(0).getLv3state().equals("已领取") && loguser.get(0).getLv2state().equals("已领取") && loguser.get(0).getLv1state().equals("已领取")) {
         				logUser.setLv1state("领礼物");
         				logUser.setLv2state("领礼物");
         				logUser.setLv3state("领礼物");
         				model.addObject("lv1state", "领礼物");//lv1礼物领取状态
                        model.addObject("lv2state", "领礼物");//lv2礼物领取状态
                        model.addObject("lv3state", "领礼物");//lv3礼物领取状态
    				}
         			logUserService.updateuser(logUser);
         		/*java.util.List<LogUser> loguser1 = logUserService.findbyuser(userInfo.getString("openid"));*/
                 	model.addObject("days", loguser.get(0).getDays()+1);
                    model.addObject("nickname", userInfo.getString("nickname"));
                    model.addObject("openid", userInfo.getString("openid"));
                    model.addObject("headimgurl", userInfo.getString("headimgurl"));
                    model.addObject("dateTime", dateTime);//当前日期
                    model.addObject("integral", loguser.get(0).getIntegral()+5);//累计积分
                    model.addObject("userInfo", userInfo);
                    model.addObject("number", loguser.get(0).getNumber());
                    model.setViewName("chapter/jingxuantiku");
       			 
     			 
     		 	}
     		 if (k > 1 && k != 71 && k != 72 && k != 73 && k != 8870) {//新的时间减去旧的时间如果大于一，说明最新一次的登录时间与上次登录时间之间出现了间隔，这时将最新登录时间作为新的初始时间
     			 SimpleDateFormat newdate = new SimpleDateFormat("yyyy-MM-dd");
     			 String   newstr = date.format(new  Date());//将时间类型转换为String类型
     			 LogUser  logUsers  =  new LogUser();
     			 logUsers.setCreateTime(date.format(new Date()));//用户登录时间
     			 logUsers.setDays(1);//登录天数(初始值为1，不连续打卡从初始值开始计算)
     			 logUsers.setOpenid(userInfo.getString("openid"));//用户微信id
     			 logUsers.setNickname(nickname);//微信用户名
     			 logUsers.setHeadimgurl(userInfo.getString("headimgurl"));//用户微信头像
     			 
     			 logUsers.setLv1state("领礼物");//lv1礼物领取状态（初始值为已领取，领取后变为已领取）
    			 logUsers.setLv2state("领礼物");//lv2礼物领取状态（初始值为已领取，领取后变为已领取）
    			 logUsers.setLv3state("领礼物");//lv3礼物领取状态（初始值为已领取，领取后变为已领取）
     			 
    			 
    			  logUsers.setIntegral(loguser.get(0).getIntegral()+5);//不连续登录也加10分的积分（只要没有领取礼物扣去相应的积分就一直存在）
       			   logUserService.findupdateuser(logUsers);//将用户信息添加进日志表中
        	    	/*java.util.List<LogUser> loguser2 = logUserService.findbyuser(userInfo.getString("openid"));*/
                   model.addObject("days", 1);
                   model.addObject("nickname", userInfo.getString("nickname"));
                   model.addObject("openid", userInfo.getString("openid"));
                   model.addObject("headimgurl", userInfo.getString("headimgurl"));
                   model.addObject("dateTime",dateTime);//当前日期
                   model.addObject("integral",loguser.get(0).getIntegral()+5);
                   model.addObject("userInfo", userInfo);
                   model.addObject("number", loguser.get(0).getNumber());
                   model.addObject("lv1state", loguser.get(0).getLv1state());//lv1礼物领取状态
                   model.addObject("lv2state", loguser.get(0).getLv2state());//lv2礼物领取状态
                   model.addObject("lv3state", loguser.get(0).getLv3state());//lv3礼物领取状态
                   model.setViewName("chapter/jingxuantiku");
    			 
     		}
     		if(k == 0){//同一天多次登录
            			
            			model.addObject("days", loguser.get(0).getDays());//连续登录天数
                        model.addObject("nickname", userInfo.getString("nickname"));
                        model.addObject("openid", userInfo.getString("openid"));
                        model.addObject("headimgurl", userInfo.getString("headimgurl"));
                        model.addObject("dateTime", loguser.get(0).getCreateTime());//当前日期
                        model.addObject("integral",loguser.get(0).getIntegral());
                        model.addObject("userInfo", userInfo);//
                        model.addObject("number", loguser.get(0).getNumber());
                        model.addObject("lv1state", loguser.get(0).getLv1state());//lv1礼物领取状态
                        model.addObject("lv2state", loguser.get(0).getLv2state());//lv2礼物领取状态
                        model.addObject("lv3state", loguser.get(0).getLv3state());//lv3礼物领取状态
                        System.out.println("同一天登录");
                        model.setViewName("chapter/jingxuantiku");
     			
     		} 
     	}
        return model;
    }

}
