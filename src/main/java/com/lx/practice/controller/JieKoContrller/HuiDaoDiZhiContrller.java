package com.lx.practice.controller.JieKoContrller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;

@Controller
@RequestMapping("/huidiaodizhi")
public class HuiDaoDiZhiContrller {
			
		
	@RequestMapping(value="/huidiaodizhi")
	@ResponseBody
	public  String  numberquery(ModelAndView model,HttpServletRequest request,
			LogUser  logUser
			){
		
		System.out.println("回调成功");
		return  "success";
	}
		
		
}
