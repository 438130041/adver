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
@RequestMapping("/sinformation")
public class StudentsInformationController {
		
		@Autowired
		private  PaiHanService   paiHanService;
		
	
		//学生信息录入
			@RequestMapping(value="/sinformation",method=RequestMethod.POST)
			@ResponseBody
		    public Map<String, Object> sinformation(ModelAndView model,HttpServletRequest request,LogUser  logUser){
				Map<String, Object> queryMap = new HashMap<String, Object>();
				//将学生信息录入数据库中
				paiHanService.insertStudents(logUser);
				queryMap.put("type", "success");
				/*model.setViewName("smallfeature/GetConnected");*/
		        return queryMap;
		    }
	
	
}
