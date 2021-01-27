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
@RequestMapping("/code")
public class CodeController {
	
	@Autowired
	private  LogUserService logUserService;
	
	
	//������ֵĶһ�
	@RequestMapping(value="/code",method=RequestMethod.POST)
	@ResponseBody
    public Map<String, Object> index(HttpServletRequest request,
    		LogUser  logUser
    		){
		/*System.out.println("opind:"+logUser.getOpenid());
		System.out.println("inputFileName:"+logUser.getExchange());*/
		Map<String, Object> queryMap = new HashMap<String, Object>();
//		System.out.println("��ʼ��ѯ");
		List<LogUser>   code = logUserService.finduserCode(logUser);//�öһ���ȥ��ѯ�Ƿ�����Ϣ
		/*System.out.println("��ѯ�ɹ�");*/
		if (code.size() != 0 && code.get(0).getIntegral() != 0) {//˵������ѧԱ���жһ���
			/*System.out.println("�����ж�");*/
			LogUser logUsers = new LogUser(); 
			LogUser logUsersc = new LogUser();
		  List<LogUser>  loguser = logUserService.findbyuser(logUser.getOpenid());//����΢��id��ѯ���û���Ϣ
		  logUsers.setOpenid(logUser.getOpenid());
		  logUsers.setIntegral(code.get(0).getIntegral()+loguser.get(0).getIntegral());//�һ����еĻ���
		 /* System.out.println("idֵ:"+loguser.get(0).getOpenid());*/
		  logUsersc.setExchange(logUser.getExchange());
		  logUsersc.setIntegral(0);
		  
		  logUserService.updateintegral(logUsers);//���һ����е����ݸ���΢���û�
		  logUserService.updateCode(logUsersc);//���һ����е����ݸ�Ϊ0
		  queryMap.put("type", "success");
		  queryMap.put("integral", code.get(0).getIntegral()+loguser.get(0).getIntegral());
		  /*logUserDao.deleteCode(logUsers);*/
		}else if(code.size() == 0 || code == null){
/*		  System.out.println("�һ������");
*/		  queryMap.put("type", "erorr");
		}else if (code.size() != 0 && code.get(0).getIntegral() == 0) {
			//�һ����Ѷһ�
			queryMap.put("type", "change");
		}
	    return queryMap;
		//��ת����ʼҳ��
    }
	
	
	
}
