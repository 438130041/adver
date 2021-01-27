package com.lx.practice.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.ExamQuestionService;
import com.lx.practice.service.ExamQuestionWestService;
 

//每日一练（执业西药师）
@Controller
@RequestMapping("/West")
public class WestContrlloer {
	
	
	@Autowired
	private  ExamQuestionWestService  examquestionWestservice;
	
	@Autowired
	private  ExamQuestionService  examquestionservice;
	
	@RequestMapping(value="/West",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request,String  subjectsid,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="days")String days,
    		@RequestParam(value="dateTime")String dateTime,
    		@RequestParam(value="integral")String integral,
    		@RequestParam(value="lv1state")String lv1state,
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state
    		) throws UnsupportedEncodingException{
		/* ExamQuestion  examQuestion = new   ExamQuestion();*/
		
		//进行编译
				// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
				nickname = URLEncoder.encode(nickname, "ISO-8859-1");
				// 再进行utf-8编码 一次得到页面上输入的文本内容
			    nickname = URLDecoder.decode(nickname, "UTF-8");
				
			 // 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
			    lv1state = URLEncoder.encode(lv1state, "ISO-8859-1");
			 	// 再进行utf-8编码 一次得到页面上输入的文本内容
			    lv1state = URLDecoder.decode(lv1state, "UTF-8");
			    
			 // 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
			    lv2state = URLEncoder.encode(lv2state, "ISO-8859-1");
			 	// 再进行utf-8编码 一次得到页面上输入的文本内容
			    lv2state = URLDecoder.decode(lv2state, "UTF-8");
			    
			 // 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
			    lv3state = URLEncoder.encode(lv3state, "ISO-8859-1");
			 	// 再进行utf-8编码 一次得到页面上输入的文本内容
			    lv3state = URLDecoder.decode(lv3state, "UTF-8");
		
		//跳转到开始页面
		 //药学专业知识一
		if ("ZY".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			System.out.println("传进后台的题型id值："+subjectsid);
			examQuestion.setKnowledge_Name("药学专业知识一");//给与题目实体类，题目名的值
			String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
			model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的出题目类型返回给前台显示
			model.addObject("EQtitle", EQtitle);
			
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("system/Westspractice");
			return model;
		}
		//药事管理与法规
		if ("FG".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("药事管理与法规");
			String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
			model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
			model.addObject("EQtitle", EQtitle);
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("system/Westspractice");
			return model;
		}
		//药学专业知识二
		if ("ZE".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("药学专业知识二");
			String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
			model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
			model.addObject("EQtitle", EQtitle);
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("system/Westspractice");
			return model;
		}
		//传入的是ZH药学综合知识与技能
		if ("ZH".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("药学综合知识与技能");
			String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
			model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
			model.addObject("EQtitle", EQtitle);
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("system/Westspractice");
			return model;
		}
		return model;
		
    }
	
	
	
	@RequestMapping(value="/practice",method=RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object>  ajax(ExamQuestion  subList){
		Map<String, Object> queryMap = new HashMap<String, Object>();
		System.out.println("题目类型："+subList.getKnowledge_Name());
		if ("药事管理与法规".equals(subList.getKnowledge_Name())) {
			/*System.out.println("Westid："+subList.getKnowledge_Name());*/
			List<ExamQuestion>  EQ = examquestionWestservice.findByWestFG();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		if ("药学专业知识一".equals(subList.getKnowledge_Name())) {
			/*System.out.println("查出来的题目："+EQ.get(0).getQuestions_json());*/
			/*System.out.println("Westid："+subList.getKnowledge_Name());*/
			List<ExamQuestion>  EQ = examquestionWestservice.findByWestEQ();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		if ("药学专业知识二".equals(subList.getKnowledge_Name())) {
			/*System.out.println("查出来的题目："+EQ.get(0).getQuestions_json());*/
			/*System.out.println("Westid："+subList.getKnowledge_Name());*/
			List<ExamQuestion>  EQ = examquestionWestservice.findByWestZE();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		if ("药学综合知识与技能".equals(subList.getKnowledge_Name())) {
			/*System.out.println("查出来的题目："+EQ.get(0).getQuestions_json());*/
			/*System.out.println("Westid："+subList.getKnowledge_Name());*/
			List<ExamQuestion>  EQ = examquestionWestservice.findByWestZH();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		queryMap.put("type", "error");
		return queryMap;
	}
	
	
	
}
