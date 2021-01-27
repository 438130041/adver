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


//������ȡ���Ʋ�
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
		if (logUser.getLv2state() == null && logUser.getLv3state() == null) {//һ��������ȡ
			logUsers.setIntegral(logUser.getIntegral()+5);
			logUsers.setLv1state("����ȡ");
			logUserService.updateList1(logUsers);//�����û�id�����û����֣�������ȡ�ӻ��֣�
			queryMap.put("integral", logUser.getIntegral()+5);
			queryMap.put("type", "success");
		}else
		if (logUser.getLv1state() == null && logUser.getLv3state() == null) {
			logUsers.setIntegral(logUser.getIntegral()+10);
			logUsers.setLv2state("����ȡ");
			System.out.println("2��������ȡ���Ļ���");
			logUserService.updateList2(logUsers);//�����û�id�����û����֣�������ȡ�ӻ��֣�
			queryMap.put("integral", logUser.getIntegral()+10);
			queryMap.put("type", "success");
		}else
		if (logUser.getLv1state() == null && logUser.getLv2state() == null) {
			logUsers.setIntegral(logUser.getIntegral()+20);
			logUsers.setLv3state("����ȡ");
			logUserService.updateList3(logUser);//�����û�id�����û����֣�������ȡ�ӻ��֣�
			queryMap.put("integral", logUser.getIntegral()+20);
			queryMap.put("type", "success");
		};
		System.out.println("�ص�");
		return queryMap;
    }
	
	
	
	//��������ȷ��Ϊ100%ʱ���뷽�����Ļ���
	@RequestMapping(value="/Addintegral",method=RequestMethod.POST)
	@ResponseBody
	public   Map<String,Object> Addintegral(LogUser  logUser){
		System.err.println("�û�΢��id��"+logUser.getOpenid());
		System.out.println("�û�������ȷ�ʣ�"+logUser.getIntegral());
		Map<String, Object> queryMap = new HashMap<String, Object>();
		LogUser logUsers  = new LogUser();
		logUsers.setOpenid(logUser.getOpenid());
		logUsers.setIntegral(logUser.getIntegral()+5);
		logUserService.updateintegral(logUsers);
		queryMap.put("type", "success");
		queryMap.put("integral",logUser.getIntegral()+5);
		System.out.println("�ص�");
		return queryMap;
	}
	
}
