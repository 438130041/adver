package com.lx.practice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.lx.practice.entity.LogUser;
import com.lx.practice.service.LogUserService;


//礼物领取控制层（与商城对接接口，在商城项目中调这个控制层中的方法）
@Controller
@RequestMapping("/integral")
public class GiftController {
	
	@Autowired
	private  LogUserService logUserService;
	
	//查询用户积分
	@RequestMapping(value="/findbyuser",method=RequestMethod.POST)
	@ResponseBody
    public String findbyuser(ModelAndView model,HttpServletRequest request,
    		LogUser  logUser
    		){
		/*System.out.println("从商城穿过来的id值："+logUser.getOpenid());*/
		  //查询积分
		List<LogUser> findbyuser = logUserService.findbyuser(logUser.getOpenid());//查询出要对换积分的用户的积分openid
		String EQtitle  = JSON.toJSONString(findbyuser.get(0));
		System.out.println("查询出的id："+findbyuser.get(0).getOpenid());
		//跳转到开始页面
        return EQtitle;
    }

	//更改用户积分
	@RequestMapping(value="/updateintegral",method=RequestMethod.POST)
	@ResponseBody
    public String updateintegral(ModelAndView model,HttpServletRequest request,
    		LogUser  logUser
    		){
		  //查询积分
		logUserService.updateintegral(logUser);//兑换积分后更改用户的积分openid,integral
		 //更改完后查询
		List<LogUser> findbyuser = logUserService.findbyuser(logUser.getOpenid());
		String EQtitle  = JSON.toJSONString(findbyuser.get(0));
		//查询出要对换积分的用户的积分openid
        return EQtitle;
    }
	
	
}
