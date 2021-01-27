package com.lx.practice.controller.HoTailConterllor;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//锟斤拷台锟斤拷锟斤拷
@Controller
@RequestMapping("/hotai")
public class HoTaiConterllor {
	
	
	@RequestMapping(value="/hotai",method=RequestMethod.GET)
    public ModelAndView hotai(ModelAndView model,HttpServletRequest request){
		//锟斤拷转锟斤拷锟斤拷始页锟斤拷
		
		System.out.println("进入后台");
        model.setViewName("hotail/adminmain");
        return model;
    }
	
	//老师专属学员查询
	
	
	
	
	
}
