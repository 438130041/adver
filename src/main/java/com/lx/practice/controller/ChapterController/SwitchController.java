package com.lx.practice.controller.ChapterController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//执业中药师，按章节分类
@Controller
@RequestMapping("/switch")
public class SwitchController {
	
	@RequestMapping(value="/switch",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request){
		//跳转到开始页面
		System.out.println("跳转到开始页面");
        model.setViewName("chapter/kemu");
        System.out.println("跳转");
        return model;
    }
	
	
}
