package com.lx.practice.controller.TiMuShoCangContrlloer;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.CuoTiConZuoService.CuoTiConZuoService;
import com.lx.practice.service.TiMuShoCangService.TiMuShoCangService;
import com.sun.tools.classfile.Annotation.element_value;

@Controller
@RequestMapping("/timushocang")
public class TiMuShoCangController {
			
		@Autowired
		private  CuoTiConZuoService  cuotiConzuoservice;
			
		
		@Autowired
		private   TiMuShoCangService  timushocangservice;
		
	
		//点击题目收藏模块后进入科目选择
		@RequestMapping(value="/timushocangkemu",method=RequestMethod.GET)
		public  ModelAndView timushocangkemu(HttpServletRequest request,ModelAndView model,
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
			    model.setViewName("timushocang/timushocangkemu");
				return model;
		}
		
		
		
		@RequestMapping(value="timushocang",method=RequestMethod.POST)
		@ResponseBody
		public   Map<String,Object>   timushocang(HttpServletRequest request,
					ExamQuestion  examQuestion,String   kemu
				){//
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//根据题目id查询出该题目数据（题库中）
			List<ExamQuestion> tmuchaxuen = cuotiConzuoservice.tmuchaxuen(examQuestion);
			//将用户微信id以及章节id给与实体类
			ExamQuestion  examquestions = new  ExamQuestion();
			examquestions.setOpenid(examQuestion.getOpenid());//微信id
			examquestions.setKnowledge_Id(examQuestion.getKnowledge_Id());//章节id
			System.out.println("科目类型："+kemu);
			System.out.println("微信id："+examQuestion.getOpenid());
			//判断收藏的题目类型
			if(kemu.equals("ZYY")){
				examquestions.setParentId("60079614-2c3f-4ef5-a60e-db3c6bb5b2e6");//科目id
			}
			if(kemu.equals("ZYE")){
				examquestions.setParentId("a638780e-40ea-4b24-85c8-b58a1e112ff4");//科目id
			}
			if(kemu.equals("ZYZH")){
				examquestions.setParentId("b54ed4c4-a9ba-405c-8d20-8c0b703e8f4c");//科目id
			}
			if(kemu.equals("YXY")){
				examquestions.setParentId("c9f44130-5ea8-4c99-a9f2-b1da75fc21c6");//科目id
			}
			if(kemu.equals("YXE")){
				examquestions.setParentId("99286489-2d7e-4eaf-8ef2-ed8e6f2f5e31");//科目id
			}
			if(kemu.equals("YXZH")){
				System.out.println("给与章节id");
				examquestions.setParentId("0c1947d3-d248-4fa9-8fb8-36c786b1816b");//科目id
			}
			if(kemu.equals("YS")){
				examquestions.setParentId("148ac965-7a16-4e59-ad28-554fc760afa7");//科目id
			}
			//将查询出的题目数据给与实体类
			examquestions.setQuestions_id(examQuestion.getQuestions_id());//题目id
			examquestions.setKnowledge_Name(tmuchaxuen.get(0).getKnowledge_Name());//章节名
			examquestions.setQuestions_json(tmuchaxuen.get(0).getQuestions_json());//题目数据
			examquestions.setQuestions_Type(tmuchaxuen.get(0).getQuestions_Type());//题目类型
			System.out.println("章节名："+tmuchaxuen.get(0).getKnowledge_Name());
			//查询收藏表中是否已经有该题目存在
			List<ExamQuestion> chaxuenshocangfcuenzai = timushocangservice.chaxuenshocangfcuenzai(examquestions);
			if(chaxuenshocangfcuenzai.size() == 0){//长度为0说明该题目没有收藏过
				  examquestions.setTitle_Sum("1");//设置该题目所对应的章节下题目数初始值为1
				  timushocangservice.shocangtimucucuen(examquestions);//将要收藏的题目信息储存进题目收藏库中
			}
			//根据章节名查询出章节对应章节数（去章节题库中查询出章节所对应的章节数）
			List<ExamQuestion> cuotizhangjieshu = cuotiConzuoservice.cuotizhangjieshu(examquestions);
			System.out.println("章节数："+cuotizhangjieshu.get(0).getSortCode());
			examquestions.setSortCode(cuotizhangjieshu.get(0).getSortCode());//错题章节数(第几章)(存入章节表中)
			//查询该章节下有多少道题目（收藏题库中）
			List<ExamQuestion> cuotizhangjietimushu = timushocangservice.chaxuenshocangzhanjiexaitishu(examQuestion);
			String  title_Sum =  Integer.toString(cuotizhangjietimushu.size());//java中int类型转换为String类型
			examquestions.setTitle_Sum(title_Sum);//题目数(该章节下有多少个题目，存入章节表中)
			System.out.println("题目数："+title_Sum);
			//查询收藏章节表中是否已经有该章节
			List<ExamQuestion> chaxuneshocnagzhangjiesfyy = timushocangservice.chaxuneshocnagzhangjiesfyy(examquestions);
			if(chaxuneshocnagzhangjiesfyy.size() == 0){//
				//如果收藏章节表中还没有该章节信息，将章节信息存入数据库中
				timushocangservice.cucuenshocangzhangjiexinxi(examquestions);
				System.out.println("插入章节信息成功");
			}
			//如果收藏章节表中已经存在该章节数据，那么章节下题目数加一
			if(chaxuneshocnagzhangjiesfyy.size() > 0 ||   chaxuneshocnagzhangjiesfyy.size() > 0  && StringUtils.isEmpty(chaxuneshocnagzhangjiesfyy.get(0).getTitle_Sum())){//当数据库中字段为空时返回的不是null，应该用inEmpty进行判断
				System.out.println("存在该章节且章节数大于0或该章节下题目数已经为空");
				if(StringUtils.isEmpty(chaxuneshocnagzhangjiesfyy.get(0).getTitle_Sum())){
					 examquestions.setTitle_Sum("1");
				}else{
					int   zhanjiesize =  Integer.parseInt(chaxuneshocnagzhangjiesfyy.get(0).getTitle_Sum());//章节题目数
					String   zhangjietitle_Sumlishi = Integer.toString(zhanjiesize + 1);//转换为String类型数据
					examquestions.setTitle_Sum(zhangjietitle_Sumlishi);//将新的数据给与实体类
				}
				timushocangservice.genggaizhanjietimushulian(examquestions);//更改该章节下题目的数量
			}
			queryMap.put("type", "success");//成功后回调
			return  queryMap;
		}
		
		
		
