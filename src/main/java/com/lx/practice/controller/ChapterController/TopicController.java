package com.lx.practice.controller.ChapterController;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


//����ÿ��һ��
@Controller
@RequestMapping("/kemutopic")
public class TopicController {
	

	//�����û�΢����Ϣ
	@RequestMapping(value="/kemutopic",method=RequestMethod.GET)
    public  ModelAndView  topic(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="days")String days,
    		@RequestParam(value="integral")String integral,
    		@RequestParam(value="dateTime")String dateTime,
    		@RequestParam(value="lv1state")String lv1state,
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state
    		) throws UnsupportedEncodingException{
		 	System.out.println("�����½���ϰ");
		//���б���
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		 nickname = URLEncoder.encode(nickname, "ISO-8859-1");
	    // �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		 nickname = URLDecoder.decode(nickname, "UTF-8");
		 
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		    lv1state = URLEncoder.encode(lv1state, "ISO-8859-1");
		 	// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		    lv1state = URLDecoder.decode(lv1state, "UTF-8");
		    
		 // �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		    lv2state = URLEncoder.encode(lv2state, "ISO-8859-1");
		 	// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		    lv2state = URLDecoder.decode(lv2state, "UTF-8");
		    
		 // �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		    lv3state = URLEncoder.encode(lv3state, "ISO-8859-1");
		 	// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		    lv3state = URLDecoder.decode(lv3state, "UTF-8");
		 
		model.addObject("days", days);
		model.addObject("integral", integral);
		model.addObject("dateTime", dateTime);
	    model.addObject("lv1state", lv1state);
	    model.addObject("lv2state", lv2state);
	    model.addObject("lv3state", lv3state);
		model.addObject("nickname", nickname);
		model.addObject("openid", openid);
		model.addObject("headimgurl", headimgurl);
		model.setViewName("chapter/kemu");
        return model;
    }
	
	
}
