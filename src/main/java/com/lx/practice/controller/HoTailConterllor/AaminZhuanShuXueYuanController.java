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
@RequestMapping("/zhuanshuxueyuan")
public class AaminZhuanShuXueYuanController {
		
	//进入专属学员查询页面
	@Autowired
	private  InformationService  informationService;
	
	
	@RequestMapping(value="/zhuanshuxueyuan")
    public ModelAndView zhuanshuxueyuan(ModelAndView model,HttpServletRequest request){
		
        model.setViewName("hotail/adminxuanyuanchaxuen");
        return model;
    }
	
	
	
	
	
	@RequestMapping(value="/zhuanshuxueyuanpost",method=RequestMethod.POST)
	@ResponseBody
	public  Object  yonhufind(ModelAndView model,HttpServletRequest request,
			String  User_Name,String  nickname,String  number,String TeacherCodes
			) throws UnsupportedEncodingException{
		Map<String, Object> queryMap = new HashMap<String, Object>();
		LogUser  logUser   =  new  LogUser();
		com.alibaba.fastjson.JSONObject  jsonObject = null;
		System.out.println("进入专属学员查询");
		
        int page = Integer.parseInt(request.getParameter("page"));
        int limit = Integer.parseInt(request.getParameter("limit"));
        int start = limit * (page - 1);
		System.out.println("User_Name:"+User_Name);
		System.out.println("number:"+number);
		System.out.println("nickname:"+nickname);
		System.out.println("TeacherCodes:"+TeacherCodes);
		logUser.setUser_Name(User_Name);
		logUser.setNumber(number);
		logUser.setNickname(nickname);
		logUser.setTeacherCodes(TeacherCodes);
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
			queryMap.put("code", 0);
			queryMap.put("msg", "lay ui-Table数据绑定数据库");
			queryMap.put("count", counts);
			queryMap.put("data", findnumber);
			com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
			jsonObject = json;
		}
		
		if (TeacherCodes != null  &&  !TeacherCodes.equals("null")) {
			logUser.setLimit(limit);//每页锟斤拷示锟斤拷锟斤拷
			logUser.setStart(start);//锟斤拷始
			System.out.println("使用代码查询");
			List<LogUser> findTeacherCodes = informationService.findTeacherCodes(logUser);
			int  counts = findTeacherCodes.size();
			System.out.println("数据长度："+counts);
			queryMap.put("code", 0);
			queryMap.put("msg", "lay ui-Table数据绑定数据库");
			queryMap.put("count", counts);
			queryMap.put("data", findTeacherCodes);
			com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
			jsonObject = json;
		}
		if (User_Name == null && nickname ==  null && number == null &&  TeacherCodes == null) {
			System.out.println("查询所有");
			logUser.setLimit(limit);//每页锟斤拷示锟斤拷锟斤拷
			logUser.setStart(start);//锟斤拷始页
			// 锟斤拷询锟斤拷锟斤拷锟捷碉拷锟斤拷锟斤拷锟斤拷
			int   counts  = informationService.zhuanshuorderpt();
			List<LogUser>  yonhufind = informationService.dakahuodonxueyuan(logUser);
			System.out.println("查询完毕");
			queryMap.put("code", 0);
			queryMap.put("msg", "llay ui-Table数据绑定数据库");
			queryMap.put("count", counts);
			queryMap.put("data", yonhufind);
			com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
			jsonObject = json;
		}
		
		
		
		return jsonObject;
		
	}
	
	
}
