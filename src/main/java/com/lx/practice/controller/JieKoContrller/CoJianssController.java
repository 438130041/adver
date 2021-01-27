package com.lx.practice.controller.JieKoContrller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;

@Controller
@RequestMapping("/cojianjilu")
public class CoJianssController {
		
		@Autowired
		private  PaiHanService   paiHanService;
		
		
	//打卡抽奖
		@RequestMapping(value="/cojianjilu")
		@ResponseBody
		public  String  numberquery(ModelAndView model,HttpServletRequest request,
				LogUser  logUser
				){
			System.out.println("进入方法");
			System.out.println("openid:"+logUser.getOpenid());
			System.out.println("daima:"+logUser.getDaima());
			//传入openid（String）和integral（int）	
			//根据id查出用户信息
			LogUser   logUserzhuantai  =  new  LogUser();
			logUserzhuantai.setOpenid(logUser.getOpenid());
			logUserzhuantai.setDaima(logUser.getDaima());
			logUserzhuantai.setState("已领取");
			paiHanService.cojianjianpinzhuantai(logUserzhuantai);
				 
			//根据微信id给用户加积分
			return  "success";
		}
		
	//老师代码查询接口
		
		@RequestMapping(value="/laoshidaima")
		@ResponseBody
		public  String  laoshidaima(ModelAndView model,HttpServletRequest request,
				LogUser  logUser
				){
			String  fanhuizhi = "";
			System.out.println("进入方法");
			//传入老师姓名，老师代码，进行代码验证
			List<LogUser> selectlaoshi = paiHanService.selectlaoshi(logUser);
			if(selectlaoshi.size() == 0 || selectlaoshi.get(0).getCodes() == null || selectlaoshi.get(0).getCodes() == "null"){
				//验证成功
				fanhuizhi = "error";
			}
			if(selectlaoshi.size() != 0 || selectlaoshi.get(0).getCodes() != null || selectlaoshi.get(0).getCodes() != "null"){
				
				fanhuizhi= selectlaoshi.get(0).getImgs();
			}
			return fanhuizhi;
			
			
		}
		
		
		
		
		
		/*@RequestMapping(value="/tu",method=RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> tu(ModelAndView model,HttpServletRequest request,
				LogUser  logUser
				){
			System.out.println("进入方法");
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//传入老师姓名，老师代码，进行代码验证
			List<LogUser> selectlaoshi = paiHanService.selectlaoshi(logUser);
			if(selectlaoshi.size() == 0 || selectlaoshi.get(0).getCodes() == null || selectlaoshi.get(0).getCodes() == "null"){
				//验证成功
				queryMap.put("type", "error");
			}
			if(selectlaoshi.size() != 0 || selectlaoshi.get(0).getCodes() != null || selectlaoshi.get(0).getCodes() != "null"){
				queryMap.put("type", "success");
				queryMap.put("type", selectlaoshi.get(0).getImgs());
			}
			return queryMap;
			
			
		}*/
}
