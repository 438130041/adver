package com.lx.practice.controller.ChapterController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//ִҵ��ҩʦ�����½ڷ���
@Controller
@RequestMapping("/switch")
public class SwitchController {
	
	@RequestMapping(value="/switch",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request){
		//��ת����ʼҳ��
		System.out.println("��ת����ʼҳ��");
        model.setViewName("chapter/kemu");
        System.out.println("��ת");
        return model;
    }
	
	
}
