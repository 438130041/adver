package com.lx.practice.controller.cuoticonzuo;

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
import com.lx.practice.service.LiShiCuoTiService.LiShiCuoTiService;


@Controller
@RequestMapping("/cuoticucuen")
public class CuoTiCCuenController {
	
	@Autowired
	private  CuoTiConZuoService  cuotiConzuoservice;
	
	
	@Autowired  
	private  LiShiCuoTiService   liShiCuoTiService;
	
	//将用户错题存入数据库中
		@RequestMapping(value="/cuoticucuen",method=RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> cuoticucuen(HttpServletRequest request,
				ExamQuestion  examQuestion,String   kemu
			 ){
			System.out.println("进入错题储存方法");
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//(根据题目id)查询该题目数据
			System.out.println("错题储存题目id："+examQuestion.getQuestions_id());
			List<ExamQuestion> tmuchaxuen = cuotiConzuoservice.tmuchaxuen(examQuestion);
		 	//将题目数据拿出来，存入错题库中
			  //章节名
			/*System.out.println("题目类型："+tmuchaxuen.get(0).getQuestions_Type());*/
			
			ExamQuestion  examquestions = new  ExamQuestion();
			examquestions.setOpenid(examQuestion.getOpenid());//微信id
			examquestions.setKnowledge_Id(examQuestion.getKnowledge_Id());//章节id
			System.out.println("科目类型："+kemu);
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
			
			examquestions.setQuestions_id(examQuestion.getQuestions_id());//题目id
			examquestions.setKnowledge_Name(tmuchaxuen.get(0).getKnowledge_Name());//章节名
			examquestions.setQuestions_json(tmuchaxuen.get(0).getQuestions_json());//题目数据
			examquestions.setQuestions_Type(tmuchaxuen.get(0).getQuestions_Type());//题目类型
			System.out.println("章节名："+tmuchaxuen.get(0).getKnowledge_Name());
			//判断错题库与历史错题库中是否已经有了该题数据（因为用户可能在次做的时候，重头开始做题，这样他在次做错题时会在储存一次）
					//根据用户微信id和题目id查询出错题表和历史错题表中是否已经有了该数据
			List<ExamQuestion> chaxuencuotisfcuenzai = cuotiConzuoservice.chaxuencuotisfcuenzai(examquestions);    
					//根据用户微信id和题目id查询出历史错题表中是否已经有了该题目信息
			List<ExamQuestion> chaxuenlishicuotisfcuenzai = liShiCuoTiService.chaxuenlishicuotisfcuenzai(examquestions);
			if(chaxuencuotisfcuenzai.size() == 0){//如果错题表中没有该题目数据，那么将题目数据添加进去
					/*System.out.println("章节数："+cuotizhangjieshu.get(0).getSortCode());
					System.out.println("章节名："+cuotizhangjieshu.get(0).getKnowledge_Name());*/
				    examquestions.setTitle_Sum("1");
					cuotiConzuoservice.cuoticuenru(examquestions);//将数据存入（错题重做）数据库中
			}
			if(chaxuenlishicuotisfcuenzai.size() == 0){//如果历史错题表中没有该题目数据，那么将题目数据添加进去
					//将错题信息存入（历史错题）信息库中
					examquestions.setTitle_Sum("1");
					cuotiConzuoservice.lishicuoticc(examquestions);
			}
			
			
			//根据章节名查询出章节对应章节数（去章节题库中查询出章节所对应的章节数）
			/*System.out.println("parentId的值："+);*/
			System.out.println("章节名："+tmuchaxuen.get(0).getKnowledge_Name());
			System.out.println("章节id："+examquestions.getParentId());
			List<ExamQuestion> cuotizhangjieshu = cuotiConzuoservice.cuotizhangjieshu(examquestions);
			System.out.println("查询章节数查询完毕");
			System.out.println("章节数："+cuotizhangjieshu.get(0).getSortCode());
			examquestions.setSortCode(cuotizhangjieshu.get(0).getSortCode());//错题章节数(第几章)(存入章节表中)
			//查询出错题题目数
			//查询该章节下有多少到题目（错题库中）
			List<ExamQuestion> cuotizhangjietimushu = cuotiConzuoservice.cuotizhangjietimushu(examQuestion);
			String  title_Sum =  Integer.toString(cuotizhangjietimushu.size());//java中int类型转换为String类型
			examquestions.setTitle_Sum(title_Sum);//题目数(该章节下有多少个题目，存入章节表中)
			//查询章节表(错题章节表)中是否已经有该章节
			List<ExamQuestion> chaxuensfygaizhangjie = cuotiConzuoservice.chaxuensfygaizhangjie(examquestions);
			List<ExamQuestion> lishizhanjietimushu = cuotiConzuoservice.lishizhanjietimushu(examquestions);
			
			if(chaxuensfygaizhangjie.size() == 0){
				//如果还没有这个章节那么直接将章节信息存入进去,将章节信息存入数据库中(同一个章节只改变章节题目数)
				System.out.println("插入章节信息");
				cuotiConzuoservice.cuotizhanjiecucuen(examquestions);
				System.out.println("插入章节信息完毕");
				//历史错题章节储存
				cuotiConzuoservice.lishicuotizhanjie(examquestions);
				/*System.out.println("数据储存成功");*/
			}
			if(chaxuensfygaizhangjie.size() != 0 && cuotizhangjietimushu.size() >=1 &&  chaxuencuotisfcuenzai.size() == 0){
				//如果章节表中已经有了该章节信息，那么只需要该表章节信息的题目数据（数量）
				int   zhangjiesize =  Integer.parseInt(lishizhanjietimushu.get(0).getTitle_Sum());//章节题目数
				/*System.out.println("初始章节题目数："+zhangjiesize);*/
				String  zhangjietitle_Sumlishi =  Integer.toString(zhangjiesize + 1);
				/*System.out.println("更改后该章节下题目数："+zhangjietitle_Sumlishi);*/
				examquestions.setTitle_Sum(zhangjietitle_Sumlishi);
				cuotiConzuoservice.cuotizhangjiegengai(examquestions);//更改章节中的题目数
				/*System.out.println("更改章节题目数量数据");*/
			}
			
			//历史错题
			if(chaxuensfygaizhangjie.size() != 0 && cuotizhangjietimushu.size() >=1 &&  chaxuenlishicuotisfcuenzai.size() == 0){
				//历史错题章节更改
					//先查询历史错题表中该章节的题目数
				int  size  =   Integer.parseInt(lishizhanjietimushu.get(0).getTitle_Sum());//章节题目数
				String   title_Sumlishi =  Integer.toString(size + 1);//因为只要进入了此方法，说明就有一道错题出现，因此只要进入就加一
				examquestions.setTitle_Sum(title_Sumlishi);
				/*examquestions.setTitle_Sum(title_Sum);*/
				 //将历史错题库题目数进行更改(在添加错题记录时，历史错题中的题目数只增加)
				cuotiConzuoservice.lishicuotizhanjiegengai(examquestions);
				/*System.out.println("数据更改成功");*///
			}
			
			queryMap.put("type", "success");
			return queryMap;
		}
	
		//
		
		//错题练习时，如果用户答对，就将错题库中该用户的错题信息删除
		
		@RequestMapping(value="/cuotishanchu",method=RequestMethod.POST)
		@ResponseBody
		public  Map<String,Object>  cuotishanchu(HttpServletRequest request,
				ExamQuestion  examQuestion
				){
			Map<String, Object> queryMap = new HashMap<String, Object>();
			System.out.println("进入错题删除方法");
			System.out.println("当前题目id："+examQuestion.getQuestions_id());
			//查询该章节下有多少到题目
			List<ExamQuestion> cuotizhangjietimushu = cuotiConzuoservice.cuotizhangjietimushu(examQuestion);
			//根据传过来的微信id和题目id删除对应的题目
			cuotiConzuoservice.cuotishanchus(examQuestion);
			ExamQuestion  examquestioncuoti  = new  ExamQuestion();
			int  size = cuotizhangjietimushu.size();
			String  title_Sum =  Integer.toString(size -1);//java中int类型转换为String类型
			/*if(!title_Sum.equals("0")){*///减去题目数后不为0的情况下执行更改章节题目数方法
				examquestioncuoti.setTitle_Sum(title_Sum);
				//根据删除题目的章节id，改变章节表中题目数（如果章节中的错题数量已经为0， ）
				cuotiConzuoservice.cuotizhangjiegengai(examQuestion);
			/*}*/
			
			queryMap.put("type", "success");
			return queryMap;
		}
		 
		
		//页面点击错题重做
		@RequestMapping(value="/cuotikemu",method=RequestMethod.GET)
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
			    model.setViewName("cuotichonzuo/cuotikemu");
				return model;
		}
		 
}
