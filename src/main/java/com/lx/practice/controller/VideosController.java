package com.lx.practice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/videos")
public class VideosController {
	
	@RequestMapping(value="/videos",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request){
		//��ת����ʼҳ��
		System.out.println("��ת����ʼҳ��");
        model.setViewName("system/videos");
        System.out.println("��ת");
        return model;
    }
	
}
