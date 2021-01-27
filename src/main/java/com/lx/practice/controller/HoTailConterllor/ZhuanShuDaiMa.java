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
		
	
	//��ʦר�������ѯ
		@RequestMapping(value="/zhuanshudaima",method=RequestMethod.GET)
	    public ModelAndView zhuanshudaima(ModelAndView model,HttpServletRequest request){
			//��ת����ʼҳ��
			
			System.out.println("�����̨");
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
			System.out.println("����ר��ѧԱ��ѯ");
			
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
				//ʹ��ѧԱ����ģ������
				logUser.setLimit(Integer.parseInt("100"));//ÿҳ��ʾ����
				logUser.setStart(Integer.parseInt("0"));//��ʼҳ
				List<LogUser>  finduser = informationDao.finduser(logUser);
				int  counts = finduser.size();
				queryMap.put("code", 0);
				queryMap.put("msg", "lay ui-Table���ݰ����ݿ�");
				queryMap.put("count", counts);
				queryMap.put("data", finduser);
				com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
				jsonObject = json;
			}
			if (nickname != null  && !nickname.equals("null")) {
				logUser.setLimit(Integer.parseInt("100"));//ÿҳ��ʾ����
				logUser.setStart(Integer.parseInt("0"));//��ʼҳ
				List<LogUser> findnickname = informationDao.findnickname(logUser);
				int  counts = findnickname.size();
				queryMap.put("code", 0);
				queryMap.put("msg", "lay ui-Table���ݰ����ݿ�");
				queryMap.put("count", counts);
				queryMap.put("data", findnickname);
				com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
				jsonObject = json;
			}
			if (number != null  &&  !number.equals("null")) {
				logUser.setLimit(Integer.parseInt("100"));//ÿҳ��ʾ����
				logUser.setStart(Integer.parseInt("0"));//��ʼҳ
				List<LogUser> findnumber = informationDao.findnumber(logUser);
				int  counts = findnumber.size();
				queryMap.put("code", 0);
				queryMap.put("msg", "lay ui-Table���ݰ����ݿ�");
				queryMap.put("count", counts);
				queryMap.put("data", findnumber);
				com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
				jsonObject = json;
			}
			if (prize != null  &&  !prize.equals("null")) {
				logUser.setLimit(Integer.parseInt("100"));//ÿҳ��ʾ����
				logUser.setStart(Integer.parseInt("0"));//��ʼҳ
				List<LogUser> jianpinchaxuen = informationDao.jianpinchaxuen(logUser);
				int  counts = jianpinchaxuen.size();
				queryMap.put("code", 0);
				queryMap.put("msg", "lay ui-Table���ݰ����ݿ�");
				queryMap.put("count", counts);
				queryMap.put("data", jianpinchaxuen);
				com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
				jsonObject = json;
			}
			if (User_Name == null && nickname ==  null && number == null &&  TeacherCodes == null) {
				System.out.println("��ѯ����");
				logUser.setLimit(limit);//ÿҳ��ʾ����
				logUser.setStart(start);//��ʼҳ
				System.out.println("limit��ֵ��"+limit);
				System.out.println("start��ֵ��"+start);
				// ��ѯ�����ݵ�������
				List<LogUser>  jianpinzhuantai = informationDao.jianpinzhuantai(logUser);
				int   counts = jianpinzhuantai.size();
				queryMap.put("code", 0);
				queryMap.put("msg", "llay ui-Table���ݰ����ݿ�");
				queryMap.put("count", counts);
				queryMap.put("data", jianpinzhuantai);
				com.alibaba.fastjson.JSONObject json = com.alibaba.fastjson.JSONObject.parseObject(com.alibaba.fastjson.JSONObject.toJSONString(queryMap));
				jsonObject = json;
			}
			return jsonObject;
		}
		
		
}
