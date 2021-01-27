package com.lx.practice.controller;

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
 

//ÿ��һ����ִҵ��ҩʦ��
@Controller
@RequestMapping("/West")
public class WestContrlloer {
	
	
	@Autowired
	private  ExamQuestionWestService  examquestionWestservice;
	
	@Autowired
	private  ExamQuestionService  examquestionservice;
	
	@RequestMapping(value="/West",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request,String  subjectsid,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="days")String days,
    		@RequestParam(value="dateTime")String dateTime,
    		@RequestParam(value="integral")String integral,
    		@RequestParam(value="lv1state")String lv1state,
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state
    		) throws UnsupportedEncodingException{
		/* ExamQuestion  examQuestion = new   ExamQuestion();*/
		
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
		
		//��ת����ʼҳ��
		 //ҩѧרҵ֪ʶһ
		if ("ZY".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			System.out.println("������̨������idֵ��"+subjectsid);
			examQuestion.setKnowledge_Name("ҩѧרҵ֪ʶһ");//������Ŀʵ���࣬��Ŀ����ֵ
			String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
			model.addObject("subList", examQuestion.getKnowledge_Name());//������ĳ���Ŀ���ͷ��ظ�ǰ̨��ʾ
			model.addObject("EQtitle", EQtitle);
			
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("system/Westspractice");
			return model;
		}
		//ҩ�¹����뷨��
		if ("FG".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("ҩ�¹����뷨��");
			String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
			model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
			model.addObject("EQtitle", EQtitle);
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("system/Westspractice");
			return model;
		}
		//ҩѧרҵ֪ʶ��
		if ("ZE".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("ҩѧרҵ֪ʶ��");
			String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
			model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
			model.addObject("EQtitle", EQtitle);
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("system/Westspractice");
			return model;
		}
		//�������ZHҩѧ�ۺ�֪ʶ�뼼��
		if ("ZH".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("ҩѧ�ۺ�֪ʶ�뼼��");
			String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
			model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
			model.addObject("EQtitle", EQtitle);
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("system/Westspractice");
			return model;
		}
		return model;
		
    }
	
	
	
	@RequestMapping(value="/practice",method=RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object>  ajax(ExamQuestion  subList){
		Map<String, Object> queryMap = new HashMap<String, Object>();
		System.out.println("��Ŀ���ͣ�"+subList.getKnowledge_Name());
		if ("ҩ�¹����뷨��".equals(subList.getKnowledge_Name())) {
			/*System.out.println("Westid��"+subList.getKnowledge_Name());*/
			List<ExamQuestion>  EQ = examquestionWestservice.findByWestFG();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		if ("ҩѧרҵ֪ʶһ".equals(subList.getKnowledge_Name())) {
			/*System.out.println("���������Ŀ��"+EQ.get(0).getQuestions_json());*/
			/*System.out.println("Westid��"+subList.getKnowledge_Name());*/
			List<ExamQuestion>  EQ = examquestionWestservice.findByWestEQ();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		if ("ҩѧרҵ֪ʶ��".equals(subList.getKnowledge_Name())) {
			/*System.out.println("���������Ŀ��"+EQ.get(0).getQuestions_json());*/
			/*System.out.println("Westid��"+subList.getKnowledge_Name());*/
			List<ExamQuestion>  EQ = examquestionWestservice.findByWestZE();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		if ("ҩѧ�ۺ�֪ʶ�뼼��".equals(subList.getKnowledge_Name())) {
			/*System.out.println("���������Ŀ��"+EQ.get(0).getQuestions_json());*/
			/*System.out.println("Westid��"+subList.getKnowledge_Name());*/
			List<ExamQuestion>  EQ = examquestionWestservice.findByWestZH();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		queryMap.put("type", "error");
		return queryMap;
	}
	
	
	
}
