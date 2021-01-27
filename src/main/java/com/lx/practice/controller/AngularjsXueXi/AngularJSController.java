package com.lx.practice.controller.AngularjsXueXi;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/angularjs")
public class AngularJSController {
			
		
	@RequestMapping(value="/angularjstiaozhuanshoye",method=RequestMethod.GET)
    public ModelAndView angularjstiaozhuanshoye(ModelAndView model,HttpServletRequest request){
		System.out.println("进入跳转");	
        model.setViewName("Angularjsxuexi/Angularjs14");
        return model;
    }
		
}
