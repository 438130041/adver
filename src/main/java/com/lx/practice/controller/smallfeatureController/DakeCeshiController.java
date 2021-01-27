package com.lx.practice.controller.smallfeatureController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/dakaceshi")
public class DakeCeshiController {
		
		
	//测试图片上传功能
	@RequestMapping(value="/dakaceshi",method=RequestMethod.GET)
    public ModelAndView dakaceshi(ModelAndView model,HttpServletRequest request){
		
		
		model.setViewName("ceshi/tupianshanchuan");
        return model;
    }
	    
		
}
