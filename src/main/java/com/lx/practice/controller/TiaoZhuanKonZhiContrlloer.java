package com.lx.practice.controller;

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

import com.lx.practice.entity.UserinFormation;
import com.lx.practice.service.GeRenXinXiService.GeRenXinXiService;


@Controller
@RequestMapping("/tiaozhuankonzhi")
public class TiaoZhuanKonZhiContrlloer {
		
	/*@Autowired
	private   GeRenXinXiService  gerenxinxiservice;*/
	
	//跳转到首页
		@RequestMapping(value="/tiaozhuankonzhi",method=RequestMethod.GET)
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
	    		
	    		) throws UnsupportedEncodingException{
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
		    
		    model.addObject("nickname", nickname);//微信名
		    model.addObject("openid", openid);//微信id
		    model.addObject("headimgurl", headimgurl);//微信头像
		    model.addObject("days", days);
		    model.addObject("integral", integral);
		    model.addObject("dateTime", dateTime);
		    model.addObject("lv1state", lv1state);
		    model.addObject("lv2state", lv2state);
		    model.addObject("lv3state", lv3state);
	        model.setViewName("chapter/jingxuantiku");
	        System.out.println("跳转");
	        return model;
	    }
		
		
			//跳转到我的页面
				@RequestMapping(value="/my",method=RequestMethod.GET)
			    public ModelAndView my(ModelAndView model,HttpServletRequest request,
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
				    
				    model.addObject("nickname", nickname);//微信名
				    model.addObject("openid", openid);//微信id
				    model.addObject("headimgurl", headimgurl);//微信头像
				    model.addObject("days", days);
				    model.addObject("integral", integral);
				    model.addObject("dateTime", dateTime);
				    model.addObject("lv1state", lv1state);
				    model.addObject("lv2state", lv2state);
				    model.addObject("lv3state", lv3state);
			        model.setViewName("shezhiyezmian/gerenzhoxin");
			        System.out.println("跳转");
			        return model;
			    }
		
			
			//从个人信息页面返回个人中心
				@RequestMapping(value="/xinxiyefanhui",method=RequestMethod.GET)
				public ModelAndView xinxiyefanhui(ModelAndView model,HttpServletRequest request,
				    	String  openid
				  	){
						//跳转到开始页面
						//查询出用户个人信息
						/*List<UserinFormation> selectuser = gerenxinxiservice.selectuser(openid);*/
						model.addObject("openid", openid);
						/*model.addObject("selectuser", selectuser);*/
				        model.setViewName("shezhiyezmian/gerenzhoxin");
				        System.out.println("跳转");
				        return model;
				    }
				
				
				
				
			//从个人中心跳转到个人信息页面
			@RequestMapping(value="/gerenxingxi",method=RequestMethod.GET)
			public ModelAndView index(ModelAndView model,HttpServletRequest request,
			    	String  openid
			  	){
					//跳转到开始页面
					//查询出用户个人信息
					/*List<UserinFormation> selectuser = gerenxinxiservice.selectuser(openid);*/
					model.addObject("openid", openid);
					/*model.addObject("selectuser", selectuser);*/
			        model.setViewName("shezhiyezmian/gerenxinxi");
			        System.out.println("跳转");
			        return model;
			    }
				
			
			//从个人中心跳转到设置页面
			@RequestMapping(value="/shezhizhuyemian",method=RequestMethod.GET)
			public ModelAndView shezhi(ModelAndView model,HttpServletRequest request,
			    	String  openid
			  	){
					//跳转到开始页面
					//查询出用户个人信息
					/*List<UserinFormation> selectuser = gerenxinxiservice.selectuser(openid);*/
					model.addObject("openid", openid);
					/*model.addObject("selectuser", selectuser);*/
			        model.setViewName("shezhiyezmian/shezhizhuyemian");
			        return model;
			    }
	    
		  //跳转进入设置页面
			@RequestMapping(value="/zhanghaozhoxin",method=RequestMethod.GET)
			public ModelAndView zhanghaozhoxin(ModelAndView model,HttpServletRequest request,
			    	String  openid
			  	){
					//跳转到开始页面
					//查询出用户个人信息
					/*List<UserinFormation> selectuser = gerenxinxiservice.selectuser(openid);*/
					model.addObject("openid", openid);
					/*model.addObject("selectuser", selectuser);*/
			        model.setViewName("shezhiyezmian/zhanghaozhoxin");
			        return model;
			    }
	    
			
		//跳转进入实名认证也面
			@RequestMapping(value="/shimingrenzheng",method=RequestMethod.GET)
			public ModelAndView shimingrenzheng(ModelAndView model,HttpServletRequest request,
			    	String  openid
			  	){
					//跳转到开始页面
					//查询出用户个人信息
					/*List<UserinFormation> selectuser = gerenxinxiservice.selectuser(openid);*/
					model.addObject("openid", openid);
					/*model.addObject("selectuser", selectuser);*/
			        model.setViewName("shezhiyezmian/zhanghaozhoxin");
			        return model;
			    }
		
			
}
