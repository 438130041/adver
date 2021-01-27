package com.lx.practice.controller.smallfeatureController;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;

@Controller
@RequestMapping("/urltupian")
public class TuPianController {
			
			
		@Autowired
		private  PaiHanService   paiHanService;
		
		
		
	//将用户图片存入数据库同时给与用户打卡积分，设置用户打卡时间和累计打卡天数
			@RequestMapping(value="/urltupian",method=RequestMethod.POST)
			@ResponseBody
		    public Map<String, Object> urltupian(ModelAndView model,HttpServletRequest request,LogUser  logUser){
				Map<String, Object> queryMap = new HashMap<String, Object>();
				/*System.out.println("进入图片储存方法");
				System.out.println("要存入的图片："+logUser.getDakaurl());
				System.out.println("当前用户微信id："+logUser.getOpenid());*/
				//查询该打开用户信息中是否已上传过图片
				List<LogUser> finddakauri = paiHanService.finddakauri(logUser);  
				/*System.out.println("查询出的图片数据："+finddakauri.get(0).getDakaurl());*/
				
				 SimpleDateFormat Wwoddakatime = new SimpleDateFormat("yyyy-MM-dd  HH:mm");
				 LogUser  logUserwoddaka  =  new LogUser();
				 logUserwoddaka.setOpenid(logUser.getOpenid());
				 logUserwoddaka.setNickname(finddakauri.get(0).getNickname());
				 logUserwoddaka.setHeadimgurl(finddakauri.get(0).getHeadimgurl());
				 logUserwoddaka.setDakatime(Wwoddakatime.format(new  Date()));
				 logUserwoddaka.setDakaurl(logUser.getDakaurl());
				 //将用户上传的图片存入打卡记录表中
 				 paiHanService.woddakajilu(logUserwoddaka);
 				 
				if(StringUtils.isEmpty(finddakauri.get(0).getDakaurl())) {//如果为空则进入
					System.out.println("第一次上传图片");
					//如果为空，说明没有图片信息，就是第一次打卡,将打卡信息添加进数据库中
					 SimpleDateFormat datetime = new SimpleDateFormat("yyyy-MM-dd");
	  	         	 LogUser  logUserinsert  =  new LogUser();
	  	         	 if(finddakauri.get(0).getIntegral() == null ){
	  	         		 /*System.out.println("为空");*/
	  	         		 logUserinsert.setIntegral(20);//初始值为空
	  	         	 }else{
//	  	         		 System.out.println("不为空");
	  	         		 logUserinsert.setIntegral(finddakauri.get(0).getIntegral()+20);//打卡一次加20积分
	  	         	 }
	  	         	 logUserinsert.setDakatime(datetime.format(new Date()));//用户当前打卡时间
	  	         	 logUserinsert.setDakatishu(1);//累计活动打卡天数
	  	         	 logUserinsert.setDakaurl(logUser.getDakaurl());//打卡上传图片
	  	         	 logUserinsert.setOpenid(logUser.getOpenid());//用户微信id
	  	         	 logUserinsert.setState(logUser.getState());
	  	         	 System.out.println("将数据添加进去");
	  	         	 paiHanService.insertdakaurl(logUserinsert);//更改用户微信数据（添加打卡图片，添加打卡时间，增加积分）
	  	         	 queryMap.put("type", "success");
				}
				if (!StringUtils.isEmpty(finddakauri.get(0).getDakaurl())) {//如果不为空进去
					System.out.println("上传过再次上传");
						//如果不为空说明打过卡，上传过图片
					 	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
					 	String   str = date.format(new  Date());//将时间类型转换为String类型
					 	String   strg = str.replace("-","");//去掉特殊字符
					 	String   dateTime =str.replace("-","");//去掉特殊字符
					 	int    newdates =Integer.parseInt(strg);//现在时间转化为int类型的数据（用户登录时的时间）
					 	 //查询出用户上次登录时间数据
			    		 String  strs  =  finddakauri.get(0).getDakatime();//用户最近一次打卡时间
			    		 //将String类型的时间数据集转换为int类型数据
			    		 String	  strsg = strs.replace("-","");//最近一次打卡时间去掉特殊字符
			    		 int  olddates = Integer.parseInt(strsg);
			    		 /*System.out.println("转换为in型数据后的旧的时间值"+olddates);*/
			    		 //新的时间去减去旧的时间
			    		 int  k = newdates - olddates;//现在时间减去最近一次的打卡时间
			    		 System.out.println("k的值："+k);
			    		 if(k == 1 || k == 71 || k == 72 || k == 73 || k == 8870){
			    			 //说明是连续打卡，
			    			 LogUser  logUserlianxu  =  new LogUser();
			    			 logUserlianxu.setDakatishu(finddakauri.get(0).getDakatishu()+1);//累计打卡天数加一
			    			 logUserlianxu.setDakaurl(logUser.getDakaurl());//打卡上传图片
			    			 logUserlianxu.setDakatime(date.format(new  Date()));//将最近打卡时间更新为当前时间
			    			 logUserlianxu.setOpenid(logUser.getOpenid());//根据微信用户id进行更改
			    			 logUserlianxu.setState(logUser.getState());
			    			 if (finddakauri.get(0).getDakatishu()+1 == 3) {
								 //如果累计活动打卡天数为3天，额外加20积分
			    				 logUserlianxu.setIntegral(finddakauri.get(0).getIntegral()+40);//连续打卡3额外加20积分
			    				 
							 }else if(finddakauri.get(0).getDakatishu()+1 == 7){
								 logUserlianxu.setIntegral(finddakauri.get(0).getIntegral()+70);//连续打卡7额外加50积分
							 }else {
								 logUserlianxu.setIntegral(finddakauri.get(0).getIntegral()+20);//打开一次加20积分
							 }
			    			 //更新数据
			    			 paiHanService.updatedakaurl(logUserlianxu);
			    			 queryMap.put("type", "success");
			    			 
			    		 }
			    		 if (k > 1 && k != 71 && k != 72 && k != 73 && k != 8870){
			    			 //说明不是连续参加打卡活动
			    			 SimpleDateFormat newdate = new SimpleDateFormat("yyyy-MM-dd");
			     			 String   newstr = date.format(new  Date());//将时间类型转换为String类型
			     			 LogUser  logUsersbulianxu  =  new LogUser();
			     			 logUsersbulianxu.setDakatishu(1);//连续打卡天数变为1
			     			 logUsersbulianxu.setDakaurl(logUser.getDakaurl());//打卡上传图片
			     			 logUsersbulianxu.setDakatime(date.format(new  Date()));//当前打卡时间
			     			 logUsersbulianxu.setOpenid(logUser.getOpenid());//根据微信id进行更改
			     			 logUsersbulianxu.setIntegral(finddakauri.get(0).getIntegral() + 20);//打卡加积分
			     			 logUsersbulianxu.setState(logUser.getState());
			     			 //更新数据
			     			 paiHanService.updatedakaurl(logUsersbulianxu);
			     			 queryMap.put("type", "success");
			    		 }
			    		 if(k == 0){
			    			 //说明是同一天多次打卡
			    			 //同一天多次打卡，只更改上传的图片
			    			 LogUser  logUserstonyitian  =  new LogUser();
			    			 logUserstonyitian.setDakaurl(logUser.getDakaurl());//用户上传的图片
			    			 logUserstonyitian.setOpenid(logUser.getOpenid());//用户微信id
			    			 paiHanService.updatetonyitian(logUserstonyitian);
			    			 queryMap.put("type", "success");
			    		 }
				    }
				
		        return queryMap;
		    }
			
			
			
			/*@RequestMapping(value="/urltupian",method=RequestMethod.GET)
			@ResponseBody
		    public ModelAndView urltupianget(ModelAndView model,HttpServletRequest request,String  openid,String  imageurl){
				
				model.addObject("imageurl", imageurl);
				model.addObject("openid", openid);
				model.setViewName("smallfeature/dakaurl");
		        return model;
		    }*/
			
			
}
