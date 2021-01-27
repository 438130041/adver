package com.lx.practice.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.lx.practice.entity.ExamQuestion;

//解析页面控制器
@Controller
@RequestMapping("/aging")
public class ParsingAginController {
	
	//在做一次
	@RequestMapping(value="/aging",method=RequestMethod.GET)
    public ModelAndView aging(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="Knowledge_Name")String Knowledge_Name,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="names")String names,
    		@RequestParam(value="days")String days,
    		@RequestParam(value="dateTime")String dateTime,
    		@RequestParam(value="integral")String integral,
    		@RequestParam(value="lv1state")String lv1state,
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state
    		) throws UnsupportedEncodingException{
		/* ExamQuestion  examQuestion = new   ExamQuestion();*/
		// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		Knowledge_Name = URLEncoder.encode(Knowledge_Name, "ISO-8859-1");
		// 再进行utf-8编码 一次得到页面上输入的文本内容
		Knowledge_Name = URLDecoder.decode(Knowledge_Name, "UTF-8");
		
		//进行编译
		// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		nickname = URLEncoder.encode(nickname, "ISO-8859-1");
		// 再进行utf-8编码 一次得到页面上输入的文本内容
	    nickname = URLDecoder.decode(nickname, "UTF-8");
		
	  //进行编译
	  // 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
	    names = URLEncoder.encode(names, "ISO-8859-1");
	  // 再进行utf-8编码 一次得到页面上输入的文本内容
	    names = URLDecoder.decode(names, "UTF-8");
	    
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
	    
	    
	    
		System.out.println("做的题型："+names);
			
			if (names.equals("中药")) {
				System.out.println("进入中药");
				System.out.println("在做一次题型："+Knowledge_Name);
				//跳转到开始页面
				 //中药学专业知识一
				if ("中药学专业知识一".equals(Knowledge_Name)) {
					System.out.println("进入判断");
					ExamQuestion  examQuestion = new   ExamQuestion();
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
					System.out.println("指定路径");
					model.setViewName("system/practice");
					System.out.println("跳转");
					return model;
				}
				//药事管理与法规
				if ("药事管理与法规".equals(Knowledge_Name)) {
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
				if ("中药学专业知识二".equals(Knowledge_Name)) {
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
				if ("中药学综合知识与技能".equals(Knowledge_Name)) {
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
			}
		
	if (names.equals("西药")) {
		System.out.println("进入西药");
			if ("药学专业知识一".equals(Knowledge_Name)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("药学专业知识一");
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
				System.out.println("指定路径");
				model.setViewName("system/Westspractice");
				System.out.println("跳转");
				return model;
			}
			//药事管理与法规
			if ("药事管理与法规".equals(Knowledge_Name)) {
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
			//中药学专业知识二
			if ("药学专业知识二".equals(Knowledge_Name)) {
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
			//传入的是ZH中药学综合知识与技能
			if ("药学综合知识与技能".equals(Knowledge_Name)) {
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
		}
		return model;
		
    }
	
}
