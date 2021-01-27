package com.lx.practice.controller.smallfeatureController;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.General;
import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;



@Controller
@RequestMapping("/lipingzhanshi")
public class WuPinDuiHuanController {
	
	@Autowired
	private  PaiHanService   paiHanService;
	
	
	//�����а�ҳ����������Ʒ�һ�ҳ��
		@RequestMapping(value="/lipingzhanshi",method=RequestMethod.GET)
	    public ModelAndView dakaceshi(ModelAndView model,HttpServletRequest request,String openid){
			
			model.addObject("openid", openid);
			model.setViewName("smallfeature/duihuanwuping");
	        return model;
	    }
	
		
		
		//�����ҵĴ�ҳ��
		@RequestMapping(value="/dajaddaka",method=RequestMethod.GET)
	    public ModelAndView dajaddaka(ModelAndView model,HttpServletRequest request,LogUser  logUser,String  dakarenshu){
				//��ѯ���û�����Ϣ���Ѽ��ϵ���ʽ���س�ȥ	
				
				Date date=new Date();
				Calendar calendar=Calendar.getInstance();
				calendar.setTime(date);
				calendar.add(Calendar.DAY_OF_MONTH, -1);
				SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
				//ǰһ��
				String  zuotian = format.format(calendar.getTime());
				//����
				SimpleDateFormat jintianformat = new SimpleDateFormat("yyyy-MM-dd");
				String   jintian  = jintianformat.format(new Date());
				System.out.println("���죺"+format.format(calendar.getTime()));
				LogUser  LogUsers = new  LogUser();
				LogUsers.setZuotian(zuotian);
				LogUsers.setJintian(jintian);
				//�����ѯ��50��������
			    List<LogUser> dajiadakashuju = paiHanService.dajiadakashuju(LogUsers);
				//����һ��
			    
			    System.out.println("ͼƬ��"+dajiadakashuju.get(0).getDakaurl());
			    model.addObject("dajiadakashuju",dajiadakashuju);
			    model.addObject("dakarenshu",dakarenshu);
				model.addObject("openid", logUser.getOpenid());
				/*model.addObject("nickname", logUser.getNickname());*/
				/*model.addObject("dakarenshu", dakarenshu);*/
				model.setViewName("smallfeature/dakaurl");
			    return model;
	     }
}
