package com.lx.practice.controller.ChapterController;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.lx.practice.entity.ExamQuestion;

@Controller
@RequestMapping("/jingxuanjiexi")
public class JingxuanjiexiController {
	
	
	//��ѡ����Ŀ����
	@RequestMapping(value="/jiexi",method=RequestMethod.GET)
    public ModelAndView jiexi(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="Knowledge_Name")String Knowledge_Name,
    		/*@RequestParam(value="queanswer")String queanswer,
    		@RequestParam(value="answers")String answers,*/
    		@RequestParam(value="int_second")String int_second,
    		@RequestParam(value="knowledge_Id")String knowledge_Id,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="kemuZYHXY")String kemuZYHXY,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="datalength")String datalength,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="correctnumber")String correctnumber,
    		@RequestParam(value="percentage")String percentage,
    		@RequestParam(value="tixing")String tixing,
    		@RequestParam(value="days")String days,
    		@RequestParam(value="dateTime")String dateTime,
    		@RequestParam(value="integral")String integral,
    		@RequestParam(value="lv1state")String lv1state,
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state
    		) throws UnsupportedEncodingException{
		/* ExamQuestion  examQuestion = new   ExamQuestion();*/
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		Knowledge_Name = URLEncoder.encode(Knowledge_Name, "ISO-8859-1");
		// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		Knowledge_Name = URLDecoder.decode(Knowledge_Name, "UTF-8");
		
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		nickname = URLEncoder.encode(nickname, "ISO-8859-1");
		// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		nickname = URLDecoder.decode(nickname, "UTF-8");
		
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
		// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
		
		
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		tixing = URLEncoder.encode(tixing, "ISO-8859-1");
		// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		tixing = URLDecoder.decode(tixing, "UTF-8");
		
		
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
		if (tixing.equals("��ҩ")) {
			 //��ҩѧרҵ֪ʶһ
			if ("��ҩѧרҵ֪ʶһ".equals(Knowledge_Name)) {
				System.out.println("�����ж�");
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("��ҩѧרҵ֪ʶһ");
				String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
				model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
				model.addObject("EQtitle", EQtitle);//����Ŀʵ��������ת����ת��Ϊjson�������ͣ�ǰ̨ҳ��js�н��յ�������ݣ���Ŀ���ͣ����ڽ����ݸ���ajax�󣬽�������ķ���������Ŀ���ݵĲ�ѯ
				/*model.addObject("queanswer", queanswer);
				model.addObject("answers", answers);*/
				model.addObject("int_second", int_second);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("nickname", nickname);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("openid", openid);
				model.addObject("datalength", datalength);
				model.addObject("headimgurl", headimgurl);
				model.addObject("correctnumber", correctnumber);
				model.addObject("percentage", percentage);
				model.addObject("tixing", tixing);
				model.addObject("days", days);
				model.addObject("dateTime", dateTime);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				System.out.println("ָ��·��");
				model.setViewName("chapter/jingxuanjiexi");
				System.out.println("��ת");
			}
			//ҩ�¹����뷨��
			if ("ҩ�¹����뷨��".equals(Knowledge_Name)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("ҩ�¹����뷨��");
				String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
				model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
				model.addObject("EQtitle", EQtitle);
				/*model.addObject("queanswer",queanswer);
				model.addObject("answers",answers);*/
				model.addObject("int_second", int_second);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("nickname", nickname);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("openid", openid);
				model.addObject("datalength", datalength);
				model.addObject("headimgurl", headimgurl);
				model.addObject("correctnumber", correctnumber);
				model.addObject("percentage", percentage);
				model.addObject("tixing", tixing);
				model.addObject("days", days);
				model.addObject("dateTime", dateTime);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.setViewName("chapter/jingxuanjiexi");
			}
			//��ҩѧרҵ֪ʶ��
			if ("��ҩѧרҵ֪ʶ��".equals(Knowledge_Name)) {
				System.out.println("kumu:"+kemuZYHXY);
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("��ҩѧרҵ֪ʶ��");
				String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
				model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
				model.addObject("EQtitle", EQtitle);
				/*model.addObject("queanswer",queanswer);
				model.addObject("answers",answers);*/
				model.addObject("int_second", int_second);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("nickname", nickname);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("openid", openid);
				model.addObject("datalength", datalength);
				model.addObject("headimgurl", headimgurl);
				model.addObject("correctnumber", correctnumber);
				model.addObject("percentage", percentage);
				model.addObject("tixing", tixing);
				model.addObject("days", days);
				model.addObject("dateTime", dateTime);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.setViewName("chapter/jingxuanjiexi");
				System.out.println("��ת������ҳ��");
			}
			//�������ZH��ҩѧ�ۺ�֪ʶ�뼼��
			if ("��ҩѧ�ۺ�֪ʶ�뼼��".equals(Knowledge_Name)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("��ҩѧ�ۺ�֪ʶ�뼼��");
				String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
				model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
				model.addObject("EQtitle", EQtitle);
				/*model.addObject("queanswer",queanswer);
				model.addObject("answers",answers);*/
				model.addObject("int_second", int_second);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("nickname", nickname);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("openid", openid);
				model.addObject("datalength", datalength);
				model.addObject("headimgurl", headimgurl);
				model.addObject("correctnumber", correctnumber);
				model.addObject("percentage", percentage);
				model.addObject("tixing", tixing);
				model.addObject("days", days);
				model.addObject("dateTime", dateTime);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.setViewName("chapter/jingxuanjiexi");
			}

		}
		
		if (tixing.equals("��ҩ")) {
			//��ҩ
			if ("ҩѧרҵ֪ʶһ".equals(Knowledge_Name)) {
				System.out.println("�����ж�");
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("ҩѧרҵ֪ʶһ");
				String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
				model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
				model.addObject("EQtitle", EQtitle);//����Ŀʵ��������ת����ת��Ϊjson�������ͣ�ǰ̨ҳ��js�н��յ�������ݣ���Ŀ���ͣ����ڽ����ݸ���ajax�󣬽�������ķ���������Ŀ���ݵĲ�ѯ
				/*model.addObject("queanswer", queanswer);
				model.addObject("answers", answers);*/
				model.addObject("int_second", int_second);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("nickname", nickname);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("openid", openid);
				model.addObject("datalength", datalength);
				model.addObject("headimgurl", headimgurl);
				model.addObject("correctnumber", correctnumber);
				model.addObject("percentage", percentage);
				model.addObject("tixing", tixing);//��ҩ����ҩ
				model.addObject("days", days);
				model.addObject("dateTime", dateTime);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				System.out.println("ָ��·��");
				model.setViewName("chapter/jingxuanjiexi");
				System.out.println("��ת");
			}
			//ҩ�¹����뷨��
			if ("ҩ�¹����뷨��".equals(Knowledge_Name)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("ҩ�¹����뷨��");
				String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
				model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
				model.addObject("EQtitle", EQtitle);
				/*model.addObject("queanswer",queanswer);
				model.addObject("answers",answers);*/
				model.addObject("int_second", int_second);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("nickname", nickname);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("openid", openid);
				model.addObject("datalength", datalength);
				model.addObject("headimgurl", headimgurl);
				model.addObject("correctnumber", correctnumber);
				model.addObject("percentage", percentage);
				model.addObject("tixing", tixing);
				model.addObject("days", days);
				model.addObject("dateTime", dateTime);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.setViewName("chapter/jingxuanjiexi");
			}
			//��ҩѧרҵ֪ʶ��
			if ("ҩѧרҵ֪ʶ��".equals(Knowledge_Name)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("ҩѧרҵ֪ʶ��");
				String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
				model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
				model.addObject("EQtitle", EQtitle);
			/*	model.addObject("queanswer",queanswer);
				model.addObject("answers",answers);*/
				model.addObject("int_second", int_second);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("nickname", nickname);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("openid", openid);
				model.addObject("datalength", datalength);
				model.addObject("headimgurl", headimgurl);
				model.addObject("correctnumber", correctnumber);
				model.addObject("percentage", percentage);
				model.addObject("tixing", tixing);
				model.addObject("days", days);
				model.addObject("dateTime", dateTime);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.setViewName("chapter/jingxuanjiexi");
			}
			//�������ZH��ҩѧ�ۺ�֪ʶ�뼼��
			if ("ҩѧ�ۺ�֪ʶ�뼼��".equals(Knowledge_Name)) {
				ExamQuestion  examQuestion = new   ExamQuestion();
				examQuestion.setKnowledge_Name("ҩѧ�ۺ�֪ʶ�뼼��");
				String EQtitle  = JSON.toJSONString(examQuestion);//ת��json����
				model.addObject("subList", examQuestion.getKnowledge_Name());//���������Ŀ���ͷ��ظ�ǰ̨��ʾ
				model.addObject("EQtitle", EQtitle);
				/*model.addObject("queanswer",queanswer);
				model.addObject("answers",answers);*/
				model.addObject("int_second", int_second);
				model.addObject("knowledge_Id", knowledge_Id);
				model.addObject("nickname", nickname);
				model.addObject("kemuZYHXY", kemuZYHXY);
				model.addObject("openid", openid);
				model.addObject("datalength", datalength);
				model.addObject("headimgurl", headimgurl);
				model.addObject("correctnumber", correctnumber);
				model.addObject("percentage", percentage);
				model.addObject("tixing", tixing);
				model.addObject("days", days);
				model.addObject("dateTime", dateTime);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				model.setViewName("chapter/jingxuanjiexi");
			}
		}
		
		return model;
    }
	
	
}