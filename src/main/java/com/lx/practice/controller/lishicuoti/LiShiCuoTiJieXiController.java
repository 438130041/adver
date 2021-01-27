package com.lx.practice.controller.lishicuoti;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.entity.TopicData;


@Controller
@RequestMapping("/lishicuotijiexi")
public class LiShiCuoTiJieXiController {
		
	
	//错题重做题目解析
			@RequestMapping(value="/lishicuotijiexi",method=RequestMethod.GET)
		    public ModelAndView jiexi(ModelAndView model,HttpServletRequest request,
		    		@RequestParam(value="Knowledge_Name")String Knowledge_Name,
		    		/*@RequestParam(value="queanswer")String queanswer,
		    		@RequestParam(value="answers")String answers,*/
		    		@RequestParam(value="int_second")String int_second,
		    		@RequestParam(value="knowledge_Id")String knowledge_Id,
		    		@RequestParam(value="nickname")String nickname,
		    		@RequestParam(value="kemuZYHXY")String kemuZYHXY,
		    		@RequestParam(value="openid")String openid,
		    		@RequestParam(value="datalength")String datalength,
		    		@RequestParam(value="headimgurl")String headimgurl,
		    		@RequestParam(value="correctnumber")String correctnumber,
		    		@RequestParam(value="percentage")String percentage,
		    		@RequestParam(value="tixing")String tixing,
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
				
				// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
				nickname = URLEncoder.encode(nickname, "ISO-8859-1");
				// 再进行utf-8编码 一次得到页面上输入的文本内容
				nickname = URLDecoder.decode(nickname, "UTF-8");
				
				// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
				kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
				// 再进行utf-8编码 一次得到页面上输入的文本内容
				kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
				
				
				// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
				tixing = URLEncoder.encode(tixing, "ISO-8859-1");
				// 再进行utf-8编码 一次得到页面上输入的文本内容
				tixing = URLDecoder.decode(tixing, "UTF-8");
				
				
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
				if (tixing.equals("中药")) {
					 //中药学专业知识一
					if ("中药学专业知识一".equals(Knowledge_Name)) {
						System.out.println("进入判断");
						ExamQuestion  examQuestion = new   ExamQuestion();
						examQuestion.setKnowledge_Name("中药学专业知识一");
						String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
						model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
						model.addObject("EQtitle", EQtitle);//将题目实体来进行转换，转换为json数据类型，前台页面js中接收到这个数据（题目类型），在将数据给与ajax后，进入请求的方法进行题目数据的查询
						/*model.addObject("queanswer", queanswer);
						model.addObject("answers", answers);*/
						model.addObject("int_second", int_second);
						model.addObject("knowledge_Id", knowledge_Id);
						model.addObject("nickname", nickname);
						model.addObject("kemuZYHXY", kemuZYHXY);
						model.addObject("openid", openid);
						model.addObject("datalength", datalength);
						model.addObject("headimgurl", headimgurl);
						model.addObject("correctnumber", correctnumber);
						model.addObject("percentage", percentage);
						model.addObject("tixing", tixing);
						model.addObject("days", days);
						model.addObject("dateTime", dateTime);
						model.addObject("integral", integral);
						model.addObject("lv1state", lv1state);
						model.addObject("lv2state", lv2state);
						model.addObject("lv3state", lv3state);
						System.out.println("指定路径");
						model.setViewName("lishicuoti/lishicuotichonzuojiexi");
						System.out.println("跳转");
					}
					//药事管理与法规
					if ("药事管理与法规".equals(Knowledge_Name)) {
						ExamQuestion  examQuestion = new   ExamQuestion();
						examQuestion.setKnowledge_Name("药事管理与法规");
						String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
						model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
						model.addObject("EQtitle", EQtitle);
						/*model.addObject("queanswer",queanswer);
						model.addObject("answers",answers);*/
						model.addObject("int_second", int_second);
						model.addObject("knowledge_Id", knowledge_Id);
						model.addObject("nickname", nickname);
						model.addObject("kemuZYHXY", kemuZYHXY);
						model.addObject("openid", openid);
						model.addObject("datalength", datalength);
						model.addObject("headimgurl", headimgurl);
						model.addObject("correctnumber", correctnumber);
						model.addObject("percentage", percentage);
						model.addObject("tixing", tixing);
						model.addObject("days", days);
						model.addObject("dateTime", dateTime);
						model.addObject("integral", integral);
						model.addObject("lv1state", lv1state);
						model.addObject("lv2state", lv2state);
						model.addObject("lv3state", lv3state);
						model.setViewName("lishicuoti/lishicuotichonzuojiexi");
					}
					//中药学专业知识二
					if ("中药学专业知识二".equals(Knowledge_Name)) {
						System.out.println("kumu:"+kemuZYHXY);
						ExamQuestion  examQuestion = new   ExamQuestion();
						examQuestion.setKnowledge_Name("中药学专业知识二");
						String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
						model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
						model.addObject("EQtitle", EQtitle);
						/*model.addObject("queanswer",queanswer);
						model.addObject("answers",answers);*/
						model.addObject("int_second", int_second);
						model.addObject("knowledge_Id", knowledge_Id);
						model.addObject("nickname", nickname);
						model.addObject("kemuZYHXY", kemuZYHXY);
						model.addObject("openid", openid);
						model.addObject("datalength", datalength);
						model.addObject("headimgurl", headimgurl);
						model.addObject("correctnumber", correctnumber);
						model.addObject("percentage", percentage);
						model.addObject("tixing", tixing);
						model.addObject("days", days);
						model.addObject("dateTime", dateTime);
						model.addObject("integral", integral);
						model.addObject("lv1state", lv1state);
						model.addObject("lv2state", lv2state);
						model.addObject("lv3state", lv3state);
						model.setViewName("lishicuoti/lishicuotichonzuojiexi");
						System.out.println("跳转到解析页面");
					}
					//传入的是ZH中药学综合知识与技能
					if ("中药学综合知识与技能".equals(Knowledge_Name)) {
						ExamQuestion  examQuestion = new   ExamQuestion();
						examQuestion.setKnowledge_Name("中药学综合知识与技能");
						String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
						model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
						model.addObject("EQtitle", EQtitle);
						/*model.addObject("queanswer",queanswer);
						model.addObject("answers",answers);*/
						model.addObject("int_second", int_second);
						model.addObject("knowledge_Id", knowledge_Id);
						model.addObject("nickname", nickname);
						model.addObject("kemuZYHXY", kemuZYHXY);
						model.addObject("openid", openid);
						model.addObject("datalength", datalength);
						model.addObject("headimgurl", headimgurl);
						model.addObject("correctnumber", correctnumber);
						model.addObject("percentage", percentage);
						model.addObject("tixing", tixing);
						model.addObject("days", days);
						model.addObject("dateTime", dateTime);
						model.addObject("integral", integral);
						model.addObject("lv1state", lv1state);
						model.addObject("lv2state", lv2state);
						model.addObject("lv3state", lv3state);
						model.setViewName("lishicuoti/lishicuotichonzuojiexi");
					}

				}
				
				if (tixing.equals("西药")) {
					//西药
					if ("药学专业知识一".equals(Knowledge_Name)) {
						System.out.println("进入判断");
						ExamQuestion  examQuestion = new   ExamQuestion();
						examQuestion.setKnowledge_Name("药学专业知识一");
						String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
						model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
						model.addObject("EQtitle", EQtitle);//将题目实体来进行转换，转换为json数据类型，前台页面js中接收到这个数据（题目类型），在将数据给与ajax后，进入请求的方法进行题目数据的查询
						/*model.addObject("queanswer", queanswer);
						model.addObject("answers", answers);*/
						model.addObject("int_second", int_second);
						model.addObject("knowledge_Id", knowledge_Id);
						model.addObject("nickname", nickname);
						model.addObject("kemuZYHXY", kemuZYHXY);
						model.addObject("openid", openid);
						model.addObject("datalength", datalength);
						model.addObject("headimgurl", headimgurl);
						model.addObject("correctnumber", correctnumber);
						model.addObject("percentage", percentage);
						model.addObject("tixing", tixing);//中药或西药
						model.addObject("days", days);
						model.addObject("dateTime", dateTime);
						model.addObject("integral", integral);
						model.addObject("lv1state", lv1state);
						model.addObject("lv2state", lv2state);
						model.addObject("lv3state", lv3state);
						System.out.println("指定路径");
						model.setViewName("lishicuoti/lishicuotichonzuojiexi");
						System.out.println("跳转");
					}
					//药事管理与法规
					if ("药事管理与法规".equals(Knowledge_Name)) {
						ExamQuestion  examQuestion = new   ExamQuestion();
						examQuestion.setKnowledge_Name("药事管理与法规");
						String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
						model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
						model.addObject("EQtitle", EQtitle);
						/*model.addObject("queanswer",queanswer);
						model.addObject("answers",answers);*/
						model.addObject("int_second", int_second);
						model.addObject("knowledge_Id", knowledge_Id);
						model.addObject("nickname", nickname);
						model.addObject("kemuZYHXY", kemuZYHXY);
						model.addObject("openid", openid);
						model.addObject("datalength", datalength);
						model.addObject("headimgurl", headimgurl);
						model.addObject("correctnumber", correctnumber);
						model.addObject("percentage", percentage);
						model.addObject("tixing", tixing);
						model.addObject("days", days);
						model.addObject("dateTime", dateTime);
						model.addObject("integral", integral);
						model.addObject("lv1state", lv1state);
						model.addObject("lv2state", lv2state);
						model.addObject("lv3state", lv3state);
						model.setViewName("lishicuoti/lishicuotichonzuojiexi");
					}
					//中药学专业知识二
					if ("药学专业知识二".equals(Knowledge_Name)) {
						ExamQuestion  examQuestion = new   ExamQuestion();
						examQuestion.setKnowledge_Name("药学专业知识二");
						String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
						model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
						model.addObject("EQtitle", EQtitle);
					/*	model.addObject("queanswer",queanswer);
						model.addObject("answers",answers);*/
						model.addObject("int_second", int_second);
						model.addObject("knowledge_Id", knowledge_Id);
						model.addObject("nickname", nickname);
						model.addObject("kemuZYHXY", kemuZYHXY);
						model.addObject("openid", openid);
						model.addObject("datalength", datalength);
						model.addObject("headimgurl", headimgurl);
						model.addObject("correctnumber", correctnumber);
						model.addObject("percentage", percentage);
						model.addObject("tixing", tixing);
						model.addObject("days", days);
						model.addObject("dateTime", dateTime);
						model.addObject("integral", integral);
						model.addObject("lv1state", lv1state);
						model.addObject("lv2state", lv2state);
						model.addObject("lv3state", lv3state);
						model.setViewName("lishicuoti/lishicuotichonzuojiexi");
					}
					//传入的是ZH中药学综合知识与技能
					if ("药学综合知识与技能".equals(Knowledge_Name)) {
						ExamQuestion  examQuestion = new   ExamQuestion();
						examQuestion.setKnowledge_Name("药学综合知识与技能");
						String EQtitle  = JSON.toJSONString(examQuestion);//转换json数据
						model.addObject("subList", examQuestion.getKnowledge_Name());//将给与的题目类型返回给前台显示
						model.addObject("EQtitle", EQtitle);
						/*model.addObject("queanswer",queanswer);
						model.addObject("answers",answers);*/
						model.addObject("int_second", int_second);
						model.addObject("knowledge_Id", knowledge_Id);
						model.addObject("nickname", nickname);
						model.addObject("kemuZYHXY", kemuZYHXY);
						model.addObject("openid", openid);
						model.addObject("datalength", datalength);
						model.addObject("headimgurl", headimgurl);
						model.addObject("correctnumber", correctnumber);
						model.addObject("percentage", percentage);
						model.addObject("tixing", tixing);
						model.addObject("days", days);
						model.addObject("dateTime", dateTime);
						model.addObject("integral", integral);
						model.addObject("lv1state", lv1state);
						model.addObject("lv2state", lv2state);
						model.addObject("lv3state", lv3state);
						model.setViewName("lishicuoti/lishicuotichonzuojiexi");
					}
				}
				
				return model;
		    }
		
			
			
			
			//解析页面跳回主页面
			@RequestMapping(value="/detailspage",method=RequestMethod.GET)
			@ResponseBody
		    public ModelAndView index(ModelAndView model,HttpServletRequest request,
		    		TopicData  topicData,
		    		@RequestParam(value="correctnumber")String correctnumber,
				    @RequestParam(value="percentage")String percentage,
				    @RequestParam(value="int_second")String int_second,
		    	/*	@RequestParam(value="queanswer")String queanswer,*/
		    	/*	@RequestParam(value="answers")String answers,*/
		    		@RequestParam(value="datalength")String datalength,
		    		@RequestParam(value="knowledge_Id")String knowledge_Id,
		    		@RequestParam(value="nickname")String nickname,
		    		@RequestParam(value="kemuZYHXY")String kemuZYHXY,
		    		@RequestParam(value="openid")String openid,
		    		@RequestParam(value="headimgurl")String headimgurl,
		    		@RequestParam(value="tixing")String tixing,
		    		@RequestParam(value="jiexihuidiao")String jiexihuidiao,
		    		@RequestParam(value="days")String days,
		    		@RequestParam(value="dateTime")String dateTime,
		    		@RequestParam(value="integral")String integral,
		    		@RequestParam(value="lv1state")String lv1state,
		    		@RequestParam(value="lv2state")String lv2state,
		    		@RequestParam(value="lv3state")String lv3state
		    		) throws UnsupportedEncodingException{
				if (jiexihuidiao.equals("jiexihuidiao")) {
					System.out.println("进入解析回调后台方法");
					String  Knowledge_Name  = topicData.getKnowledge_Name();
					Knowledge_Name = URLEncoder.encode(Knowledge_Name, "ISO-8859-1");
					Knowledge_Name = URLDecoder.decode(Knowledge_Name, "UTF-8");
						
					kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
					kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
					
					tixing = URLEncoder.encode(tixing, "ISO-8859-1");
					
					tixing = URLDecoder.decode(tixing, "UTF-8");

					lv1state = URLEncoder.encode(lv1state, "ISO-8859-1");

					lv1state = URLDecoder.decode(lv1state, "UTF-8");
					

					lv2state = URLEncoder.encode(lv2state, "ISO-8859-1");

					lv2state = URLDecoder.decode(lv2state, "UTF-8");
					

					lv3state = URLEncoder.encode(lv3state, "ISO-8859-1");

				    lv3state = URLDecoder.decode(lv3state, "UTF-8");
					

					nickname = URLEncoder.encode(nickname, "ISO-8859-1");

				    nickname = URLDecoder.decode(nickname, "UTF-8");
						model.addObject("correctnumber", correctnumber);
						model.addObject("percentage",percentage);
						model.addObject("int_second", int_second);
						model.addObject("Knowledge_Name",Knowledge_Name);
						model.addObject("name",tixing);
						/*model.addObject("answers",answers);
						model.addObject("queanswer",queanswer);*/
						model.addObject("datalength",datalength);
						model.addObject("knowledge_Id",knowledge_Id);
						model.addObject("nickname", nickname);
						model.addObject("kemuZYHXY", kemuZYHXY);
						model.addObject("openid", openid);
						model.addObject("headimgurl", headimgurl);
						model.addObject("days", days);
						model.addObject("dateTime", dateTime);
						model.addObject("integral", integral);
						model.addObject("lv1state", lv1state);
						model.addObject("lv2state", lv2state);
						model.addObject("lv3state", lv3state);
						if(tixing.equals("中药")){
							System.out.println("中药");
							model.setViewName("lishicuoti/lishijingxuandetailspage");
						}
						if(tixing.equals("西药")){
							System.out.println("西药");
							model.setViewName("lishicuoti/lishijingxuandetailspageWest");
						}
				  }else{

						String  Knowledge_Name  = topicData.getKnowledge_Name();

						Knowledge_Name = URLEncoder.encode(Knowledge_Name, "ISO-8859-1");

						Knowledge_Name = URLDecoder.decode(Knowledge_Name, "UTF-8");
							

						tixing = URLEncoder.encode(tixing, "ISO-8859-1");

						tixing = URLDecoder.decode(tixing, "UTF-8");
						

						nickname = URLEncoder.encode(nickname, "ISO-8859-1");

					    nickname = URLDecoder.decode(nickname, "UTF-8");

					    


						kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
					    

						lv1state = URLEncoder.encode(lv1state, "ISO-8859-1");

						lv1state = URLDecoder.decode(lv1state, "UTF-8");
						

						lv2state = URLEncoder.encode(lv2state, "ISO-8859-1");

						lv2state = URLDecoder.decode(lv2state, "UTF-8");
						


					    lv3state = URLDecoder.decode(lv3state, "UTF-8");
					    
							model.addObject("correctnumber", topicData.getCorrectnumber());
							model.addObject("percentage", topicData.getPercentage());//锟斤拷锟斤拷锟斤拷确锟斤拷
							model.addObject("int_second", topicData.getInt_second());
							model.addObject("Knowledge_Name",Knowledge_Name);
							model.addObject("name",tixing);
						/*	model.addObject("answers",answerss);
							model.addObject("queanswer",queanswers);*/
							model.addObject("datalength",datalength);//锟斤拷目锟斤拷锟斤拷
							model.addObject("knowledge_Id",knowledge_Id);//锟铰斤拷id
							model.addObject("nickname", nickname);
							model.addObject("kemuZYHXY", kemuZYHXY);
							model.addObject("openid", openid);
							model.addObject("headimgurl", headimgurl);
							model.addObject("correctnumber", correctnumber);
							model.addObject("percentage",percentage);//锟斤拷锟斤拷锟斤拷确锟斤拷
							model.addObject("days", days);
							model.addObject("dateTime", dateTime);
							model.addObject("integral", integral);
							model.addObject("lv1state", lv1state);
							model.addObject("lv2state", lv2state);
							model.addObject("lv3state", lv3state);
							if(tixing.equals("中药")){
								System.out.println("进入中药");	
								model.setViewName("lishicuoti/lishijingxuandetailspage");
								/*return "chapter/jingxuandetailspage";*/
								
							}
							if(tixing.equals("西药")){
								System.out.println("进入西药");
								model.setViewName("lishicuoti/lishijingxuandetailspageWest");
								/*return "chapter/jingxuandetailspage";*/
							}
				  }
				return model;
				
		    }
		
		
}
