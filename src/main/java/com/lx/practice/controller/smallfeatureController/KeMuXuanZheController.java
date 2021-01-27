package com.lx.practice.controller.smallfeatureController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;

@Controller
@RequestMapping("/xuanzeyaokaidkemu")
public class KeMuXuanZheController {
			
	
	//科目选择页面
	@RequestMapping(value="/xuanzeyaokaidkemu",method=RequestMethod.GET)
    public ModelAndView xuanzeyaokaidkemu(ModelAndView model,HttpServletRequest request,LogUser  logUser,String  leixing){
		
		model.addObject("leixing", leixing);
		model.addObject("openid", logUser.getOpenid());
		model.setViewName("smallfeature/KeMuXuanZhe");
        return model;
    }
	
	
}
