package com.lx.practice.controller.ChapterController;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


//进入每日一练
@Controller
@RequestMapping("/kemutopic")
public class TopicController {
	

	//接收用户微信信息
	@RequestMapping(value="/kemutopic",method=RequestMethod.GET)
    public  ModelAndView  topic(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="days")String days,
    		@RequestParam(value="integral")String integral,
    		@RequestParam(value="dateTime")String dateTime,
    		@RequestParam(value="lv1state")String lv1state,
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state
    		) throws UnsupportedEncodingException{
		 	System.out.println("进入章节练习");
		//进行编译
		// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		 nickname = URLEncoder.encode(nickname, "ISO-8859-1");
	    // 再进行utf-8编码 一次得到页面上输入的文本内容
		 nickname = URLDecoder.decode(nickname, "UTF-8");
		 
		// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		    lv1state = URLEncoder.encode(lv1state, "ISO-8859-1");
		 	// 再进行utf-8编码 一次得到页面上输入的文本内容
		    lv1state = URLDecoder.decode(lv1state, "UTF-8");
		    
		 // 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		    lv2state = URLEncoder.encode(lv2state, "ISO-8859-1");
		 	// 再进行utf-8编码 一次得到页面上输入的文本内容
		    lv2state = URLDecoder.decode(lv2state, "UTF-8");
		    
		 // 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		    lv3state = URLEncoder.encode(lv3state, "ISO-8859-1");
		 	// 再进行utf-8编码 一次得到页面上输入的文本内容
		    lv3state = URLDecoder.decode(lv3state, "UTF-8");
		 
		model.addObject("days", days);
		model.addObject("integral", integral);
		model.addObject("dateTime", dateTime);
	    model.addObject("lv1state", lv1state);
	    model.addObject("lv2state", lv2state);
	    model.addObject("lv3state", lv3state);
		model.addObject("nickname", nickname);
		model.addObject("openid", openid);
		model.addObject("headimgurl", headimgurl);
		model.setViewName("chapter/kemu");
        return model;
    }
	
	
}