		//点击取消收藏后删除收藏表中的改题目信息并
		@RequestMapping(value="timushocangshuanchu",method=RequestMethod.POST)
		@ResponseBody
		public   Map<String,Object>   timushocangshuanchu(
					ExamQuestion  examQuestion,String   kemu
				){//
				Map<String, Object> queryMap = new HashMap<String, Object>();
				//删除收藏题库中指定题目
				timushocangservice.shanchushocangtimu(examQuestion);
				//查询出删除题目后收藏题库中的题目数
				List<ExamQuestion> cuotizhangjietimushu = timushocangservice.chaxuenshocangzhanjiexaitishu(examQuestion);
				String  title_Sum =  Integer.toString(cuotizhangjietimushu.size());//java中int类型转换为String类型
				ExamQuestion  examquestions = new  ExamQuestion();
				examquestions.setTitle_Sum(title_Sum);//题目数(该章节下有多少个题目，存入章节表中)
				//更改收藏章节表中题目个数数据
				timushocangservice.genggaizhanjietimushulian(examQuestion);
				//成功后回调
				queryMap.put("type", "success");
				return queryMap;
		    }
		
		
		//进入精选题库做题时先查询该用户在收藏库中的所有题目，用于标记所有已收藏的题目
		@RequestMapping(value="chaxuenshuoyshocangtimu",method=RequestMethod.POST)
		@ResponseBody
		public  Map<String,Object>  chaxuenshuoyshocangtimu(
						ExamQuestion  examQuestion
				){
			/*System.out.println("微信id："+examQuestion.getOpenid());
			System.out.println("题目id:"+examQuestion.getQuestions_id());*/
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//查询出用户的题目收藏
			List<ExamQuestion> chaxuenshuoyshocangtimu = timushocangservice.chaxuenshuoyshocangtimu(examQuestion);
			/*System.err.println("数据长度："+chaxuenshuoyshocangtimu.size());
			System.out.println("题目id的值："+chaxuenshuoyshocangtimu.get(0).getQuestions_id());
			System.out.println("json的值："+chaxuenshuoyshocangtimu.get(0).getQuestions_json());*/
			if(chaxuenshuoyshocangtimu.size() >0  &&   !StringUtils.isEmpty(chaxuenshuoyshocangtimu.get(0).getQuestions_json()) ){
				queryMap.put("type", "success");
			}else{
				queryMap.put("type","error");
			}
			return queryMap;
		}
		
		
		
		
		
}
