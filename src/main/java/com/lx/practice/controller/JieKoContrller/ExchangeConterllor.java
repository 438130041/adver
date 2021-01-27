package com.lx.practice.controller.JieKoContrller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.aspectj.weaver.ast.Var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.LogUserService;

//兑换码兑换接口
@Controller
@RequestMapping("/numberquery")
public class ExchangeConterllor {
	
	@Autowired
	private   LogUserService   logUserService;
	
	
	//手机兑换码兑换接口(查询是否有这个手机号)
	@RequestMapping(value="/numberquery",method=RequestMethod.POST)
	@ResponseBody
	public  String  numberquery(ModelAndView model,HttpServletRequest request,
			LogUser  logUser
			){
		/*Map<String, Object> queryMap = new HashMap<String, Object>();*/
		String  itemsfh = "";
		//查询是否有这个兑换码
		System.out.println("进入查询");
		List<LogUser> numberquery = logUserService.findbyuser(logUser.getOpenid());
		System.out.println("查询结果："+numberquery);
		if (numberquery.size() == 0) {
			//如果为空说明不存在，返回false
			/*String EQtitle  = JSON.toJSONString("0");*/
			return "0";
		}else {
		/*	String EQtitle  = JSON.toJSONString("1");*/
			String  items = numberquery.get(0).getItems();
			System.out.println("items:"+items);
			if (!StringUtils.isEmpty(items) &&  !items.equals("null")) {
				System.out.println("有数值");
				itemsfh = items;
			}else if (StringUtils.isEmpty(items)) {
				System.out.println("数据为空");
				itemsfh = "weiduihuan";//未兑换
			}else if (items.equals("null")) {
				System.out.println("数据为null");
				itemsfh  = "yiduihuan";//已兑换
			}
			
			/*if (items == null) {
				System.out.println("数据为空");
				itemsfh = "weiduihuan";//未兑换
			}else if (items == "null") {
				System.out.println("数据为null");
				itemsfh  = "yiduihuan";//已兑换
			}else  if (items != null &&  items != "null") {
				System.out.println("有数值");
				itemsfh = items;
			}*/
		}
		return  itemsfh;
	}
	
	//兑换后更改数据
	@RequestMapping(value="/numberexchange",method=RequestMethod.POST)
	@ResponseBody
	public   String   numberexchange(ModelAndView model,HttpServletRequest request,
			LogUser  logUser
			){
		    System.out.println("进入更改方法");
			System.out.println("要更改的微信数据，微信openid:"+logUser.getOpenid());
			//用户兑换兑换码后，将用户微信信息中的兑换码的数据改为null
			logUserService.updatayonhuitems(logUser);
			return "null";//更新
	}
}
