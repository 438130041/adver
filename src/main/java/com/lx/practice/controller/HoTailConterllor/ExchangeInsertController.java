package com.lx.practice.controller.HoTailConterllor;

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

//�����һ������
@Controller
@RequestMapping("/exchange")
public class ExchangeInsertController {
		
	@Autowired
	private   LogUserService  logUserService;
	
	
	@RequestMapping(value="/exchange",method=RequestMethod.POST)
	@ResponseBody
    public Map<String,Object> hotai(ModelAndView model,HttpServletRequest request,LogUser  logUser){
		//��ת����ʼҳ��
		Map<String, Object> queryMap = new HashMap<String, Object>();
		System.out.println("�����̨���뷽��");
		System.out.println("StudentsName:"+logUser.getStudentsName());
		//��Ӷһ���
		logUserService.exchangeinsert(logUser);
		queryMap.put("type", "success");
        return queryMap;
    }
	
}
