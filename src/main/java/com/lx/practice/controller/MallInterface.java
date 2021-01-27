package com.lx.practice.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.LogUserService;


//礼物领取控制层
@Controller
@RequestMapping("/mall")
public class MallInterface {
	  
	@Autowired
	private  LogUserService  logUserService;
	
	
	@RequestMapping(value="/mall",method=RequestMethod.POST)
	@ResponseBody
    public Map<String, Object> index(ModelAndView model,HttpServletRequest request,LogUser  logUser){
		Map<String, Object> queryMap = new HashMap<String, Object>();
		LogUser logUsers  = new LogUser();
		logUsers.setOpenid(logUser.getOpenid());
		if (logUser.getLv2state() == null && logUser.getLv3state() == null) {//一级礼物领取
			logUsers.setIntegral(logUser.getIntegral()+5);
			logUsers.setLv1state("已领取");
			logUserService.updateList1(logUsers);//根据用户id更改用户积分（礼物领取加积分）
			queryMap.put("integral", logUser.getIntegral()+5);
			queryMap.put("type", "success");
		}else
		if (logUser.getLv1state() == null && logUser.getLv3state() == null) {
			logUsers.setIntegral(logUser.getIntegral()+10);
			logUsers.setLv2state("已领取");
			System.out.println("2级礼物领取更改积分");
			logUserService.updateList2(logUsers);//根据用户id更改用户积分（礼物领取加积分）
			queryMap.put("integral", logUser.getIntegral()+10);
			queryMap.put("type", "success");
		}else
		if (logUser.getLv1state() == null && logUser.getLv2state() == null) {
			logUsers.setIntegral(logUser.getIntegral()+20);
			logUsers.setLv3state("已领取");
			logUserService.updateList3(logUser);//根据用户id更改用户积分（礼物领取加积分）
			queryMap.put("integral", logUser.getIntegral()+20);
			queryMap.put("type", "success");
		};
		System.out.println("回调");
		return queryMap;
    }
	
	
	
	//当做题正确率为100%时进入方法更改积分
	@RequestMapping(value="/Addintegral",method=RequestMethod.POST)
	@ResponseBody
	public   Map<String,Object> Addintegral(LogUser  logUser){
		System.err.println("用户微信id："+logUser.getOpenid());
		System.out.println("用户做题正确率："+logUser.getIntegral());
		Map<String, Object> queryMap = new HashMap<String, Object>();
		LogUser logUsers  = new LogUser();
		logUsers.setOpenid(logUser.getOpenid());
		logUsers.setIntegral(logUser.getIntegral()+5);
		logUserService.updateintegral(logUsers);
		queryMap.put("type", "success");
		queryMap.put("integral",logUser.getIntegral()+5);
		System.out.println("回调");
		return queryMap;
	}
	
}
