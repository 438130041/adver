package com.lx.practice.controller.smallfeatureController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/challenge")
public class ParticipateChallengeController {
	
	
	//ѧԱ���������ս��ҳ��
			@RequestMapping(value="/challenge",method=RequestMethod.GET)
		    public ModelAndView challenge(ModelAndView model,HttpServletRequest request,String  openid,String  codes){
				
				model.addObject("codes", codes);
				model.addObject("openid", openid);
				model.setViewName("smallfeature/ParticipateChallenge");
		        return model;
		    }
	
}
