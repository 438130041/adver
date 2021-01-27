package com.lx.practice.controller.smallfeatureController;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/fenxianwupin")
public class FenXianWuPinController {
		
	

	//查看活动规则
			@RequestMapping(value="/fenxianwupin",method=RequestMethod.GET)
		    public ModelAndView fenxianwupin(ModelAndView model,HttpServletRequest request) throws UnsupportedEncodingException{
				System.out.println("进入课程分享页面");
				
				model.setViewName("fenxian/fenxianwupin");
		        return model;
		    }
		
		
}
