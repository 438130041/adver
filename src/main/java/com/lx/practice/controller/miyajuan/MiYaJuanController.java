package com.lx.practice.controller.miyajuan;

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

@Controller
@RequestMapping(value="/miyajuan")
public class MiYaJuanController {
		
		
	@Autowired
	private  ExamQuestionService  examquestionservice;
	
	@Autowired
	private  ExamQuestionWestService  examQuestionWestService;
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/miyajuan",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="kemu")String kemu,
    		@RequestParam(value="knowledge_Id")String knowledge_Id,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="days")String days,
    		@RequestParam(value="kemuZYHXY")String kemuZYHXY,
    		@RequestParam(value="integral")String integral,
    		@RequestParam(value="dateTime")String dateTime,
    		@RequestParam(value="lv1state")String lv1state,
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state
    		) throws UnsupportedEncodingException{
    	  
		  System.out.println("进入章节题目");
		  System.out.println("选择的科目："+kemu);
		
			
			//进行编译
			// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
			nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			// 再进行utf-8编码 一次得到页面上输入的文本内容
		    nickname = URLDecoder.decode(nickname, "UTF-8");
		    
		  //进行编译
			// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		    kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
			// 再进行utf-8编码 一次得到页面上输入的文本内容
		    kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
		    
		    
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
		 //中药学专业知识一
		if ("ZYY".equals(kemu)) {
			  System.out.println("进入题目查询");
			ExamQuestion  examQuestion = new   ExamQuestion();
			System.out.println("传进后台的题型id值："+kemu);
			examQuestion.setKnowledge_Name("中药学专业知识一");
			String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
			model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
			model.addObject("EQtitle", EQtitle);//将题目实体来进行转换，转换为json数据类型，前台页面js中接收到这个数据（题目类型），在将数据给与ajax后，进入请求的方法进行题目数据的查询
			model.addObject("knowledge_Id", knowledge_Id);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("nickname", nickname);
			model.addObject("days", days);
			model.addObject("kemu", kemu);
			model.addObject("kemuZYHXY", kemuZYHXY);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.addObject("kemu", "中药");
			model.setViewName("yati/tfcpracticemiya");
			return model;
		}
		//药事管理与法规
		if ("YS".equals(kemu)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("药事管理与法规");
			String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
			model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
			model.addObject("EQtitle", EQtitle);
			model.addObject("knowledge_Id", knowledge_Id);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("nickname", nickname);
			model.addObject("days", days);
			model.addObject("kemu", kemu);
			model.addObject("kemuZYHXY", kemuZYHXY);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.addObject("tixing", "中药");
			model.setViewName("yati/tfcpracticemiya");
			return model;
		}
		//中药学专业知识二
		if ("ZYE".equals(kemu)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("中药学专业知识二");
			String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
			model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
			model.addObject("EQtitle", EQtitle);
			model.addObject("knowledge_Id", knowledge_Id);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("nickname", nickname);
			model.addObject("days", days);
			model.addObject("kemu", kemu);
			model.addObject("kemuZYHXY", kemuZYHXY);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.addObject("tixing", "中药");
			model.setViewName("yati/tfcpracticemiya");
			return model;
		}
		//传入的是ZH中药学综合知识与技能
		if ("ZYZH".equals(kemu)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("中药学综合知识与技能");
			String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
			model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
			model.addObject("EQtitle", EQtitle);
			model.addObject("knowledge_Id", knowledge_Id);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("nickname", nickname);
			model.addObject("days", days);
			model.addObject("kemu", kemu);
			model.addObject("kemuZYHXY", kemuZYHXY);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.addObject("tixing", "中药");
			model.setViewName("yati/tfcpracticemiya");
			return model;
		}
		///////////////////////西药///////////////////////
		//药学专业知识一
			if ("YXY".equals(kemu)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("药学专业知识一");
				String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
				model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
				model.addObject("EQtitle", EQtitle);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("openid", openid);
				model.addObject("headimgurl", headimgurl);
				model.addObject("nickname", nickname);
				model.addObject("days", days);
				model.addObject("kemu", kemu);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.addObject("tixing", "西药");
				model.setViewName("yati/tfcpracticemiya");
				return model;
			}
			//药学专业知识二
			if ("YXE".equals(kemu)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("药学专业知识二");
				String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
				model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
				model.addObject("EQtitle", EQtitle);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("openid", openid);
				model.addObject("headimgurl", headimgurl);
				model.addObject("nickname", nickname);
				model.addObject("days", days);
				model.addObject("kemu", kemu);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.addObject("tixing", "西药");
				model.setViewName("yati/tfcpracticemiya");
				return model;
			}
			//药学综合知识与技能
			if ("YXZH".equals(kemu)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("药学综合知识与技能");
				String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
				model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
				model.addObject("EQtitle", EQtitle);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("openid", openid);
				model.addObject("headimgurl", headimgurl);
				model.addObject("nickname", nickname);
				model.addObject("days", days);
				model.addObject("kemu", kemu);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.addObject("tixing", "西药");
				model.setViewName("yati/tfcpracticemiya");
				return model;
			}
		
		return model;
		
    }
	
		
	//ajax查询出题目数据
		@RequestMapping(value="/practice",method=RequestMethod.POST)
		@ResponseBody
		public  Map<String, Object>  ajax(ExamQuestion  subList,
				@RequestParam(value="knowledge_Id")String knowledge_Id,
				@RequestParam(value="kemuZYHXY")String kemuZYHXY
				) throws UnsupportedEncodingException{//这里的对象，就是上面get方法中传给ajax的含有题目名的实体类对象
			  Map<String, Object> queryMap = new HashMap<String, Object>();
			  
			  
			  return queryMap;
		}	
		
		
}
