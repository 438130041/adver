package com.lx.practice.controller.XiaoCenxuLianJie;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/lianjie")
public class LianJieController {
		
	
	
	@RequestMapping(value="/lianjie",method=RequestMethod.GET)
    public ModelAndView hotai(ModelAndView model,HttpServletRequest request){
		//��ת����ʼҳ��
		
		System.out.println("������̨");
        model.setViewName("ceshi/selectxialaceshi");
        return model;
    }
	
	
}
