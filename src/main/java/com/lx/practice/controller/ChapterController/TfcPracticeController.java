package com.lx.practice.controller.ChapterController;

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


//执业中药师，按章节分类
@Controller
@RequestMapping("/tfcpractice")
public class TfcPracticeController {
	
	@Autowired
	private  ExamQuestionService  examquestionservice;
	
	@Autowired
	private  ExamQuestionWestService  examQuestionWestService;
	//接收用户微信信息
	@RequestMapping(value="/practice",method=RequestMethod.GET)
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
    		@RequestParam(value="lv3state")String lv3state,
    		String questions_id,
    		String datika
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
		  
		    System.out.println("datika的值："+datika);
		    
		  
		  //跳转到开始页面
		 //中药学专业知识一
		if ("ZYY".equals(kemu)) {
			System.out.println("进入中药一的科目："+kemu);  
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
			model.addObject("datika", datika);
			model.addObject("questions_id", questions_id);
			model.addObject("tixing", "中药");
			model.setViewName("chapter/tfcpractice");
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
			model.addObject("datika", lv3state);
			model.addObject("datika", datika);
			model.addObject("questions_id", questions_id);
			model.addObject("tixing", "中药");
			model.setViewName("chapter/tfcpractice");
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
			model.addObject("datika", datika);
			model.addObject("questions_id", questions_id);
			model.addObject("tixing", "中药");
			model.setViewName("chapter/tfcpractice");
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
			model.addObject("datika", datika);
			model.addObject("questions_id", questions_id);
			model.addObject("tixing", "中药");
			model.setViewName("chapter/tfcpractice");
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
				model.addObject("datika", datika);
				model.addObject("questions_id", questions_id);
				model.addObject("tixing", "西药");
				model.setViewName("chapter/tfcpractice");
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
				model.addObject("datika", datika);
				model.addObject("questions_id", questions_id);
				model.addObject("tixing", "西药");
				model.setViewName("chapter/tfcpractice");
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
				model.addObject("datika", datika);
				model.addObject("questions_id", questions_id);
				model.addObject("tixing", "西药");
				model.setViewName("chapter/tfcpractice");
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
		  /*ExamQuestion examQuestions = new  ExamQuestion();*/
		 /* examQuestions.setKnowledge_Id(knowledge_Id);*///添加经对象
		/*System.out.println("使用ajax回调数据");*/
		/*//进行编译
			// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		    kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
			// 再进行utf-8编码 一次得到页面上输入的文本内容
		    kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");*/
		  System.out.println("中药或西药："+kemuZYHXY);
		  System.out.println("传过来的id："+knowledge_Id);
		 if (kemuZYHXY.equals("西药")) {
			    System.out.println("knowledge_Id的值："+knowledge_Id);
				List<ExamQuestion>  EQ = examQuestionWestService.findxyzuoti(knowledge_Id);//用传过来章节id进行题目数据的查询
				if (EQ != null && EQ.size() != 0) {
					String EQdata  = JSON.toJSONString(EQ);//将查询出的题目数据（集合对象）转换为json数据给与map集合，回调给ajax
					queryMap.put("datas", EQdata);//ajax回调中可以用data.key（传过去的map集合 是键）的形式拿出这里map存储数据
					queryMap.put("type", "success");//用于函数回调判断
					System.out.println("成功回调");
				}else {
					System.out.println("没有查询到数据");
					queryMap.put("type", "error");
					System.out.println("失败回调");
				}
		}else if (kemuZYHXY.equals("中药")) {
			System.out.println("中药");
			List<ExamQuestion> EQ = examquestionservice.findzyzuoti(knowledge_Id);
			if (EQ != null && EQ.size() != 0) {
				String EQdata  = JSON.toJSONString(EQ);//将查询出的题目数据（集合对象）转换为json数据给与map集合，回调给ajax
				queryMap.put("datas", EQdata);//ajax回调中可以用data.key（传过去的map集合 是键）的形式拿出这里map存储数据
				queryMap.put("type", "success");//用于函数回调判断
				System.out.println("中药成功回调");
			}else {
				System.out.println("没有查询到数据");
				queryMap.put("type", "error");
				System.out.println("中药失败回调");
			}
		
		  }
		   
			return queryMap;
	}
	
	
	
		//进入答题卡页面
		@RequestMapping(value="/datika",method=RequestMethod.GET)
		@ResponseBody
	    public   ModelAndView   datika(ModelAndView model,HttpServletRequest request,
	    		@RequestParam(value="knowledge_Id")String knowledge_Id,
	    		@RequestParam(value="openid")String openid,
	    		@RequestParam(value="headimgurl")String headimgurl,
	    		@RequestParam(value="nickname")String nickname,
	    		@RequestParam(value="kemuZYHXY")String kemuZYHXY,
	    		@RequestParam(value="kemu")String kemu,
	    		@RequestParam(value="days")String days,
	    		@RequestParam(value="integral")String integral,
	    		@RequestParam(value="dateTime")String dateTime,
	    		@RequestParam(value="lv1state")String lv1state,
	    		@RequestParam(value="lv2state")String lv2state,
	    		@RequestParam(value="lv3state")String lv3state
	    		) throws UnsupportedEncodingException{
			
			//进行编译
			// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
		    kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
			// 再进行utf-8编码 一次得到页面上输入的文本内容
		    kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
			
			
			//根据章节id查询出相应的题型  
			System.out.println("跳转进入答题卡");
			//根据章节id查询出不同题型（四种题型）
			   //单选题
			List<ExamQuestion> dangxuanti = examquestionservice.dangxuanti(knowledge_Id);
			   //多选题
			List<ExamQuestion> duoxuanti =  examquestionservice.duoxuanti(knowledge_Id);
			  //b型题
			List<ExamQuestion> bxingti = examquestionservice.bxingti(knowledge_Id);
			 //综合题
			List<ExamQuestion> zonheti = examquestionservice.zonheti(knowledge_Id);
			//查询出该章节下的所有题目
			/*List<ExamQuestion> chaxuenzhanjieshuoyti = examquestionservice.chaxuenzhanjieshuoyti(knowledge_Id);*/
			
			
			
			int  dangxuantisize = dangxuanti.size();
			int  duoxuantisize = duoxuanti.size();
			int  bxingtisize = bxingti.size();
			int  zonhetisize = zonheti.size();
			int  timushusize = dangxuantisize+duoxuantisize+bxingtisize+zonhetisize;//总的数据长度
			
			model.addObject("kemuZYHXY", kemuZYHXY);
			model.addObject("kemu", kemu);
			model.addObject("timushusize", timushusize);
			model.addObject("dangxuanti", dangxuanti);
			model.addObject("duoxuanti", duoxuanti);
			model.addObject("bxingti", bxingti);
			model.addObject("zonheti", zonheti);
			/*model.addObject("chaxuenzhanjieshuoyti", chaxuenzhanjieshuoyti);*/
			model.addObject("knowledge_Id", knowledge_Id);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("nickname", nickname);
			model.addObject("days", days);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("chapter/datika");
			return model;
		}
	
	
	
}
