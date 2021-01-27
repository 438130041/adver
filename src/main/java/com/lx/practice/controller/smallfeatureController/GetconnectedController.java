package com.lx.practice.controller.smallfeatureController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;


@Controller
@RequestMapping("/GetConnected")
public class GetconnectedController {
	
	@Autowired
	private   PaiHanService  paiHanService;
	
	//进入老师登录页面
		@RequestMapping(value="/GetConnected",method=RequestMethod.GET)
	    public ModelAndView GetConnected(ModelAndView model,HttpServletRequest request){
			
			
			model.setViewName("smallfeature/GetConnected");
	        return model;
	    }
		
		
		//老师登录验证
		@RequestMapping(value="/validation",method=RequestMethod.POST)
		@ResponseBody
	    public Map<String, Object> validation(ModelAndView model,HttpServletRequest request,LogUser  logUser,String  codes){
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//验证老师输入信息是否正确
			List<LogUser> selectlaoshi = paiHanService.selectlaoshi(logUser);
			if (selectlaoshi.size() == 0 || StringUtils.isEmpty(selectlaoshi.get(0).getUser_Name())) {//StringUtils.isEmpty方法为空（返回true）就进入
				queryMap.put("type", "error");
				
			}else{
				queryMap.put("type", "success");
				//返回老师的专属代码用于生成老师个人专属链接
				queryMap.put("codes", selectlaoshi.get(0).getCodes());
			}
			queryMap.put("codes", codes);
			/*model.setViewName("smallfeature/GetConnected");*/
	        return queryMap;
	    }
		
		
}
