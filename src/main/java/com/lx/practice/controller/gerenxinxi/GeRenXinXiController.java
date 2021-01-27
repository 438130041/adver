package com.lx.practice.controller.gerenxinxi;


import java.util.Map;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.lx.practice.entity.UserinFormation;
import com.lx.practice.service.GeRenXinXiService.GeRenXinXiService;

@Controller
@RequestMapping("/gerenxinxi")
public class GeRenXinXiController {
		
		@Autowired
		private   GeRenXinXiService  gerenxinxiservice;
	
		
		//查询出用户个人信息（） 
		@RequestMapping(value="/chaxuengerenxinxi",method=RequestMethod.POST)
		@ResponseBody
		public  Map<String, Object>  ajax(UserinFormation  userinformation){//这里的对象，就是上面get方法中传给ajax的含有题目名的实体类对象
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//查询出用户个人信息
			List<UserinFormation> selectuser = gerenxinxiservice.selectuser(userinformation.getOpenid());
			String yonhugerenxinxi  = JSON.toJSONString(selectuser);//将查询出的题目数据（集合对象）转换为json数据给与map集合，回调给ajax
			queryMap.put("type", "success");
			queryMap.put("yonhugerenxinxi", yonhugerenxinxi);
			return queryMap;
		}
		
		
		
		
		
}
