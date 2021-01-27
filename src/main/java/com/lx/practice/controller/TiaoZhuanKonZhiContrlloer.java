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
	
	//��ת����ҳ
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
			//���б���
			// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
			nickname = URLDecoder.decode(nickname, "UTF-8");
		    
			// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		    lv1state = URLEncoder.encode(lv1state, "ISO-8859-1");
		 	// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		    lv1state = URLDecoder.decode(lv1state, "UTF-8");
		    
		 // �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		    lv2state = URLEncoder.encode(lv2state, "ISO-8859-1");
		 	// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		    lv2state = URLDecoder.decode(lv2state, "UTF-8");
		    
		 // �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		    lv3state = URLEncoder.encode(lv3state, "ISO-8859-1");
		 	// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		    lv3state = URLDecoder.decode(lv3state, "UTF-8");
		    
		    model.addObject("nickname", nickname);//΢����
		    model.addObject("openid", openid);//΢��id
		    model.addObject("headimgurl", headimgurl);//΢��ͷ��
		    model.addObject("days", days);
		    model.addObject("integral", integral);
		    model.addObject("dateTime", dateTime);
		    model.addObject("lv1state", lv1state);
		    model.addObject("lv2state", lv2state);
		    model.addObject("lv3state", lv3state);
	        model.setViewName("chapter/jingxuantiku");
	        System.out.println("��ת");
	        return model;
	    }
		
		
			//��ת���ҵ�ҳ��
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
					//���б���
					// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
					nickname = URLEncoder.encode(nickname, "ISO-8859-1");
					// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
					nickname = URLDecoder.decode(nickname, "UTF-8");
				    
					// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
				    lv1state = URLEncoder.encode(lv1state, "ISO-8859-1");
				 	// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
				    lv1state = URLDecoder.decode(lv1state, "UTF-8");
				    
				 // �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
				    lv2state = URLEncoder.encode(lv2state, "ISO-8859-1");
				 	// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
				    lv2state = URLDecoder.decode(lv2state, "UTF-8");
				    
				 // �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
				    lv3state = URLEncoder.encode(lv3state, "ISO-8859-1");
				 	// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
				    lv3state = URLDecoder.decode(lv3state, "UTF-8");
				    
				    model.addObject("nickname", nickname);//΢����
				    model.addObject("openid", openid);//΢��id
				    model.addObject("headimgurl", headimgurl);//΢��ͷ��
				    model.addObject("days", days);
				    model.addObject("integral", integral);
				    model.addObject("dateTime", dateTime);
				    model.addObject("lv1state", lv1state);
				    model.addObject("lv2state", lv2state);
				    model.addObject("lv3state", lv3state);
			        model.setViewName("shezhiyezmian/gerenzhoxin");
			        System.out.println("��ת");
			        return model;
			    }
		
			
			//�Ӹ�����Ϣҳ�淵�ظ�������
				@RequestMapping(value="/xinxiyefanhui",method=RequestMethod.GET)
				public ModelAndView xinxiyefanhui(ModelAndView model,HttpServletRequest request,
				    	String  openid
				  	){
						//��ת����ʼҳ��
						//��ѯ���û�������Ϣ
						/*List<UserinFormation> selectuser = gerenxinxiservice.selectuser(openid);*/
						model.addObject("openid", openid);
						/*model.addObject("selectuser", selectuser);*/
				        model.setViewName("shezhiyezmian/gerenzhoxin");
				        System.out.println("��ת");
				        return model;
				    }
				
				
				
				
			//�Ӹ���������ת��������Ϣҳ��
			@RequestMapping(value="/gerenxingxi",method=RequestMethod.GET)
			public ModelAndView index(ModelAndView model,HttpServletRequest request,
			    	String  openid
			  	){
					//��ת����ʼҳ��
					//��ѯ���û�������Ϣ
					/*List<UserinFormation> selectuser = gerenxinxiservice.selectuser(openid);*/
					model.addObject("openid", openid);
					/*model.addObject("selectuser", selectuser);*/
			        model.setViewName("shezhiyezmian/gerenxinxi");
			        System.out.println("��ת");
			        return model;
			    }
				
			
			//�Ӹ���������ת������ҳ��
			@RequestMapping(value="/shezhizhuyemian",method=RequestMethod.GET)
			public ModelAndView shezhi(ModelAndView model,HttpServletRequest request,
			    	String  openid
			  	){
					//��ת����ʼҳ��
					//��ѯ���û�������Ϣ
					/*List<UserinFormation> selectuser = gerenxinxiservice.selectuser(openid);*/
					model.addObject("openid", openid);
					/*model.addObject("selectuser", selectuser);*/
			        model.setViewName("shezhiyezmian/shezhizhuyemian");
			        return model;
			    }
	    
		  //��ת��������ҳ��
			@RequestMapping(value="/zhanghaozhoxin",method=RequestMethod.GET)
			public ModelAndView zhanghaozhoxin(ModelAndView model,HttpServletRequest request,
			    	String  openid
			  	){
					//��ת����ʼҳ��
					//��ѯ���û�������Ϣ
					/*List<UserinFormation> selectuser = gerenxinxiservice.selectuser(openid);*/
					model.addObject("openid", openid);
					/*model.addObject("selectuser", selectuser);*/
			        model.setViewName("shezhiyezmian/zhanghaozhoxin");
			        return model;
			    }
	    
			
		//��ת����ʵ����֤Ҳ��
			@RequestMapping(value="/shimingrenzheng",method=RequestMethod.GET)
			public ModelAndView shimingrenzheng(ModelAndView model,HttpServletRequest request,
			    	String  openid
			  	){
					//��ת����ʼҳ��
					//��ѯ���û�������Ϣ
					/*List<UserinFormation> selectuser = gerenxinxiservice.selectuser(openid);*/
					model.addObject("openid", openid);
					/*model.addObject("selectuser", selectuser);*/
			        model.setViewName("shezhiyezmian/zhanghaozhoxin");
			        return model;
			    }
		
			
}
