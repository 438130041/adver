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

import com.lx.practice.dao.HoTaiDao.InformationDao;
import com.lx.practice.entity.LogUser;

@Controller
@RequestMapping("/zhuanshudaima")
public class ZhuanShuDaiMa {
		
	@Autowired
	private  InformationDao   informationDao;
		
	
	//ÀÏÊ¦×¨Êô´úÂë²éÑ¯
		@RequestMapping(value="/zhuanshudaima",method=RequestMethod.GET)
	    public ModelAndView zhuanshudaima(ModelAndView model,HttpServletRequest request){
			//ï¿½ï¿½×ªï¿½ï¿½ï¿½ï¿½Ê¼Ò³ï¿½ï¿½
			
			System.out.println("½øÈëºóÌ¨");
	        model.setViewName("hotail/adminzhuanshudaima");
	        return model;
	    }
	
	
		
		@RequestMapping(value="/jianpinzhuantai",method=RequestMethod.POST)
		@ResponseBody
		public  Object  jianpinzhuantai(ModelAndView model,HttpServletRequest request,
				String  User_Name,String  nickname,String  number,String TeacherCodes,String  prize
				) throws UnsupportedEncodingException{
			Map<String, Object> queryMap = new HashMap<String, Object>();
			LogUser  logUser   =  new  LogUser();
			com.alibaba.fastjson.JSONObject  jsonObject = null;
			System.out.println("½øÈë×¨ÊôÑ§Ô±²éÑ¯");
			
	        int page = Integer.parseInt(request.getParameter("page"));
	        int limit = Integer.parseInt(request.getParameter("limit"));
	        int start = limit * (page - 1);
			/*System.out.println("User_Name:"+User_Name);
			System.out.println("number:"+number);
			System.out.println("nickname:"+nickname);
			System.out.println("TeacherCodes:"+TeacherCodes);*/
			logUser.setUser_Name(User_Name);
			logUser.setNumber(number);
			logUser.setNickname(nickname);
			logUser.setTeacherCodes(TeacherCodes);
			if (User_Name != null  && !User_Name.equals("null")) {//&& number.equals("null") &&  nickname.equals("null")
				//Ê¹ï¿½ï¿½Ñ§Ô±ï¿½ï¿½ï¿½ï¿½Ä£ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
				logUser.setLimit(Integer.parseInt("100"));//Ã¿Ò³ï¿½ï¿½Ê¾ï¿½ï¿½ï¿½ï¿½
				logUser.setStart(Integer.parseInt("0"));//ï¿½ï¿½Ê¼Ò³
				List<LogUser>  finduser = informationDao.finduser(logUser);
				int  counts = finduser.size();
				queryMap.put("code", 0);
				queryMap.put("msg", "lay ui-TableÊý¾Ý°ó¶¨Êý¾Ý¿â");
				queryMap.put("count", counts);
				queryMap.put("data", finduser);
				com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
				jsonObject = json;
			}
			if (nickname != null  && !nickname.equals("null")) {
				logUser.setLimit(Integer.parseInt("100"));//Ã¿Ò³ï¿½ï¿½Ê¾ï¿½ï¿½ï¿½ï¿½
				logUser.setStart(Integer.parseInt("0"));//ï¿½ï¿½Ê¼Ò³
				List<LogUser> findnickname = informationDao.findnickname(logUser);
				int  counts = findnickname.size();
				queryMap.put("code", 0);
				queryMap.put("msg", "lay ui-TableÊý¾Ý°ó¶¨Êý¾Ý¿â");
				queryMap.put("count", counts);
				queryMap.put("data", findnickname);
				com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
				jsonObject = json;
			}
			if (number != null  &&  !number.equals("null")) {
				logUser.setLimit(Integer.parseInt("100"));//Ã¿Ò³ï¿½ï¿½Ê¾ï¿½ï¿½ï¿½ï¿½
				logUser.setStart(Integer.parseInt("0"));//ï¿½ï¿½Ê¼Ò³
				List<LogUser> findnumber = informationDao.findnumber(logUser);
				int  counts = findnumber.size();
				queryMap.put("code", 0);
				queryMap.put("msg", "lay ui-TableÊý¾Ý°ó¶¨Êý¾Ý¿â");
				queryMap.put("count", counts);
				queryMap.put("data", findnumber);
				com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
				jsonObject = json;
			}
			if (prize != null  &&  !prize.equals("null")) {
				logUser.setLimit(Integer.parseInt("100"));//Ã¿Ò³ï¿½ï¿½Ê¾ï¿½ï¿½ï¿½ï¿½
				logUser.setStart(Integer.parseInt("0"));//ï¿½ï¿½Ê¼Ò³
				List<LogUser> jianpinchaxuen = informationDao.jianpinchaxuen(logUser);
				int  counts = jianpinchaxuen.size();
				queryMap.put("code", 0);
				queryMap.put("msg", "lay ui-TableÊý¾Ý°ó¶¨Êý¾Ý¿â");
				queryMap.put("count", counts);
				queryMap.put("data", jianpinchaxuen);
				com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
				jsonObject = json;
			}
			if (User_Name == null && nickname ==  null && number == null &&  TeacherCodes == null) {
				System.out.println("²éÑ¯ËùÓÐ");
				logUser.setLimit(limit);//Ã¿Ò³ï¿½ï¿½Ê¾ï¿½ï¿½ï¿½ï¿½
				logUser.setStart(start);//ï¿½ï¿½Ê¼Ò³
				System.out.println("limitµÄÖµ£º"+limit);
				System.out.println("startµÄÖµ£º"+start);
				// ï¿½ï¿½Ñ¯ï¿½ï¿½ï¿½ï¿½ï¿½Ýµï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
				List<LogUser>  jianpinzhuantai = informationDao.jianpinzhuantai(logUser);
				int   counts = jianpinzhuantai.size();
				queryMap.put("code", 0);
				queryMap.put("msg", "llay ui-TableÊý¾Ý°ó¶¨Êý¾Ý¿â");
				queryMap.put("count", counts);
				queryMap.put("data", jianpinzhuantai);
				com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
				jsonObject = json;
			}
			return jsonObject;
		}
		
		
}
