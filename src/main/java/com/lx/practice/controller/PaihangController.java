package com.lx.practice.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.lx.practice.entity.User;
import com.lx.practice.service.PaiXuService;

//排行榜页面控制层
@Controller
@RequestMapping("/paihang")
public class PaihangController {
	
	@Autowired
	private  PaiXuService  paixudao;
	
	
	//跳转到排行榜页面
	@RequestMapping(value="/paihang",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="Knowledge_Name")String Knowledge_Name,
    		@RequestParam(value="fractionPe")String fractionPe,
    		@RequestParam(value="int_second")String int_second
    		) throws UnsupportedEncodingException{
		//进行编译
		// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		nickname = URLEncoder.encode(nickname, "ISO-8859-1");
		// 再进行utf-8编码 一次得到页面上输入的文本内容
		nickname = URLDecoder.decode(nickname, "UTF-8");
	    
		//进行编译
		// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		Knowledge_Name = URLEncoder.encode(Knowledge_Name, "ISO-8859-1");
		// 再进行utf-8编码 一次得到页面上输入的文本内容
		Knowledge_Name = URLDecoder.decode(Knowledge_Name, "UTF-8");
	    
	    model.addObject("nickname", nickname);//微信名
	    model.addObject("openid", openid);//微信id
	    model.addObject("headimgurl", headimgurl);//微信头像
	    model.addObject("Knowledge_Name", Knowledge_Name);//题型名
	    model.addObject("fractionPe", fractionPe);//分数
	    model.addObject("int_second", int_second);//分数
        model.setViewName("system/paihang");
        System.out.println("跳转");
        return model;
    }
	
	
	
	
	
	
	
	@RequestMapping(value="/paihang",method=RequestMethod.POST)
	@ResponseBody
    public Map<String, Object> paiming(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="openid")String openid
    		) throws UnsupportedEncodingException{
		    User user = new  User();
		    user.setOpenid(openid);
		//查找出
		 Map<String, Object> queryMap = new HashMap<String, Object>();
		 List<User>  paming = paixudao.findPaiming(user);//查询出redis中所有储存的微信以及答题信息
		 String  weixing  = JSON.toJSONString(paming);//将redis中的用户微信信息和做题成功率取出来在页面进行比较
		 queryMap.put("type", "success");
		 queryMap.put("datas", weixing);
         return queryMap;
    }
	
}
