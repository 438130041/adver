package com.lx.practice.controller.ChapterController;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//�û�ע��
@Controller
@RequestMapping("/tikulinkuser")
public class TikuLinkUserController {

	
	//ǰ��ע���û�ҳ��
	@RequestMapping(value="/tikulinkuser",method=RequestMethod.GET)
    public  ModelAndView  index(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="days")String days,
    		@RequestParam(value="dateTime")String dateTime,
    		@RequestParam(value="integral")String integral,
    		@RequestParam(value="lv1state")String lv1state,
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state
    		) throws UnsupportedEncodingException{
		
		System.out.println("");
		model.addObject("openid", openid);
		model.addObject("headimgurl", headimgurl);
		model.addObject("nickname", nickname);
		model.addObject("days", days);
		model.addObject("dateTime", dateTime);
		model.addObject("integral", integral);
		model.addObject("lv1state", lv1state);
		model.addObject("lv2state", lv2state);
		model.addObject("lv3state", lv3state);
		model.setViewName("chapter/TikuLinkUser");
		return model;
    }
	
	
	
	
}
