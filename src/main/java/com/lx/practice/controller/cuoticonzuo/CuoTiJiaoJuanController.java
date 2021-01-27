package com.lx.practice.controller.cuoticonzuo;

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

@Controller
@RequestMapping("/cuotijiaojuan")
public class CuoTiJiaoJuanController {
			
		
	
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
			System.out.println("类型："+jiexihuidiao);
		
		if (jiexihuidiao.equals("jiexihuidiao")) {
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
				if(tixing.equals("中药")){//
					System.out.println("中药");
					model.setViewName("cuotichonzuo/cuotijingxuandetailspage");
				}
				if(tixing.equals("西药")){//
					System.out.println("西药");
					model.setViewName("chapter/cuotijingxuandetailspageWest");
				}
		  }else{
			  /*TopicData topicData2 = new TopicData();*/
				/*List<TopicData>  topicDataList = new  ArrayList<TopicData>();*/
			   System.out.println("做完题交卷");
				String  Knowledge_Name  = topicData.getKnowledge_Name();
				
				Knowledge_Name = URLEncoder.encode(Knowledge_Name, "ISO-8859-1");
			   
				Knowledge_Name = URLDecoder.decode(Knowledge_Name, "UTF-8");
					
				
				tixing = URLEncoder.encode(tixing, "ISO-8859-1");
				
				tixing = URLDecoder.decode(tixing, "UTF-8");
				
				
				nickname = URLEncoder.encode(nickname, "ISO-8859-1");
				
			    nickname = URLDecoder.decode(nickname, "UTF-8");
			    
			
				kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
			  
				kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
			    
				
				lv1state = URLEncoder.encode(lv1state, "ISO-8859-1");
				
				lv1state = URLDecoder.decode(lv1state, "UTF-8");
				
			
				lv2state = URLEncoder.encode(lv2state, "ISO-8859-1");
				
				lv2state = URLDecoder.decode(lv2state, "UTF-8");
	
				lv3state = URLEncoder.encode(lv3state, "ISO-8859-1");
		
			    lv3state = URLDecoder.decode(lv3state, "UTF-8");
				        
					
					model.addObject("correctnumber", topicData.getCorrectnumber());
					model.addObject("percentage", topicData.getPercentage());
					model.addObject("int_second", topicData.getInt_second());
					model.addObject("Knowledge_Name",Knowledge_Name);
					model.addObject("name",tixing);
				/*	model.addObject("answers",answerss);
					model.addObject("queanswer",queanswers);*/
					model.addObject("datalength",datalength);
					model.addObject("knowledge_Id",knowledge_Id);
					model.addObject("nickname", nickname);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);
					model.addObject("correctnumber", correctnumber);
					model.addObject("percentage",percentage);
					model.addObject("days", days);
					model.addObject("dateTime", dateTime);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					if(tixing.equals("中药")){
						model.setViewName("cuotichonzuo/cuotijingxuandetailspage");
					}
					if(tixing.equals("西药")){
						System.out.println("西药");
						System.out.println("科目id："+knowledge_Id);
						model.setViewName("cuotichonzuo/cuotijingxuandetailspageWest");
					
					}
		  }
		return model;
		
    }
		
		
}
