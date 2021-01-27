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



//ÿ��һ����ִҵ��ҩʦ������ҳ��
@Controller
@RequestMapping("/practice")
public class PracticeController {
	
	
	@Autowired
	private  ExamQuestionService  examquestionservice;
	
	//�����û�΢����Ϣ
	@RequestMapping(value="/practice",method=RequestMethod.GET)
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
	    System.out.println("��practice��topic�����̨��΢���ǳƣ�"+nickname);
		//��ת����ʼҳ��
		 //��ҩѧרҵ֪ʶһ
		if ("ZY".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			System.out.println("������̨������idֵ��"+subjectsid);
			examQuestion.setKnowledge_Name("��ҩѧרҵ֪ʶһ");
			String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
			model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
			model.addObject("EQtitle", EQtitle);//����Ŀʵ��������ת����ת��Ϊjson�������ͣ�ǰ̨ҳ��js�н��յ�������ݣ���Ŀ���ͣ����ڽ����ݸ���ajax�󣬽�������ķ���������Ŀ���ݵĲ�ѯ
			
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("system/practice");
			return model;
		}
		//ҩ�¹����뷨��
		if ("FG".equals(subjectsid)) {
			System.out.println("���뷨��");
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
			model.setViewName("system/practice");
			return model;
		}
		//��ҩѧרҵ֪ʶ��
		if ("ZE".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("��ҩѧרҵ֪ʶ��");
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
			model.setViewName("system/practice");
			return model;
		}
		//�������ZH��ҩѧ�ۺ�֪ʶ�뼼��
		if ("ZH".equals(subjectsid)) {
			ExamQuestion  examQuestion = new   ExamQuestion();
			examQuestion.setKnowledge_Name("��ҩѧ�ۺ�֪ʶ�뼼��");
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
			model.setViewName("system/practice");
			return model;
		}
		return model;
		
    }
	
	
	
	@RequestMapping(value="/practice",method=RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object>  ajax(ExamQuestion  subList){//����Ķ��󣬾�������get�����д���ajax�ĺ�����Ŀ����ʵ�������
		Map<String, Object> queryMap = new HashMap<String, Object>();
		/*System.out.println("ʹ��ajax�ص�����");*/
		if ("ҩ�¹����뷨��".equals(subList.getKnowledge_Name())) {//���ж�ʵ��������е���Ŀ��
			System.out.println("��ѯ��������");
			System.out.println("subjectsid��"+subList.getKnowledge_Name());
			List<ExamQuestion>  EQ = examquestionservice.findByFG();//�ô���������Ŀ��������Ŀ���ݵĲ�ѯ
			String EQdata  = JSON.toJSONString(EQ);//����ѯ������Ŀ���ݣ����϶���ת��Ϊjson���ݸ���map���ϣ��ص���ajax
			queryMap.put("datas", EQdata);//ajax�ص��п�����data.key������ȥ��map���� �Ǽ�������ʽ�ó�����map�洢����
			queryMap.put("type", "success");//���ں����ص��ж�
			return queryMap;
		}
		if ("��ҩѧרҵ֪ʶһ".equals(subList.getKnowledge_Name())) {
			/*System.out.println("���������Ŀ��"+EQ.get(0).getQuestions_json());*/
			System.out.println("subjectsid��"+subList.getKnowledge_Name());
			List<ExamQuestion>  EQ = examquestionservice.findByEQ();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		if ("��ҩѧרҵ֪ʶ��".equals(subList.getKnowledge_Name())) {
			/*System.out.println("���������Ŀ��"+EQ.get(0).getQuestions_json());*/
			System.out.println("subjectsid��"+subList.getKnowledge_Name());
			List<ExamQuestion>  EQ = examquestionservice.findByZE();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		if ("��ҩѧ�ۺ�֪ʶ�뼼��".equals(subList.getKnowledge_Name())) {
			/*System.out.println("���������Ŀ��"+EQ.get(0).getQuestions_json());*/
			System.out.println("subjectsid��"+subList.getKnowledge_Name());
			List<ExamQuestion>  EQ = examquestionservice.findByZH();
			String EQdata  = JSON.toJSONString(EQ);
			queryMap.put("datas", EQdata);
			queryMap.put("type", "success");
			return queryMap;
		}
		queryMap.put("type", "error");
		return queryMap;
	}
	
}
