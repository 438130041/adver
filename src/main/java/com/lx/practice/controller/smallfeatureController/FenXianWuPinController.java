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
		
	

	//�鿴�����
			@RequestMapping(value="/fenxianwupin",method=RequestMethod.GET)
		    public ModelAndView fenxianwupin(ModelAndView model,HttpServletRequest request) throws UnsupportedEncodingException{
				System.out.println("����γ̷���ҳ��");
				
				model.setViewName("fenxian/fenxianwupin");
		        return model;
		    }
		
		
}
