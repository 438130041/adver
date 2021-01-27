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

//从主页面进入每日一练或章节精选等类型选择页面
@Controller
@RequestMapping("/system")
public class SystemController {

	@RequestMapping(value="/index",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request){
		//跳转到开始页面
		System.out.println("跳转到开始页面");
        model.setViewName("system/homepage");
        System.out.println("跳转");
        return model;
    }
	
	
	//付费用户精选题和每日一练的选择
		@RequestMapping(value="/jingxuantiku",method=RequestMethod.GET)
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
			model.setViewName("chapter/jingxuantiku");
	        return model;
	    }
	
	
	
	@RequestMapping(value="/detailspage",method=RequestMethod.GET)
    public  ModelAndView  detailspage(ModelAndView model,HttpServletRequest request){
		model.setViewName("system/detailspage");
        return model;
    }
	
	
}
