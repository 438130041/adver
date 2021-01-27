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
	
		
		//��ѯ���û�������Ϣ���� 
		@RequestMapping(value="/chaxuengerenxinxi",method=RequestMethod.POST)
		@ResponseBody
		public  Map<String, Object>  ajax(UserinFormation  userinformation){//����Ķ��󣬾�������get�����д���ajax�ĺ�����Ŀ����ʵ�������
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//��ѯ���û�������Ϣ
			List<UserinFormation> selectuser = gerenxinxiservice.selectuser(userinformation.getOpenid());
			String yonhugerenxinxi  = JSON.toJSONString(selectuser);//����ѯ������Ŀ���ݣ����϶���ת��Ϊjson���ݸ���map���ϣ��ص���ajax
			queryMap.put("type", "success");
			queryMap.put("yonhugerenxinxi", yonhugerenxinxi);
			return queryMap;
		}
		
		
		
		
		
}
