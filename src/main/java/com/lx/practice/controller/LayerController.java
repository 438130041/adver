package com.lx.practice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


//抽奖控制层
@Controller
@RequestMapping("/layer")
public class LayerController {
	
	
	@RequestMapping(value="/layer",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request){
		//跳转到开始页面
		System.out.println("跳转到开始页面");
        model.setViewName("system/luckydraw");
        System.out.println("跳转");
        return model;
    }
	
	
	//将用户抽奖获取到的东西存入数据库中
	
	
	
 	
}
