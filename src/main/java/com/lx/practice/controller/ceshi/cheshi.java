package com.lx.practice.controller.ceshi;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//������
@Controller
@RequestMapping("/ceshi")
public class cheshi {
	
	
	//�̳ǹ��ܲ���
	@RequestMapping(value="/ceshi",method=RequestMethod.GET)
    public  ModelAndView  topic(ModelAndView model,HttpServletRequest request
    					
    		) throws UnsupportedEncodingException{
			System.out.println("�������ҳ��");
			model.setViewName("tcm/medicineone");
        	return model;
    }
	
	
	//qq��Ȩ��¼
	@RequestMapping(value="/qqshoquan",method=RequestMethod.GET)
	public   ModelAndView   qqshoquan(ModelAndView model,HttpServletRequest request){
				System.out.println("����qq��Ȩ��¼");
				model.setViewName("qqshoquan/qqhomepage");
				return model;
	}
	
	
	
	
  //�ص���ַ
	@RequestMapping(value="/huidiaodizhi",method=RequestMethod.GET)
	public   ModelAndView   huidiaodizhi(ModelAndView model,HttpServletRequest request){
		System.out.println("����qq��Ȩ��¼");//
		model.setViewName("chapter/jingxuantiku.jsp");
		return model;
	}               
	
	
	
	
}
