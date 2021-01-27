package com.lx.practice.controller.ceshi;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//测试类
@Controller
@RequestMapping("/ceshi")
public class cheshi {
	
	
	//商城功能测试
	@RequestMapping(value="/ceshi",method=RequestMethod.GET)
    public  ModelAndView  topic(ModelAndView model,HttpServletRequest request
    					
    		) throws UnsupportedEncodingException{
			System.out.println("进入测试页面");
			model.setViewName("tcm/medicineone");
        	return model;
    }
	
	
	//qq授权登录
	@RequestMapping(value="/qqshoquan",method=RequestMethod.GET)
	public   ModelAndView   qqshoquan(ModelAndView model,HttpServletRequest request){
				System.out.println("进入qq授权登录");
				model.setViewName("qqshoquan/qqhomepage");
				return model;
	}
	
	
	
	
  //回调地址
	@RequestMapping(value="/huidiaodizhi",method=RequestMethod.GET)
	public   ModelAndView   huidiaodizhi(ModelAndView model,HttpServletRequest request){
		System.out.println("进入qq授权登录");//
		model.setViewName("chapter/jingxuantiku.jsp");
		return model;
	}               
	
	
	
	
}
