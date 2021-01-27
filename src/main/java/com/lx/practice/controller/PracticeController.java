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



//每日一练（执业中药师）做题页面
@Controller
@RequestMapping("/practice")
public class PracticeController {
	
	
	@Autowired
	private  ExamQuestionService  examquestionservice;
	
	//接收用户微信信息
	@RequestMapping(value="/practice",method=RequestMethod.GET)
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
	    System.out.println("在practice中topic传入后台的微信昵称："+nickname);
		//跳转到开始页面
		 //中药学专业知识一
		if ("ZY".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			System.out.println("传进后台的题型id值："+subjectsid);
			examQuestion.setKnowledge_Name("中药学专业知识一");
			String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
			model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
			model.addObject("EQtitle", EQtitle);//将题目实体来进行转换，转换为json数据类型，前台页面js中接收到这个数据（题目类型），在将数据给与ajax后，进入请求的方法进行题目数据的查询
			
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("system/practice");
			return model;
		}
		//药事管理与法规
		if ("FG".equals(subjectsid)) {
			System.out.println("进入法规");
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
			model.setViewName("system/practice");
			return model;
		}
		//中药学专业知识二
		if ("ZE".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("中药学专业知识二");
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
			model.setViewName("system/practice");
			return model;
		}
		//传入的是ZH中药学综合知识与技能
		if ("ZH".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("中药学综合知识与技能");
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
			model.setViewName("system/practice");
			return model;
		}
		return model;
		
    }
	
	
	
	@RequestMapping(value="/practice",method=RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object>  ajax(ExamQuestion  subList){//这里的对象，就是上面get方法中传给ajax的含有题目名的实体类对象
		Map<String, Object> queryMap = new HashMap<String, Object>();
		/*System.out.println("使用ajax回调数据");*/
		if ("药事管理与法规".equals(subList.getKnowledge_Name())) {//先判断实体类对象中的题目名
			System.out.println("查询法规数据");
			System.out.println("subjectsid："+subList.getKnowledge_Name());
			List<ExamQuestion>  EQ = examquestionservice.findByFG();//用传过来的题目名进行题目数据的查询
			String EQdata  = JSON.toJSONString(EQ);//将查询出的题目数据（集合对象）转换为json数据给与map集合，回调给ajax
			queryMap.put("datas", EQdata);//ajax回调中可以用data.key（传过去的map集合 是键）的形式拿出这里map存储数据
			queryMap.put("type", "success");//用于函数回调判断
			return queryMap;
		}
		if ("中药学专业知识一".equals(subList.getKnowledge_Name())) {
			/*System.out.println("查出来的题目："+EQ.get(0).getQuestions_json());*/
			System.out.println("subjectsid："+subList.getKnowledge_Name());
			List<ExamQuestion>  EQ = examquestionservice.findByEQ();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		if ("中药学专业知识二".equals(subList.getKnowledge_Name())) {
			/*System.out.println("查出来的题目："+EQ.get(0).getQuestions_json());*/
			System.out.println("subjectsid："+subList.getKnowledge_Name());
			List<ExamQuestion>  EQ = examquestionservice.findByZE();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		if ("中药学综合知识与技能".equals(subList.getKnowledge_Name())) {
			/*System.out.println("查出来的题目："+EQ.get(0).getQuestions_json());*/
			System.out.println("subjectsid："+subList.getKnowledge_Name());
			List<ExamQuestion>  EQ = examquestionservice.findByZH();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		queryMap.put("type", "error");
		return queryMap;
	}
	
}
