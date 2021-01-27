package com.lx.practice.controller.smallfeatureController;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;

@Controller
@RequestMapping("/chakan")
public class ChaKanController {
	
	@Autowired
	private   PaiHanService   paiHanService;
	 
	
	
	//�鿴�����
			@RequestMapping(value="/chakanhuodonguize",method=RequestMethod.GET)
		    public ModelAndView chakanhuodonguize(ModelAndView model,HttpServletRequest request,String  openid) throws UnsupportedEncodingException{
				System.out.println("����鿴�����");
				
				model.addObject("openid", openid);
				model.setViewName("smallfeature/hodonguize");
		        return model;
		    }
	
			
			
			//�����μ�
			@RequestMapping(value="/canjia",method=RequestMethod.GET)
		    public ModelAndView canjia(ModelAndView model,HttpServletRequest request,String   openid,String  codes,String feizhenshixueyuan) throws UnsupportedEncodingException{
				System.out.println("����鿴�����");
				
				model.addObject("codes", codes);
				model.addObject("openid", openid);
				model.addObject("feizhenshixueyuan", feizhenshixueyuan);
				model.setViewName("smallfeature/jianpinjieshao");
		        return model;
		    }
			
			
			//�鿴��Ʒ��
			@RequestMapping(value="/jianpinbiaodan",method=RequestMethod.GET)
		    public ModelAndView jianpinbiaodan(ModelAndView model,HttpServletRequest request,String  openid) throws UnsupportedEncodingException{
				System.out.println("����鿴��Ʒ��");
				
				model.addObject("openid", openid);
				model.setViewName("smallfeature/jiangpinbiaodan");
		        return model;
		    }
	
		  //�鿴�ҵĴ򿨼�¼
			@RequestMapping(value="/woddaka",method=RequestMethod.GET)
		    public ModelAndView woddaka(ModelAndView model,HttpServletRequest request,String  openid) throws UnsupportedEncodingException{
				System.out.println("�鿴�ҵĴ򿨼�¼");
				System.out.println("openid��"+openid);
				//�鿴�ҵĴ򿨼�¼
				List<LogUser> selecttwoddaka = paiHanService.selecttwoddaka(openid);
				model.addObject("selecttwoddaka", selecttwoddaka);
				model.addObject("openid", openid);
				model.setViewName("smallfeature/woddaka");
		        return model;
		    }
			
}
