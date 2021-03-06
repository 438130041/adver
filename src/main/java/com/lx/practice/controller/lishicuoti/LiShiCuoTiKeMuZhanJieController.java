package com.lx.practice.controller.lishicuoti;

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
import com.lx.practice.service.LiShiCuoTiService.LiShiCuoTiService;


@Controller
@RequestMapping("/lishicuotikemuzhangjie")
public class LiShiCuoTiKeMuZhanJieController {
	
					@Autowired
					private  LiShiCuoTiService  lishicuotiService;
						
					
					@RequestMapping(value="lishicuotikemuzhangjie",method=RequestMethod.GET)
					public  ModelAndView   cuotikemuzhangjie(ModelAndView model,HttpServletRequest request,
				    		@RequestParam(value="nickname")String nickname,
				    		@RequestParam(value="openid")String openid,
				    		@RequestParam(value="headimgurl")String headimgurl,
				    		@RequestParam(value="days")String days,
				    		@RequestParam(value="integral")String integral,
				    		@RequestParam(value="dateTime")String dateTime,
				    		@RequestParam(value="lv1state")String lv1state,
				    		@RequestParam(value="lv2state")String lv2state,
				    		@RequestParam(value="lv3state")String lv3state,
				    		@RequestParam(value="kemu")String kemu,
				    		@RequestParam(value="kemuZYHXY")String kemuZYHXY
							)throws UnsupportedEncodingException{
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
						 // 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
						 kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
						 	// 再进行utf-8编码 一次得到页面上输入的文本内容
						 kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
						 
						 ExamQuestion  examquestion  = new  ExamQuestion();
						 examquestion.setOpenid(openid);
						 
						 
						 //根据科目id查询对应的章节id
						 if(kemu.equals("YXY")){
							 //通过章节id查询章节数
							 List<ExamQuestion> lishicuotizXYY = lishicuotiService.lishicuotizXYY(examquestion);
							 System.out.println("药学一章节选择");
							 model.addObject("knowledge_Name", "药学专业知识一");
							 model.addObject("zhangjie", lishicuotizXYY);
							 model.addObject("size", lishicuotizXYY.size());//章节题目数量
						 }
						 if(kemu.equals("YXE")){
							 List<ExamQuestion> lishicuotizXYE = lishicuotiService.lishicuotizXYE(examquestion);
							 model.addObject("knowledge_Name", "药学专业知识二");
							 model.addObject("zhangjie", lishicuotizXYE);
							 model.addObject("size", lishicuotizXYE.size());//章节题目数量
						 }
						 if(kemu.equals("YXZH")){//
							/* System.out.println("微信id："+openid);*/
							 List<ExamQuestion> lishicuotizXYZH = lishicuotiService.lishicuotizXYZH(examquestion);
							 System.out.println("药学综合章节选择");
							/* System.out.println("章节名："+cuotizXYZH.get(0).getKnowledge_Name());*/
							 System.out.println("章节长度："+lishicuotizXYZH.size());
							 model.addObject("knowledge_Name", "药学综合知识与技能");
							 model.addObject("zhangjie", lishicuotizXYZH);
							 model.addObject("size", lishicuotizXYZH.size());//章节题目数量
						 }
						 if(kemu.equals("YS")){
							 List<ExamQuestion> lishicuotizYS = lishicuotiService.lishicuotizYS(examquestion);
							 model.addObject("knowledge_Name", "药事管理与法规");
							 model.addObject("zhangjie", lishicuotizYS);
							 model.addObject("size", lishicuotizYS.size());//章节题目数量
						 }
						 if(kemu.equals("ZYY")){
							 List<ExamQuestion> lishicuotizZYY = lishicuotiService.lishicuotizZYY(examquestion);
							 model.addObject("knowledge_Name", "中药学专业知识一");
							 model.addObject("zhangjie", lishicuotizZYY);
							 model.addObject("size", lishicuotizZYY.size());//章节题目数量
						 }
						 if(kemu.equals("ZYE")){
							 List<ExamQuestion> lishicuotizZYE = lishicuotiService.lishicuotizZYE(examquestion);
							 model.addObject("knowledge_Name", "中药学专业知识二");
							 model.addObject("zhangjie", lishicuotizZYE);
							 model.addObject("size", lishicuotizZYE.size());//章节题目数量
						 }
						 if(kemu.equals("ZYZH")){
							 List<ExamQuestion> lishicuotizZYZH = lishicuotiService.lishicuotizZYZH(examquestion);
							 model.addObject("knowledge_Name", "中药学综合知识与技能");
							 model.addObject("zhangjie", lishicuotizZYZH);
							 model.addObject("size", lishicuotizZYZH.size());//章节题目数量
						 }
						 
						 model.addObject("nickname",nickname);
						 model.addObject("openid", openid);
						 model.addObject("headimgurl", headimgurl);
						 model.addObject("days", days);
						 model.addObject("integral", integral);
						 model.addObject("dateTime", dateTime);
						 model.addObject("lv1state", lv1state);
						 model.addObject("lv2state", lv2state);
						 model.addObject("lv3state", lv3state);
						 model.addObject("kemuZYHXY", kemuZYHXY);
						 System.out.println("科目："+kemu);
						 model.addObject("kemu", kemu);
						 model.setViewName("lishicuoti/lishicuotizhanjie");
						 return model;
					}
	
	
	
	
	
