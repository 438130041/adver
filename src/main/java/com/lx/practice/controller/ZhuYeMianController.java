package com.lx.practice.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/zhuyemian")
public class ZhuYeMianController {

	  
	
	@RequestMapping(value="zhuyemian",method=RequestMethod.GET)
    public  ModelAndView  jingxuantiku(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl
    		) throws UnsupportedEncodingException{
		System.out.println("用户微信名："+nickname);
		
		//进行编译
		// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		 nickname = URLEncoder.encode(nickname, "ISO-8859-1");
	    // 再进行utf-8编码 一次得到页面上输入的文本内容
		 nickname = URLDecoder.decode(nickname, "UTF-8");
		 
		model.addObject("nickname", nickname);
		model.addObject("openid", openid);
		model.addObject("headimgurl", headimgurl);
		model.setViewName("system/zhuyemian");
        return model;
    }
		
		
		
		
	@RequestMapping(value="zhuyemiancheshi",method=RequestMethod.GET)
    public  ModelAndView  zhuyemian(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="number")String number,
    		@RequestParam(value="days")String days,
    		@RequestParam(value="integral")String integral,
    		@RequestParam(value="dateTime")String dateTime,
    		@RequestParam(value="lv1state")String lv1state,
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state,
    		@RequestParam(value="leixing")String leixing
    		) throws UnsupportedEncodingException{//礼物领取状态
			System.out.println("用户微信名："+nickname);
		
		//进行编译
				// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
				 nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			    // 再进行utf-8编码 一次得到页面上输入的文本内容
				 nickname = URLDecoder.decode(nickname, "UTF-8");
					
				 lv1state = URLEncoder.encode(lv1state, "ISO-8859-1");
				
				 lv1state = URLDecoder.decode(lv1state, "UTF-8");
					
					
				 lv2state = URLEncoder.encode(lv2state, "ISO-8859-1");
					
				 lv2state = URLDecoder.decode(lv2state, "UTF-8");
					
					
				 lv3state = URLEncoder.encode(lv3state, "ISO-8859-1");
					
				 lv3state = URLDecoder.decode(lv3state, "UTF-8");
		
				 model.addObject("nickname", nickname);
				 model.addObject("openid", openid);
				 model.addObject("headimgurl", headimgurl);
				 model.addObject("number", number);
				 model.addObject("days", days);
				 model.addObject("dateTime", dateTime);
				 model.addObject("integral", integral);
				 model.addObject("lv1state", lv1state);
				 model.addObject("lv2state", lv2state);
				 model.addObject("lv3state", lv3state);
				 model.addObject("leixing", leixing);
				 model.setViewName("chapter/jingxuantiku");
				 return model;
    }
	
		
}
