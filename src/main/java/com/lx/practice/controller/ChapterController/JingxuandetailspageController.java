package com.lx.practice.controller.ChapterController;

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

import com.lx.practice.entity.TopicData;



//锟斤拷转锟斤拷锟斤拷锟斤拷锟斤拷页锟斤拷
@Controller
@RequestMapping(value="/jingxuandetailspage")
public class JingxuandetailspageController {
	
	
	//锟斤拷锟斤拷锟矫伙拷微锟斤拷
		//锟斤拷转锟斤拷锟斤拷锟斤拷锟斤拷页锟斤拷//锟斤拷锟斤拷锟斤拷要锟斤拷锟斤拷锟斤拷锟斤拷确锟绞憋拷锟斤拷锟斤拷锟絩edis锟叫ｏ拷锟斤拷锟斤拷锟斤拷目锟斤拷锟斤拷锟斤拷微锟斤拷锟斤拷锟斤拷
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
			System.out.println("锟斤拷锟斤拷锟教�");
			System.out.println("锟斤拷录锟斤拷锟斤拷锟斤拷"+days);
			System.out.println("锟叫讹拷锟斤拷锟捷ｏ拷"+jiexihuidiao);
			System.out.println("锟角称ｏ拷"+nickname);
			if (jiexihuidiao.equals("jiexihuidiao")) {
				System.out.println("锟接斤拷锟斤拷页锟斤拷锟斤拷转锟斤拷锟斤拷页锟斤拷");
				String  Knowledge_Name  = topicData.getKnowledge_Name();
				//锟斤拷锟叫憋拷锟斤拷
				// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
				Knowledge_Name = URLEncoder.encode(Knowledge_Name, "ISO-8859-1");
			    // 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
				Knowledge_Name = URLDecoder.decode(Knowledge_Name, "UTF-8");
					
			
				// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
				kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
			    // 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
				kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
				
				//锟斤拷锟叫憋拷锟斤拷
				// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
				tixing = URLEncoder.encode(tixing, "ISO-8859-1");
				// 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
				tixing = URLDecoder.decode(tixing, "UTF-8");
				//锟斤拷锟叫憋拷锟斤拷
				// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
				lv1state = URLEncoder.encode(lv1state, "ISO-8859-1");
				// 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
				lv1state = URLDecoder.decode(lv1state, "UTF-8");
				
				// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
				lv2state = URLEncoder.encode(lv2state, "ISO-8859-1");
				// 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
				lv2state = URLDecoder.decode(lv2state, "UTF-8");
				
				// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
				lv3state = URLEncoder.encode(lv3state, "ISO-8859-1");
				// 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
			    lv3state = URLDecoder.decode(lv3state, "UTF-8");
				
				System.out.println("药锟斤拷锟酵ｏ拷"+tixing);
				//锟斤拷锟叫憋拷锟斤拷
				// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
				nickname = URLEncoder.encode(nickname, "ISO-8859-1");
				// 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
			    nickname = URLDecoder.decode(nickname, "UTF-8");
					model.addObject("correctnumber", correctnumber);
					model.addObject("percentage",percentage);//锟斤拷锟斤拷锟斤拷确锟斤拷
					model.addObject("int_second", int_second);
					model.addObject("Knowledge_Name",Knowledge_Name);
					model.addObject("name",tixing);
					/*model.addObject("answers",answers);
					model.addObject("queanswer",queanswer);*/
					model.addObject("datalength",datalength);//锟斤拷目锟斤拷锟斤拷
					model.addObject("knowledge_Id",knowledge_Id);//锟铰斤拷id
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
						model.setViewName("chapter/jingxuandetailspage");
					}
					if(tixing.equals("西药")){
						System.out.println("西药");
						model.setViewName("chapter/jingxuandetailspageWest");
					}
			  }else{
				  /*TopicData topicData2 = new TopicData();*/
					/*List<TopicData>  topicDataList = new  ArrayList<TopicData>();*/
					System.out.println("锟斤拷锟斤拷锟斤拷页锟斤拷锟斤拷锟斤拷锟阶拷锟斤拷锟揭筹拷锟�");
				    //锟斤拷转锟斤拷锟斤拷始页锟斤拷
					String  Knowledge_Name  = topicData.getKnowledge_Name();
					//锟斤拷锟叫憋拷锟斤拷
					// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
					Knowledge_Name = URLEncoder.encode(Knowledge_Name, "ISO-8859-1");
				    // 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
					Knowledge_Name = URLDecoder.decode(Knowledge_Name, "UTF-8");
						
					//锟斤拷锟叫憋拷锟斤拷
					// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
					tixing = URLEncoder.encode(tixing, "ISO-8859-1");
					// 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
					tixing = URLDecoder.decode(tixing, "UTF-8");
					
					//锟斤拷锟叫憋拷锟斤拷
					// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
					nickname = URLEncoder.encode(nickname, "ISO-8859-1");
					// 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
				    nickname = URLDecoder.decode(nickname, "UTF-8");
				    System.out.println("锟斤拷锟斤拷锟斤拷锟角称ｏ拷"+nickname);
				    
				    
				 // 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
					kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
				    // 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
					kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
				    
					/*topicData.setKnowledge_Name(Knowledge_Name);*/
				  //锟斤拷锟叫憋拷锟斤拷
					// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
					lv1state = URLEncoder.encode(lv1state, "ISO-8859-1");
					// 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
					lv1state = URLDecoder.decode(lv1state, "UTF-8");
					
					// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
					lv2state = URLEncoder.encode(lv2state, "ISO-8859-1");
					// 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
					lv2state = URLDecoder.decode(lv2state, "UTF-8");
					
					// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
					lv3state = URLEncoder.encode(lv3state, "ISO-8859-1");
					// 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
				    lv3state = URLDecoder.decode(lv3state, "UTF-8");
				    
				    /*
				    String  queanswers =  "";//锟矫伙拷选锟斤拷拇锟�
					String  answerss = "";//锟斤拷确锟侥达拷
					for (int i = 0; i < topicData.getQueanswer().length; i++) {
						if (i < topicData.getQueanswer().length-1) {
							queanswers = queanswers +  topicData.getQueanswer()[i]+",";
						}
						if (i ==  topicData.getQueanswer().length-1) {
							queanswers = queanswers +  topicData.getQueanswer()[i];
						}
					}
					
					for (int i = 0; i < topicData.getAnswers().length; i++) {
						if (i < topicData.getAnswers().length-1) {
							answerss = answerss +  topicData.getAnswers()[i]+",";
						}
						if (i ==  topicData.getAnswers().length-1) {
							answerss = answerss +  topicData.getAnswers()[i];
						}
					}*/
					//锟斤拷锟斤拷锟斤拷要锟叫讹拷锟矫伙拷锟斤拷锟斤拷锟斤拷什么锟斤拷锟酵ｏ拷锟斤拷同锟斤拷锟斤拷锟斤拷应锟斤拷锟矫诧拷同锟侥硷拷锟斤拷锟斤拷redis锟叫ｏ拷锟斤拷锟斤拷锟矫伙拷锟斤拷同一锟斤拷锟斤拷锟斤拷锟斤拷息应锟矫达拷锟斤拷同一锟斤拷锟斤拷锟斤拷
					        
						/*topicDataService.Savefind(user);*///锟斤拷锟矫伙拷微锟斤拷锟斤拷息锟酵达拷锟斤拷锟斤拷确锟绞达拷锟斤拷redis锟斤拷
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
							System.out.println("涓嵂");
								model.setViewName("chapter/jingxuandetailspage");
							/*return "chapter/jingxuandetailspage";*/
							
						}
						if(tixing.equals("西药")){
							System.out.println("瑗胯嵂");
							model.setViewName("chapter/jingxuandetailspageWest");
							/*return "chapter/jingxuandetailspage";*/
						}
			  }
			return model;
			
	    }
		
	
	
}