						//点击进入不同的章节
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
								model.addObject("tixing", "中药");
								model.setViewName("lishicuoti/lishicuotitfcpractice");
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
								model.setViewName("lishicuoti/lishicuotitfcpractice");
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
								model.setViewName("lishicuoti/lishicuotitfcpractice");
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
								model.setViewName("lishicuoti/lishicuotitfcpractice");
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
									model.setViewName("lishicuoti/lishicuotitfcpractice");
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
									model.setViewName("lishicuoti/lishicuotitfcpractice");
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
									model.setViewName("lishicuoti/lishicuotitfcpractice");
									return model;
								}
							
							return model;
							
					    }
	
	
	
					//ajax查询出题目数据
					@RequestMapping(value="/practice",method=RequestMethod.POST)
					@ResponseBody
					public  Map<String, Object>  ajax(ExamQuestion  subList,
							@RequestParam(value="knowledge_Id")String knowledge_Id,
							@RequestParam(value="kemuZYHXY")String kemuZYHXY,
							@RequestParam(value="openid")String openid
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
						  ExamQuestion   examquestions  =  new  ExamQuestion();
						  examquestions.setKnowledge_Id(knowledge_Id);
						  examquestions.setOpenid(openid);
						if (kemuZYHXY.equals("西药")) {
							    System.out.println("knowledge_Id的值："+knowledge_Id);
								List<ExamQuestion>  EQ = lishicuotiService.lishicuotitimu(examquestions);//用传过来章节id进行题目数据的查询
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
							List<ExamQuestion> EQ = lishicuotiService.lishicuotitimu(examquestions);
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
	
	
				//章节中科目切换按钮
					@RequestMapping(value="/switch",method=RequestMethod.GET)
				    public ModelAndView index(ModelAndView model,HttpServletRequest request,
				    		@RequestParam(value="nickname")String nickname,
				    		@RequestParam(value="openid")String openid,
				    		@RequestParam(value="headimgurl")String headimgurl,
				    		@RequestParam(value="days")String days,
				    		@RequestParam(value="integral")String integral,
				    		@RequestParam(value="dateTime")String dateTime,
				    		@RequestParam(value="lv1state")String lv1state,
				    		@RequestParam(value="lv2state")String lv2state,
				    		@RequestParam(value="lv3state")String lv3state
				    		){//
						//跳转到开始页面
						System.out.println("跳转到开始页面");
						 model.addObject("nickname",nickname);
						 model.addObject("openid", openid);
						 model.addObject("headimgurl", headimgurl);
						 model.addObject("days", days);
						 model.addObject("integral", integral);
						 model.addObject("dateTime", dateTime);
						 model.addObject("lv1state", lv1state);
						 model.addObject("lv2state", lv2state);
						 model.addObject("lv3state", lv3state);
						model.setViewName("lishicuoti/lishicuotikemu");
				        System.out.println("跳转");
				        return model;
				    }
		
		
}
