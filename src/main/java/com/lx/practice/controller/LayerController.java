package com.lx.practice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


//�齱���Ʋ�
@Controller
@RequestMapping("/layer")
public class LayerController {
	
	
	@RequestMapping(value="/layer",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request){
		//��ת����ʼҳ��
		System.out.println("��ת����ʼҳ��");
        model.setViewName("system/luckydraw");
        System.out.println("��ת");
        return model;
    }
	
	
	//���û��齱��ȡ���Ķ����������ݿ���
	
	
	
 	
}
