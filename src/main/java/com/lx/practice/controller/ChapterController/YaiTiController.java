package com.lx.practice.controller.ChapterController;

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
import com.lx.practice.service.ExamQuestionService;
import com.lx.practice.service.ExamQuestionWestService;



@Controller
@RequestMapping("/yati")
public class YaiTiController {
		
	
	@Autowired
	private  ExamQuestionService  examQuestionService;
	
	@Autowired
	private  ExamQuestionWestService  examQuestionWestService;
	
	//付费用户精选题和每日一练的选择
			@RequestMapping(value="/yati",method=RequestMethod.GET)
		    public  ModelAndView  jingxuantiku(ModelAndView model,HttpServletRequest request,
		    		@RequestParam(value="kemu")String kemu,
		    		@RequestParam(value="kemuZYHXY")String kemuZYHXY,
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
				
				/*System.out.println("用户微信名："+nickname);*/
				System.out.println("查询出章节");
				System.out.println("选择的科目："+kemu);
				
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
			  //进行编译
				// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
			    kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
			    // 再进行utf-8编码 一次得到页面上输入的文本内容
			    kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
			    
			    System.out.println("kemuZYHXY："+kemuZYHXY);
				
				//进行编译
				/*// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
				 nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			    // 再进行utf-8编码 一次得到页面上输入的文本内容
				 nickname = URLDecoder.decode(nickname, "UTF-8");*/
				//查询出科目下的章节
				if("YXY".equals(kemu)){//药学专业知识一
			     List<ExamQuestion> findYXY = examQuestionWestService.findYXY();
					/*model.addObject("nickname", nickname);knowledge_Name
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie", findYXY);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findYXY.size());//章节数量
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("dateTime", dateTime);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "药学专业知识一");
				    model.setViewName("chapter/zhangjie");
				}
				if("YXE".equals(kemu)){//药学专业知识二
					System.out.println("进入药学专业知识二");
					List<ExamQuestion> findYXE = examQuestionWestService.findYXE();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findYXE);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findYXE.size());//章节数量
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "药学专业知识二");
				    model.setViewName("chapter/zhangjie");
				}
				if("YXZH".equals(kemu)){//药学综合知识与技能
					List<ExamQuestion> findYXZH = examQuestionWestService.findYXZH();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findYXZH);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findYXZH.size());//章节数量
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "药学综合知识与技能");
				    model.setViewName("chapter/zhangjie");
				}
				if ("ZYY".equals(kemu)){//中药学专业知识一
					List<ExamQuestion> findZYY = examQuestionService.findZYY();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findZYY);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findZYY.size());//章节数量
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "中药学专业知识一");
				    model.setViewName("chapter/zhangjie");
				}
				if ("ZYE".equals(kemu)){//中药学专业知识二
					List<ExamQuestion> findZYE = examQuestionService.findZYE();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findZYE);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findZYE.size());//章节数量
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "中药学专业知识二");
				    model.setViewName("chapter/zhangjie");
				}
				if ("ZYZH".equals(kemu)){//中药学综合知识与技能
					List<ExamQuestion> findYXZH = examQuestionService.findZYZH();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findYXZH);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findYXZH.size());//章节数量
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "中药学综合知识与技能");
				    model.setViewName("chapter/zhangjie");
				}
				if ("YS".equals(kemu)){//药事法规
					List<ExamQuestion> findYS = examQuestionService.findYS();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findYS);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findYS.size());//章节数量
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "药事管理与法规");
				    model.setViewName("chapter/zhangjie");
				}
		        return model;
		    }
	
}
