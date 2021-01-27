package com.lx.practice.controller.HoTailConterllor;

import java.io.UnsupportedEncodingException;
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
import com.lx.practice.service.HoTaiService.InformationService;

@Controller
@RequestMapping("/admintikuorder")
public class InformationConterllor {
	
	@Autowired
	private  InformationService  informationService;
	
	
	@RequestMapping(value="/admintikuorder")
    public ModelAndView information(ModelAndView model,HttpServletRequest request){
		//锟斤拷转锟斤拷锟斤拷始页锟斤拷
		
        model.setViewName("hotail/adminjixunying");
        return model;
    }
	
	
	
	@RequestMapping(value="/yonhufind",method=RequestMethod.POST)
	@ResponseBody
	public  Object  yonhufind(ModelAndView model,HttpServletRequest request,
			String  User_Name,String  nickname,String  number
			) throws UnsupportedEncodingException{//锟斤拷锟斤拷亩锟斤拷螅锟斤拷锟斤拷锟斤拷锟絞et锟斤拷锟斤拷锟叫达拷锟斤拷ajax锟侥猴拷锟斤拷锟斤拷目锟斤拷锟斤拷实锟斤拷锟斤拷锟斤拷锟�
		Map<String, Object> queryMap = new HashMap<String, Object>();
		LogUser  logUser   =  new  LogUser();
		com.alibaba.fastjson.JSONObject  jsonObject = null;
		/*String  nickname  =  request.getParameter("nickname");
		//锟斤拷锟斤拷锟矫伙拷锟街伙拷锟脚诧拷询
		String  number  =  request.getParameter("number");*/
		/*//锟斤拷询锟斤拷应锟斤拷锟街碉拷锟矫伙拷
		String  User_Name  = request.getParameter("User_Name");*/
		// 锟斤拷前页锟斤拷
        int page = Integer.parseInt(request.getParameter("page"));
        // 锟斤拷示锟斤拷锟斤拷
        int limit = Integer.parseInt(request.getParameter("limit"));
        //锟斤拷为sql锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷
        int start = limit * (page - 1);
		System.out.println("User_Name:"+User_Name);
		System.out.println("number:"+number);
		System.out.println("nickname:"+nickname);
		logUser.setUser_Name(User_Name);
		logUser.setNumber(number);
		logUser.setNickname(nickname);
		if (User_Name != null  && !User_Name.equals("null")) {//&& number.equals("null") &&  nickname.equals("null")
			//使锟斤拷学员锟斤拷锟斤拷模锟斤拷锟斤拷锟斤拷
			logUser.setLimit(Integer.parseInt("100"));//每页锟斤拷示锟斤拷锟斤拷
			logUser.setStart(Integer.parseInt("0"));//锟斤拷始页
			List<LogUser>  finduser = informationService.finduser(logUser);
			int  counts = finduser.size();
			queryMap.put("code", 0);
			queryMap.put("msg", "lay ui-Table数据绑定数据库");
			queryMap.put("count", counts);
			queryMap.put("data", finduser);
			com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
			jsonObject = json;
		}
		if (nickname != null  && !nickname.equals("null")) {
			logUser.setLimit(Integer.parseInt("100"));//每页锟斤拷示锟斤拷锟斤拷
			logUser.setStart(Integer.parseInt("0"));//锟斤拷始页
			List<LogUser> findnickname = informationService.findnickname(logUser);
			int  counts = findnickname.size();
			System.out.println("锟斤拷锟斤拷微锟斤拷锟角筹拷counts:"+counts);
			queryMap.put("code", 0);
			queryMap.put("msg", "lay ui-Table数据绑定数据库");
			queryMap.put("count", counts);
			queryMap.put("data", findnickname);
			com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
			jsonObject = json;
		}
		if (number != null  &&  !number.equals("null")) {
			logUser.setLimit(Integer.parseInt("100"));//每页锟斤拷示锟斤拷锟斤拷
			logUser.setStart(Integer.parseInt("0"));//锟斤拷始页
			List<LogUser> findnumber = informationService.findnumber(logUser);
			int  counts = findnumber.size();
/*			System.out.println("锟斤拷锟斤拷锟街伙拷锟脚诧拷询counts:"+counts);*/
			queryMap.put("code", 0);
			queryMap.put("msg", "lay ui-Table数据绑定数据库");
			queryMap.put("count", counts);
			queryMap.put("data", findnumber);
			com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
			jsonObject = json;
		}
		if (User_Name == null && nickname ==  null && number == null ) {
			logUser.setLimit(limit);//每页锟斤拷示锟斤拷锟斤拷
			logUser.setStart(start);//锟斤拷始页
			// 锟斤拷询锟斤拷锟斤拷锟捷碉拷锟斤拷锟斤拷锟斤拷
			int counts = informationService.orderpt();
			List<LogUser>  yonhufind = informationService.yonhufind(logUser);
			queryMap.put("code", 0);
			queryMap.put("msg", "lay ui-Table数据绑定数据库");
			queryMap.put("count", counts);
			queryMap.put("data", yonhufind);
			com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
			jsonObject = json;
		}
		return jsonObject;
		
	}
	
}