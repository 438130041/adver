package com.lx.practice.controller.smallfeatureController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;

@Controller
@RequestMapping("/tupianshancuan")
public class TuPianSCController {
		
	@Autowired
	private  PaiHanService   paiHanService;
	
	
	
	//����ͼƬ�ϴ�ҳ��
			@RequestMapping(value="/tupianshancuan",method=RequestMethod.GET)
		    public ModelAndView dakaceshi(ModelAndView model,HttpServletRequest request,String  openid,String  dakarenshu){
				
				//��ѯһ�����
				List<LogUser> pictureidea = paiHanService.Pictureidea();
				
				
				/*model.addObject("dakarenshu",dakarenshu);*///��ǰ��������
				model.addObject("openid", openid);//��ǰ���û�id
				model.addObject("dakarenshu", dakarenshu);
				model.addObject("state", pictureidea.get(0).getState());
				/*model.addObject("headimgurl", logUser.getHeadimgurl());*///��ǰ���û�΢��ͷ��
				/*model.addObject("nickname", logUser.getNickname());*///��ǰ���û�΢���ǳ�
				/*model.addObject("dakatishu", logUser.getDakatishu());*///��ǰ���û�����������
				model.setViewName("smallfeature/tupianshanchuan");
		        return model;
		    }
		
			
			//ѧ����Ϣ¼��
			@RequestMapping(value="/Pictureidea",method=RequestMethod.POST)
			@ResponseBody
		    public Map<String, Object> Pictureidea(ModelAndView model,HttpServletRequest request,LogUser  logUser){
				Map<String, Object> queryMap = new HashMap<String, Object>();
				//��ѯһ�����
				List<LogUser> pictureidea = paiHanService.Pictureidea();
				queryMap.put("state", pictureidea.get(0).getState());
				queryMap.put("type", "success");
				/*model.setViewName("smallfeature/GetConnected");*/
		        return queryMap;
		    }
		
}
