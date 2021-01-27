package com.lx.practice.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/subjects")
public class SubjectsController {
	
	//接收用户微信信息
	@RequestMapping(value="/subjects",method=RequestMethod.GET)
	@ResponseBody
    public ModelAndView subjects(ModelAndView model, HttpServletRequest request,String topic,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="days")String days,//连续登录天数
    		@RequestParam(value="dateTime")String dateTime,//当前登录时间
    		@RequestParam(value="integral")String integral,//累计积分
    		@RequestParam(value="lv1state")String lv1state,//礼物领取状态
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state
    		) throws UnsupportedEncodingException{
		//根据前台传过来的执业药师类型（执业中药师，执业西药师）进行题目类型查询并跳转（题目类型页面）
		System.out.println("药师类型："+topic);
		System.out.println("在Subjects中没有解码的微信昵称："+nickname);
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
		System.out.println("在Subjects中topic传过来解码后的微信昵称："+nickname);
		 
		if("subjects".equals(topic)){
			//如果是执业中药师，跳转到subjects执业中药师jsp题型选择页面
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			System.out.println("跳转");
		    model.setViewName("system/subjects");
		}
		if ("west".equals(topic)) {
			//如果是执业西药师，跳转到     执业西药师jsp题型选择页面
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("system/wests");
		}
        return model;
    }
	
	
}
