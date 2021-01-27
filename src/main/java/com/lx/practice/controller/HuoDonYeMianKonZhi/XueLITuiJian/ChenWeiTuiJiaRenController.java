package com.lx.practice.controller.HuoDonYeMianKonZhi.XueLITuiJian;

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

import com.lx.practice.entity.HuoDongUser;
import com.lx.practice.service.huodongservice.XueLiTuiGuangService;

@Controller
@RequestMapping("/xuelituijianren")
public class ChenWeiTuiJiaRenController {
		
	@Autowired
	private   XueLiTuiGuangService  xuelituiguangservice;
	
	
	 @RequestMapping(value="/chaxuen",method=RequestMethod.POST)
	 @ResponseBody
	    public  Map<String, Object>  chaxuen(ModelAndView model,HttpServletRequest request,HuoDongUser  huodonguser) throws UnsupportedEncodingException{
		 		Map<String, Object> queryMap = new HashMap<String, Object>();
		 		 System.out.println("openid:"+huodonguser.getOpenid());
		 		 
		 		/*System.out.println("�����̨��ѯ");
		 		System.out.println("id��ֵ��"+huodonguser.getOpenid());*/
		 		//��ѯ���ݿ����Ƿ��и��ƹ�����Ϣ
		 		List<HuoDongUser> selectxuelituiguangren = xuelituiguangservice.selectxuelituiguangren(huodonguser);
		 		System.out.println("���ݳ��ȣ�"+selectxuelituiguangren.size());
		 		if(selectxuelituiguangren.size() >= 1){//������
		 			System.out.println("������");
			 		queryMap.put("type", "success");
		 		}
		 		if(selectxuelituiguangren.size() == 0){
		 			queryMap.put("type", "error");
		 		}
		 		return queryMap;
	    }
	
	
	
	 @RequestMapping(value="/xuelituijianren",method=RequestMethod.POST)
	 @ResponseBody
	    public  Map<String, Object>  xuelituijian(ModelAndView model,HttpServletRequest request,HuoDongUser  huodonguser) throws UnsupportedEncodingException{
		 		Map<String, Object> queryMap = new HashMap<String, Object>();
		 		/*System.out.println("�����̨��ѯ");
		 		System.out.println("id��ֵ��"+huodonguser.getOpenid());*/
		 		//��ѯ���ݿ����Ƿ��и��ƹ�����Ϣ
		 		List<HuoDongUser> selectxuelituiguangren = xuelituiguangservice.selectxuelituiguangren(huodonguser);
		 		if(selectxuelituiguangren.size() == 0){//û������
		 			System.out.println("�����ݴ���");
		 			//���Ƽ��˵���Ϣ�������ݿ���
			 		xuelituiguangservice.inserttiuguangren(huodonguser);
			 		queryMap.put("type", "success");
		 		}
		 		if(selectxuelituiguangren.size() >0){
		 			System.out.println("�Ѿ�������");
		 			queryMap.put("type", "error");
		 		}
		 		return queryMap;
	    }
		
		
		
	 
	 //�ص��������¸�ҳ��
	 @RequestMapping(value="/zufenxiang",method=RequestMethod.GET)
	 @ResponseBody
	    public ModelAndView yaoqinhaoyxianshi(ModelAndView model,HttpServletRequest request,
	    		@RequestParam(value="nickname")String nickname,
	    		@RequestParam(value="openid")String openid,
	    		@RequestParam(value="headimgurl")String headimgurl
	    		) throws UnsupportedEncodingException{
		 System.out.println("��ת");
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
			nickname = URLDecoder.decode(nickname, "UTF-8");
		 
			model.addObject("openid", openid);
			model.addObject("nickname", nickname);
			model.addObject("headimgurl", headimgurl);
			model.setViewName("huodongyemian/xuelituijian/zufenxiang");
		 	return model;
	    }
	 
	 
	 
	 //��������ҳ��
	 @RequestMapping(value="/tixian",method=RequestMethod.GET)
	 @ResponseBody
	    public ModelAndView tixian(ModelAndView model,HttpServletRequest request,
	    		@RequestParam(value="nickname")String nickname,
	    		@RequestParam(value="openid")String openid,
	    		@RequestParam(value="headimgurl")String headimgurl,
	    		@RequestParam(value="yue")String yue,
	    		@RequestParam(value="total")String total
	    		) throws UnsupportedEncodingException{
		 System.out.println("��ת");
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
			nickname = URLDecoder.decode(nickname, "UTF-8");
		 
			model.addObject("openid", openid);
			model.addObject("nickname", nickname);
			model.addObject("headimgurl", headimgurl);
			model.addObject("yue", yue);
			model.addObject("total", total);
			model.setViewName("huodongyemian/xuelituijian/zutixian");
		 	return model;
	    }
	 
	 
	 
	 
	 
	 //ѧ������ҳ��
	 @RequestMapping(value="/zuxiangqing",method=RequestMethod.GET)
	 @ResponseBody
	 public ModelAndView zuxiangqing(ModelAndView model,HttpServletRequest request,
	    		String nickname,
	    		String openid,
	    		String headimgurl
	    		) throws UnsupportedEncodingException{
		 System.out.println("openid:"+openid);
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
			nickname = URLDecoder.decode(nickname, "UTF-8");
		 
			model.addObject("openid", openid);
			model.addObject("nickname", nickname);
			model.addObject("headimgurl", headimgurl);
			
			model.setViewName("huodongyemian/xuelituijian/zuxiangqing");
		 	return model;
	    }
	 
	 
	 
	 //��רѧ������ҳ��
	 @RequestMapping(value="/zuzhozhuang",method=RequestMethod.GET)
	 @ResponseBody
	 public ModelAndView zuzhozhuang(ModelAndView model,HttpServletRequest request,
	    		String nickname,
	    		String openid,
	    		String headimgurl
	    		) throws UnsupportedEncodingException{
		 System.out.println("openid:"+openid);
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
			nickname = URLDecoder.decode(nickname, "UTF-8");
		 
			model.addObject("openid", openid);
			model.addObject("nickname", nickname);
			model.addObject("headimgurl", headimgurl);
			
			model.setViewName("huodongyemian/xuelituijian/zhongzhuanpage");
		 	return model;
	    }
	 
	 
	 
	//��רѧ������ҳ��
		 @RequestMapping(value="/zudazhuang",method=RequestMethod.GET)
		 @ResponseBody
		 public ModelAndView zudazhuang(ModelAndView model,HttpServletRequest request,
		    		String nickname,
		    		String openid,
		    		String headimgurl
		    		) throws UnsupportedEncodingException{
			    System.out.println("openid:"+openid);
			  // �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
				nickname = URLEncoder.encode(nickname, "ISO-8859-1");
				// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
				nickname = URLDecoder.decode(nickname, "UTF-8");
			 
				model.addObject("openid", openid);
				model.addObject("nickname", nickname);
				model.addObject("headimgurl", headimgurl);
				
				model.setViewName("huodongyemian/xuelituijian/dazhuanpage");
			 	return model;
		    }
	 
		 
		 
		 
}
