package com.lx.practice.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//����ҳ�����ÿ��һ�����½ھ�ѡ������ѡ��ҳ��
@Controller
@RequestMapping("/system")
public class SystemController {

	@RequestMapping(value="/index",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request){
		//��ת����ʼҳ��
		System.out.println("��ת����ʼҳ��");
        model.setViewName("system/homepage");
        System.out.println("��ת");
        return model;
    }
	
	
	//�����û���ѡ���ÿ��һ����ѡ��
		@RequestMapping(value="/jingxuantiku",method=RequestMethod.GET)
	    public  ModelAndView  jingxuantiku(ModelAndView model,HttpServletRequest request,
	    		@RequestParam(value="nickname")String nickname,
	    		@RequestParam(value="openid")String openid,
	    		@RequestParam(value="headimgurl")String headimgurl
	    		) throws UnsupportedEncodingException{
			System.out.println("�û�΢������"+nickname);
			
			//���б���
			// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			 nickname = URLEncoder.encode(nickname, "ISO-8859-1");
		    // �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
			 nickname = URLDecoder.decode(nickname, "UTF-8");
			
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.setViewName("chapter/jingxuantiku");
	        return model;
	    }
	
	
	
	@RequestMapping(value="/detailspage",method=RequestMethod.GET)
    public  ModelAndView  detailspage(ModelAndView model,HttpServletRequest request){
		model.setViewName("system/detailspage");
        return model;
    }
	
	
}
