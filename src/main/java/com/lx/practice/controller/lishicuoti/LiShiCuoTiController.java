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
	
	
	
	
		//������ʷ�����Ŀѡ��ҳ��
	//ҳ������ʷ����
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
				
				//��������½�
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
		
		
			
			
			
			
			//��������Ŀ�½�ѡ��
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
				 // �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
				 kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
				 	// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
				 kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
				 
				 ExamQuestion  examquestion  = new  ExamQuestion();
				 examquestion.setOpenid(openid);
				 
				 
				 //���ݿ�Ŀid��ѯ��Ӧ���½�id
				 if(kemu.equals("YXY")){
					 List<ExamQuestion> lishicuotizXYY = lishicuotiservice.lishicuotizXYY(examquestion);
					 model.addObject("knowledge_Name", "ҩѧרҵ֪ʶһ");
					 model.addObject("zhangjie", lishicuotizXYY);
					 model.addObject("size", lishicuotizXYY.size());//�½���Ŀ����
				 }
				 if(kemu.equals("YXE")){
					 List<ExamQuestion> lishicuotizXYE = lishicuotiservice.lishicuotizXYE(examquestion);
					 model.addObject("knowledge_Name", "ҩѧרҵ֪ʶ��");
					 model.addObject("zhangjie", lishicuotizXYE);
					 model.addObject("size", lishicuotizXYE.size());//�½���Ŀ����
				 }
				 if(kemu.equals("YXZH")){
					 List<ExamQuestion> lishicuotizXYZH = lishicuotiservice.lishicuotizXYZH(examquestion);
					 model.addObject("knowledge_Name", "ҩѧ�ۺ�֪ʶ�뼼��");
					 model.addObject("zhangjie", lishicuotizXYZH);
					 model.addObject("size", lishicuotizXYZH.size());//�½���Ŀ����
				 }
				 if(kemu.equals("YS")){
					 List<ExamQuestion> lishicuotizYS = lishicuotiservice.lishicuotizYS(examquestion);
					 model.addObject("knowledge_Name", "ҩ�¹����뷨��");
					 model.addObject("zhangjie", lishicuotizYS);
					 model.addObject("size", lishicuotizYS.size());//�½���Ŀ����
				 }
				 if(kemu.equals("ZYY")){
					 List<ExamQuestion> lishicuotizZYY = lishicuotiservice.lishicuotizZYY(examquestion);
					 model.addObject("knowledge_Name", "��ҩѧרҵ֪ʶһ");
					 model.addObject("zhangjie", lishicuotizZYY);
					 model.addObject("size", lishicuotizZYY.size());//�½���Ŀ����
				 }
				 if(kemu.equals("ZYE")){
					 List<ExamQuestion> lishicuotizZYE = lishicuotiservice.lishicuotizZYE(examquestion);
					 model.addObject("knowledge_Name", "��ҩѧרҵ֪ʶ��");
					 model.addObject("zhangjie", lishicuotizZYE);
					 model.addObject("size", lishicuotizZYE.size());//�½���Ŀ����
				 }
				 if(kemu.equals("ZYZH")){
					 List<ExamQuestion> lishicuotizZYZH = lishicuotiservice.lishicuotizZYZH(examquestion);
					 model.addObject("knowledge_Name", "��ҩѧ�ۺ�֪ʶ�뼼��");
					 model.addObject("zhangjie", lishicuotizZYZH);
					 model.addObject("size", lishicuotizZYZH.size());//�½���Ŀ����
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
				 System.out.println("��Ŀ��"+kemu);
				 model.addObject("kemu", kemu);
				 model.setViewName("lishicuoti/lishicuotizhanjie");
				 return model;
			}
			
		
}
