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
	
	
	//在排行榜页面点击进入物品兑换页面
		@RequestMapping(value="/lipingzhanshi",method=RequestMethod.GET)
	    public ModelAndView dakaceshi(ModelAndView model,HttpServletRequest request,String openid){
			
			model.addObject("openid", openid);
			model.setViewName("smallfeature/duihuanwuping");
	        return model;
	    }
	
		
		
		//进入大家的打卡页面
		@RequestMapping(value="/dajaddaka",method=RequestMethod.GET)
	    public ModelAndView dajaddaka(ModelAndView model,HttpServletRequest request,LogUser  logUser,String  dakarenshu){
				//查询出用户打卡信息，已集合的形式返回出去	
				
				Date date=new Date();
				Calendar calendar=Calendar.getInstance();
				calendar.setTime(date);
				calendar.add(Calendar.DAY_OF_MONTH, -1);
				SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
				//前一天
				String  zuotian = format.format(calendar.getTime());
				//今天
				SimpleDateFormat jintianformat = new SimpleDateFormat("yyyy-MM-dd");
				String   jintian  = jintianformat.format(new Date());
				System.out.println("昨天："+format.format(calendar.getTime()));
				LogUser  LogUsers = new  LogUser();
				LogUsers.setZuotian(zuotian);
				LogUsers.setJintian(jintian);
				//随机查询出50条打卡数据
			    List<LogUser> dajiadakashuju = paiHanService.dajiadakashuju(LogUsers);
				//定义一个
			    
			    System.out.println("图片："+dajiadakashuju.get(0).getDakaurl());
			    model.addObject("dajiadakashuju",dajiadakashuju);
			    model.addObject("dakarenshu",dakarenshu);
				model.addObject("openid", logUser.getOpenid());
				/*model.addObject("nickname", logUser.getNickname());*/
				/*model.addObject("dakarenshu", dakarenshu);*/
				model.setViewName("smallfeature/dakaurl");
			    return model;
	     }
}
