package com.lx.practice.controller.smallfeatureController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;

@Controller
@RequestMapping("/jilu")
public class ZhonJanJiLuController {
		
		@Autowired
		private  PaiHanService  paiHanService;
		
		
	//查看用户中奖纪录
			@RequestMapping(value="/jilu",method=RequestMethod.GET)
		    public ModelAndView jilu(ModelAndView model,HttpServletRequest request,LogUser  logUser){
				
				//查询出用户中奖纪录
				List<LogUser> insertjilu = paiHanService.insertjilu(logUser);
				
				
				model.addObject("insertjilu", insertjilu);
				model.addObject("openid", logUser.getOpenid());
				model.setViewName("smallfeature/ZhonJianJiLu");
		        return model;
		    }
		
		
		
			
			
			
			@RequestMapping(value="/jiluget",method=RequestMethod.GET)
		    public   ModelAndView   jilupost(ModelAndView model,HttpServletRequest request,LogUser  logUser,String  codes){
				//查询出用户中奖纪录
				List<LogUser> insertjilu = paiHanService.insertjilu(logUser);
				
				model.addObject("insertjilu", insertjilu);
				model.addObject("openid", logUser.getOpenid());
				model.addObject("fenxianzhojian", "fenxianzhojian");
				model.addObject("codes", codes);
				model.setViewName("smallfeature/ZhonJianJiLu");
		        return model;
		    }
			
			
}
