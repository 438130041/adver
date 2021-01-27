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

//���ֶһ����Ʋ�
@Controller
@RequestMapping("/codephone")
public class PhoneController {
	
	@Autowired
	private  LogUserService logUserService;
	
	
	//������ֵĶһ�
		@RequestMapping(value="/codephone",method=RequestMethod.POST)
		@ResponseBody
	    public Map<String, Object> index(HttpServletRequest request,
	    		LogUser  logUser
	    		){
			Map<String, Object> queryMap = new HashMap<String, Object>();
			List<LogUser>   code = logUserService.finduserCode(logUser);//����������Ķһ��룩��ѯ�Ƿ��иöһ���
			if (code.size() != 0 &&  !code.get(0).getItems().equals("null")) {
				LogUser  logs  = new  LogUser();
				logs.setOpenid(logUser.getOpenid());
				logs.setItems(code.get(0).getItems());
				
				System.out.println("openid��"+logUser.getOpenid());
				System.out.println("��Ʒ������"+code.get(0).getItems());
				//��ʾ�иöһ���
				//���һ����е���Ʒ����΢��
				logUserService.updateuseritems(logs);
				//���һ����ֵ��Ϊ�գ�null��
				logUserService.updateitems(logUser);
				queryMap.put("type", "success");
			}else  if(code.size() == 0 || code == null) {
				    System.out.println("û�жһ���");
					//����Ϊ0����ʾû�иĶһ���
					queryMap.put("type", "erorr");
			}else  if (code.size() != 0  &&  code.get(0).getItems().equals("null")) {
				    System.out.println("�Ѿ��һ���");
					//�Ѷһ���
					queryMap.put("type", "change");
			}
			
		    return queryMap;
			//��ת����ʼҳ��
	    }
	
	
}
