package com.lx.practice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


//�ͷ����Ʋ�
@Controller
@RequestMapping("/Customer")
public class CustomerController {
	
	
	@RequestMapping(value="/Customer",method=RequestMethod.GET)
    public ModelAndView customer(ModelAndView model,HttpServletRequest request){
		//跳转到开始页面
		System.out.println("��ת����ʼҳ��");
        model.setViewName("system/customer");
        System.out.println("��ת");
        return model;
    }
	
}
