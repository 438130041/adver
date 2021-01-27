package com.lx.practice.controller.JiFengDuiHuanController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.LogUserService;

//积分兑换控制层
@Controller
@RequestMapping("/codephone")
public class PhoneController {
	
	@Autowired
	private  LogUserService logUserService;
	
	
	//处理积分的兑换
		@RequestMapping(value="/codephone",method=RequestMethod.POST)
		@ResponseBody
	    public Map<String, Object> index(HttpServletRequest request,
	    		LogUser  logUser
	    		){
			Map<String, Object> queryMap = new HashMap<String, Object>();
			List<LogUser>   code = logUserService.finduserCode(logUser);//（根据输入的兑换码）查询是否有该兑换码
			if (code.size() != 0 &&  !code.get(0).getItems().equals("null")) {
				LogUser  logs  = new  LogUser();
				logs.setOpenid(logUser.getOpenid());
				logs.setItems(code.get(0).getItems());
				
				System.out.println("openid："+logUser.getOpenid());
				System.out.println("物品数量："+code.get(0).getItems());
				//表示有该兑换码
				//将兑换码中的物品给与微信
				logUserService.updateuseritems(logs);
				//将兑换码的值改为空（null）
				logUserService.updateitems(logUser);
				queryMap.put("type", "success");
			}else  if(code.size() == 0 || code == null) {
				    System.out.println("没有兑换码");
					//长度为0，表示没有改兑换码
					queryMap.put("type", "erorr");
			}else  if (code.size() != 0  &&  code.get(0).getItems().equals("null")) {
				    System.out.println("已经兑换过");
					//已兑换过
					queryMap.put("type", "change");
			}
			
		    return queryMap;
			//跳转到开始页面
	    }
	
	
}
