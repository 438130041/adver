package com.lx.practice.controller.lishicuoti;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.LiShiCuoTiService.LiShiCuoTiService;

@Controller
@RequestMapping("/lishicuoti")
public class LiShiCuoTiController {
	
	 @Autowired
	 private  LiShiCuoTiService   lishicuotiservice;
	
	
	
	
		//进入历史错题科目选择页面
	//页面点击历史错题
			@RequestMapping(value="/lishicuoti",method=RequestMethod.GET)
			public  ModelAndView cuotikemu(HttpServletRequest request,ModelAndView model,
					@RequestParam(value="nickname")String nickname,
		    		@RequestParam(value="openid")String openid,
		    		@RequestParam(value="headimgurl")String headimgurl,
		    		@RequestParam(value="days")String days,
		    		@RequestParam(value="integral")String integral,
		    		@RequestParam(value="dateTime")String dateTime,
		    		@RequestParam(value="lv1state")String lv1state,
		    		@RequestParam(value="lv2state")String lv2state,
		    		@RequestParam(value="lv3state")String lv3state
					) throws UnsupportedEncodingException{
				
				//进入错题章节
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
				    
					model.addObject("nickname",nickname);  
				    model.addObject("openid", openid);
				    model.addObject("headimgurl", headimgurl);
				    model.addObject("headimgurl", headimgurl);
				    model.addObject("days", days);
				    model.addObject("integral", integral);
				    model.addObject("dateTime", dateTime);
				    model.addObject("lv1state", lv1state);
				    model.addObject("lv2state", lv2state);
				    model.addObject("lv3state", lv3state);
				    model.setViewName("lishicuoti/lishicuotikemu");
					return model;
			}
		
		
			
			
			
			
			//进入错题科目章节选择
			@RequestMapping(value="lishicuotizhangjie",method=RequestMethod.GET)
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
					 List<ExamQuestion> lishicuotizXYY = lishicuotiservice.lishicuotizXYY(examquestion);
					 model.addObject("knowledge_Name", "药学专业知识一");
					 model.addObject("zhangjie", lishicuotizXYY);
					 model.addObject("size", lishicuotizXYY.size());//章节题目数量
				 }
				 if(kemu.equals("YXE")){
					 List<ExamQuestion> lishicuotizXYE = lishicuotiservice.lishicuotizXYE(examquestion);
					 model.addObject("knowledge_Name", "药学专业知识二");
					 model.addObject("zhangjie", lishicuotizXYE);
					 model.addObject("size", lishicuotizXYE.size());//章节题目数量
				 }
				 if(kemu.equals("YXZH")){
					 List<ExamQuestion> lishicuotizXYZH = lishicuotiservice.lishicuotizXYZH(examquestion);
					 model.addObject("knowledge_Name", "药学综合知识与技能");
					 model.addObject("zhangjie", lishicuotizXYZH);
					 model.addObject("size", lishicuotizXYZH.size());//章节题目数量
				 }
				 if(kemu.equals("YS")){
					 List<ExamQuestion> lishicuotizYS = lishicuotiservice.lishicuotizYS(examquestion);
					 model.addObject("knowledge_Name", "药事管理与法规");
					 model.addObject("zhangjie", lishicuotizYS);
					 model.addObject("size", lishicuotizYS.size());//章节题目数量
				 }
				 if(kemu.equals("ZYY")){
					 List<ExamQuestion> lishicuotizZYY = lishicuotiservice.lishicuotizZYY(examquestion);
					 model.addObject("knowledge_Name", "中药学专业知识一");
					 model.addObject("zhangjie", lishicuotizZYY);
					 model.addObject("size", lishicuotizZYY.size());//章节题目数量
				 }
				 if(kemu.equals("ZYE")){
					 List<ExamQuestion> lishicuotizZYE = lishicuotiservice.lishicuotizZYE(examquestion);
					 model.addObject("knowledge_Name", "中药学专业知识二");
					 model.addObject("zhangjie", lishicuotizZYE);
					 model.addObject("size", lishicuotizZYE.size());//章节题目数量
				 }
				 if(kemu.equals("ZYZH")){
					 List<ExamQuestion> lishicuotizZYZH = lishicuotiservice.lishicuotizZYZH(examquestion);
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
			
		
}
