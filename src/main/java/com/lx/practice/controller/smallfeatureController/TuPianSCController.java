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
	
	
	
	//进入图片上传页面
			@RequestMapping(value="/tupianshancuan",method=RequestMethod.GET)
		    public ModelAndView dakaceshi(ModelAndView model,HttpServletRequest request,String  openid,String  dakarenshu){
				
				//查询一段语句
				List<LogUser> pictureidea = paiHanService.Pictureidea();
				
				
				/*model.addObject("dakarenshu",dakarenshu);*///当前打卡总人数
				model.addObject("openid", openid);//当前打卡用户id
				model.addObject("dakarenshu", dakarenshu);
				model.addObject("state", pictureidea.get(0).getState());
				/*model.addObject("headimgurl", logUser.getHeadimgurl());*///当前打卡用户微信头像
				/*model.addObject("nickname", logUser.getNickname());*///当前打卡用户微信昵称
				/*model.addObject("dakatishu", logUser.getDakatishu());*///当前打卡用户连续打卡天数
				model.setViewName("smallfeature/tupianshanchuan");
		        return model;
		    }
		
			
			//学生信息录入
			@RequestMapping(value="/Pictureidea",method=RequestMethod.POST)
			@ResponseBody
		    public Map<String, Object> Pictureidea(ModelAndView model,HttpServletRequest request,LogUser  logUser){
				Map<String, Object> queryMap = new HashMap<String, Object>();
				//查询一段语句
				List<LogUser> pictureidea = paiHanService.Pictureidea();
				queryMap.put("state", pictureidea.get(0).getState());
				queryMap.put("type", "success");
				/*model.setViewName("smallfeature/GetConnected");*/
		        return queryMap;
		    }
		
}
