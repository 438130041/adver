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
	
	
	//付费用户精选题和每日一练的选择
	@RequestMapping(value="/zuoti",method=RequestMethod.GET)
    public  ModelAndView  zuoti(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="kemu")String kemu,
    		@RequestParam(value="knowledge_Id")String knowledge_Id
    		) throws UnsupportedEncodingException{
		
		/*System.out.println("用户微信名："+nickname);*/
		System.out.println("进入做题");
		System.out.println("章节id："+knowledge_Id);
		
        return model;
    }
	
}
