package com.lx.practice.controller.ChapterController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/jinxuanti")
public class JinxuantiController {
	
	
	
	
	@RequestMapping(value="/jinxuanti",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request){
		//进入
        model.setViewName("chapter/jingxuantiku");
        System.out.println("��ת");
        return model;
    }
	
	
}
