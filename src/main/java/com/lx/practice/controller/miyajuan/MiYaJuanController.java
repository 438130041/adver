package com.lx.practice.controller.miyajuan;

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

import com.alibaba.fastjson.JSON;
import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.ExamQuestionService;
import com.lx.practice.service.ExamQuestionWestService;

@Controller
@RequestMapping(value="/miyajuan")
public class MiYaJuanController {
		
		
	@Autowired
	private  ExamQuestionService  examquestionservice;
	
	@Autowired
	private  ExamQuestionWestService  examQuestionWestService;
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/miyajuan",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="kemu")String kemu,
    		@RequestParam(value="knowledge_Id")String knowledge_Id,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="days")String days,
    		@RequestParam(value="kemuZYHXY")String kemuZYHXY,
    		@RequestParam(value="integral")String integral,
    		@RequestParam(value="dateTime")String dateTime,
    		@RequestParam(value="lv1state")String lv1state,
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state
    		) throws UnsupportedEncodingException{
    	  
		  System.out.println("�����½���Ŀ");
		  System.out.println("ѡ��Ŀ�Ŀ��"+kemu);
		
			
			//���б���
			// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		    nickname = URLDecoder.decode(nickname, "UTF-8");
		    
		  //���б���
			// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		    kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		    kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
		    
		    
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
		  
		  
		  //��ת����ʼҳ��
		 //��ҩѧרҵ֪ʶһ
		if ("ZYY".equals(kemu)) {
			  System.out.println("������Ŀ��ѯ");
			ExamQuestion  examQuestion = new   ExamQuestion();
			System.out.println("������̨������idֵ��"+kemu);
			examQuestion.setKnowledge_Name("��ҩѧרҵ֪ʶһ");
			String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
			model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
			model.addObject("EQtitle", EQtitle);//����Ŀʵ��������ת����ת��Ϊjson�������ͣ�ǰ̨ҳ��js�н��յ�������ݣ���Ŀ���ͣ����ڽ����ݸ���ajax�󣬽�������ķ���������Ŀ���ݵĲ�ѯ
			model.addObject("knowledge_Id", knowledge_Id);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("nickname", nickname);
			model.addObject("days", days);
			model.addObject("kemu", kemu);
			model.addObject("kemuZYHXY", kemuZYHXY);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.addObject("kemu", "��ҩ");
			model.setViewName("yati/tfcpracticemiya");
			return model;
		}
		//ҩ�¹����뷨��
		if ("YS".equals(kemu)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("ҩ�¹����뷨��");
			String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
			model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
			model.addObject("EQtitle", EQtitle);
			model.addObject("knowledge_Id", knowledge_Id);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("nickname", nickname);
			model.addObject("days", days);
			model.addObject("kemu", kemu);
			model.addObject("kemuZYHXY", kemuZYHXY);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.addObject("tixing", "��ҩ");
			model.setViewName("yati/tfcpracticemiya");
			return model;
		}
		//��ҩѧרҵ֪ʶ��
		if ("ZYE".equals(kemu)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("��ҩѧרҵ֪ʶ��");
			String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
			model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
			model.addObject("EQtitle", EQtitle);
			model.addObject("knowledge_Id", knowledge_Id);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("nickname", nickname);
			model.addObject("days", days);
			model.addObject("kemu", kemu);
			model.addObject("kemuZYHXY", kemuZYHXY);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.addObject("tixing", "��ҩ");
			model.setViewName("yati/tfcpracticemiya");
			return model;
		}
		//�������ZH��ҩѧ�ۺ�֪ʶ�뼼��
		if ("ZYZH".equals(kemu)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("��ҩѧ�ۺ�֪ʶ�뼼��");
			String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
			model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
			model.addObject("EQtitle", EQtitle);
			model.addObject("knowledge_Id", knowledge_Id);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("nickname", nickname);
			model.addObject("days", days);
			model.addObject("kemu", kemu);
			model.addObject("kemuZYHXY", kemuZYHXY);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.addObject("tixing", "��ҩ");
			model.setViewName("yati/tfcpracticemiya");
			return model;
		}
		///////////////////////��ҩ///////////////////////
		//ҩѧרҵ֪ʶһ
			if ("YXY".equals(kemu)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("ҩѧרҵ֪ʶһ");
				String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
				model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
				model.addObject("EQtitle", EQtitle);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("openid", openid);
				model.addObject("headimgurl", headimgurl);
				model.addObject("nickname", nickname);
				model.addObject("days", days);
				model.addObject("kemu", kemu);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.addObject("tixing", "��ҩ");
				model.setViewName("yati/tfcpracticemiya");
				return model;
			}
			//ҩѧרҵ֪ʶ��
			if ("YXE".equals(kemu)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("ҩѧרҵ֪ʶ��");
				String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
				model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
				model.addObject("EQtitle", EQtitle);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("openid", openid);
				model.addObject("headimgurl", headimgurl);
				model.addObject("nickname", nickname);
				model.addObject("days", days);
				model.addObject("kemu", kemu);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.addObject("tixing", "��ҩ");
				model.setViewName("yati/tfcpracticemiya");
				return model;
			}
			//ҩѧ�ۺ�֪ʶ�뼼��
			if ("YXZH".equals(kemu)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("ҩѧ�ۺ�֪ʶ�뼼��");
				String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
				model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
				model.addObject("EQtitle", EQtitle);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("openid", openid);
				model.addObject("headimgurl", headimgurl);
				model.addObject("nickname", nickname);
				model.addObject("days", days);
				model.addObject("kemu", kemu);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.addObject("tixing", "��ҩ");
				model.setViewName("yati/tfcpracticemiya");
				return model;
			}
		
		return model;
		
    }
	
		
	//ajax��ѯ����Ŀ����
		@RequestMapping(value="/practice",method=RequestMethod.POST)
		@ResponseBody
		public  Map<String, Object>  ajax(ExamQuestion  subList,
				@RequestParam(value="knowledge_Id")String knowledge_Id,
				@RequestParam(value="kemuZYHXY")String kemuZYHXY
				) throws UnsupportedEncodingException{//����Ķ��󣬾�������get�����д���ajax�ĺ�����Ŀ����ʵ�������
			  Map<String, Object> queryMap = new HashMap<String, Object>();
			  
			  
			  return queryMap;
		}	
		
		
}
