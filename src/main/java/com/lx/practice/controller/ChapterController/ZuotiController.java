package com.lx.practice.controller.ChapterController;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/zuoti")
public class ZuotiController {
	
	
	//�����û���ѡ���ÿ��һ����ѡ��
	@RequestMapping(value="/zuoti",method=RequestMethod.GET)
    public  ModelAndView  zuoti(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="kemu")String kemu,
    		@RequestParam(value="knowledge_Id")String knowledge_Id
    		) throws UnsupportedEncodingException{
		
		/*System.out.println("�û�΢������"+nickname);*/
		System.out.println("��������");
		System.out.println("�½�id��"+knowledge_Id);
		
        return model;
    }
	
}
