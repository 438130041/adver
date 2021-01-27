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

//�һ���һ��ӿ�
@Controller
@RequestMapping("/numberquery")
public class ExchangeConterllor {
	
	@Autowired
	private   LogUserService   logUserService;
	
	
	//�ֻ��һ���һ��ӿ�(��ѯ�Ƿ�������ֻ���)
	@RequestMapping(value="/numberquery",method=RequestMethod.POST)
	@ResponseBody
	public  String  numberquery(ModelAndView model,HttpServletRequest request,
			LogUser  logUser
			){
		/*Map<String, Object> queryMap = new HashMap<String, Object>();*/
		String  itemsfh = "";
		//��ѯ�Ƿ�������һ���
		System.out.println("�����ѯ");
		List<LogUser> numberquery = logUserService.findbyuser(logUser.getOpenid());
		System.out.println("��ѯ�����"+numberquery);
		if (numberquery.size() == 0) {
			//���Ϊ��˵�������ڣ�����false
			/*String EQtitle  = JSON.toJSONString("0");*/
			return "0";
		}else {
		/*	String EQtitle  = JSON.toJSONString("1");*/
			String  items = numberquery.get(0).getItems();
			System.out.println("items:"+items);
			if (!StringUtils.isEmpty(items) &&  !items.equals("null")) {
				System.out.println("����ֵ");
				itemsfh = items;
			}else if (StringUtils.isEmpty(items)) {
				System.out.println("����Ϊ��");
				itemsfh = "weiduihuan";//δ�һ�
			}else if (items.equals("null")) {
				System.out.println("����Ϊnull");
				itemsfh  = "yiduihuan";//�Ѷһ�
			}
			
			/*if (items == null) {
				System.out.println("����Ϊ��");
				itemsfh = "weiduihuan";//δ�һ�
			}else if (items == "null") {
				System.out.println("����Ϊnull");
				itemsfh  = "yiduihuan";//�Ѷһ�
			}else  if (items != null &&  items != "null") {
				System.out.println("����ֵ");
				itemsfh = items;
			}*/
		}
		return  itemsfh;
	}
	
	//�һ����������
	@RequestMapping(value="/numberexchange",method=RequestMethod.POST)
	@ResponseBody
	public   String   numberexchange(ModelAndView model,HttpServletRequest request,
			LogUser  logUser
			){
		    System.out.println("������ķ���");
			System.out.println("Ҫ���ĵ�΢�����ݣ�΢��openid:"+logUser.getOpenid());
			//�û��һ��һ���󣬽��û�΢����Ϣ�еĶһ�������ݸ�Ϊnull
			logUserService.updatayonhuitems(logUser);
			return "null";//����
	}
}
