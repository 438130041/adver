package com.lx.practice.controller.HoTailConterllor;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//��̨����
@Controller
@RequestMapping("/hotai")
public class HoTaiConterllor {
	
	
	@RequestMapping(value="/hotai",method=RequestMethod.GET)
    public ModelAndView hotai(ModelAndView model,HttpServletRequest request){
		//��ת����ʼҳ��
		
		System.out.println("�����̨");
        model.setViewName("hotail/adminmain");
        return model;
    }
	
	//��ʦר��ѧԱ��ѯ
	
	
	
	
	
}
