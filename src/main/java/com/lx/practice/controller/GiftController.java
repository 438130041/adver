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


//������ȡ���Ʋ㣨���̳ǶԽӽӿڣ����̳���Ŀ�е�������Ʋ��еķ�����
@Controller
@RequestMapping("/integral")
public class GiftController {
	
	@Autowired
	private  LogUserService logUserService;
	
	//��ѯ�û�����
	@RequestMapping(value="/findbyuser",method=RequestMethod.POST)
	@ResponseBody
    public String findbyuser(ModelAndView model,HttpServletRequest request,
    		LogUser  logUser
    		){
		/*System.out.println("���̳Ǵ�������idֵ��"+logUser.getOpenid());*/
		  //��ѯ����
		List<LogUser> findbyuser = logUserService.findbyuser(logUser.getOpenid());//��ѯ��Ҫ�Ի����ֵ��û��Ļ���openid
		String EQtitle  = JSON.toJSONString(findbyuser.get(0));
		System.out.println("��ѯ����id��"+findbyuser.get(0).getOpenid());
		//��ת����ʼҳ��
        return EQtitle;
    }

	//�����û�����
	@RequestMapping(value="/updateintegral",method=RequestMethod.POST)
	@ResponseBody
    public String updateintegral(ModelAndView model,HttpServletRequest request,
    		LogUser  logUser
    		){
		  //��ѯ����
		logUserService.updateintegral(logUser);//�һ����ֺ�����û��Ļ���openid,integral
		 //��������ѯ
		List<LogUser> findbyuser = logUserService.findbyuser(logUser.getOpenid());
		String EQtitle  = JSON.toJSONString(findbyuser.get(0));
		//��ѯ��Ҫ�Ի����ֵ��û��Ļ���openid
        return EQtitle;
    }
	
	
}
