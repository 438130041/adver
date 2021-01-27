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
	 
	
	
	//查看活动规则
			@RequestMapping(value="/chakanhuodonguize",method=RequestMethod.GET)
		    public ModelAndView chakanhuodonguize(ModelAndView model,HttpServletRequest request,String  openid) throws UnsupportedEncodingException{
				System.out.println("进入查看活动规则");
				
				model.addObject("openid", openid);
				model.setViewName("smallfeature/hodonguize");
		        return model;
		    }
	
			
			
			//立即参加
			@RequestMapping(value="/canjia",method=RequestMethod.GET)
		    public ModelAndView canjia(ModelAndView model,HttpServletRequest request,String   openid,String  codes,String feizhenshixueyuan) throws UnsupportedEncodingException{
				System.out.println("进入查看活动规则");
				
				model.addObject("codes", codes);
				model.addObject("openid", openid);
				model.addObject("feizhenshixueyuan", feizhenshixueyuan);
				model.setViewName("smallfeature/jianpinjieshao");
		        return model;
		    }
			
			
			//查看奖品表单
			@RequestMapping(value="/jianpinbiaodan",method=RequestMethod.GET)
		    public ModelAndView jianpinbiaodan(ModelAndView model,HttpServletRequest request,String  openid) throws UnsupportedEncodingException{
				System.out.println("进入查看奖品表单");
				
				model.addObject("openid", openid);
				model.setViewName("smallfeature/jiangpinbiaodan");
		        return model;
		    }
	
		  //查看我的打卡记录
			@RequestMapping(value="/woddaka",method=RequestMethod.GET)
		    public ModelAndView woddaka(ModelAndView model,HttpServletRequest request,String  openid) throws UnsupportedEncodingException{
				System.out.println("查看我的打卡记录");
				System.out.println("openid："+openid);
				//查看我的打卡记录
				List<LogUser> selecttwoddaka = paiHanService.selecttwoddaka(openid);
				model.addObject("selecttwoddaka", selecttwoddaka);
				model.addObject("openid", openid);
				model.setViewName("smallfeature/woddaka");
		        return model;
		    }
			
}
