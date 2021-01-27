package com.lx.practice.controller.ChapterController;

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


//ִҵ��ҩʦ�����½ڷ���
@Controller
@RequestMapping("/tfcpractice")
public class TfcPracticeController {
	
	@Autowired
	private  ExamQuestionService  examquestionservice;
	
	@Autowired
	private  ExamQuestionWestService  examQuestionWestService;
	//�����û�΢����Ϣ
	@RequestMapping(value="/practice",method=RequestMethod.GET)
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
    		@RequestParam(value="lv3state")String lv3state,
    		String questions_id,
    		String datika
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
		  
		    System.out.println("datika��ֵ��"+datika);
		    
		  
		  //��ת����ʼҳ��
		 //��ҩѧרҵ֪ʶһ
		if ("ZYY".equals(kemu)) {
			System.out.println("������ҩһ�Ŀ�Ŀ��"+kemu);  
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
			model.addObject("datika", datika);
			model.addObject("questions_id", questions_id);
			model.addObject("tixing", "��ҩ");
			model.setViewName("chapter/tfcpractice");
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
			model.addObject("datika", lv3state);
			model.addObject("datika", datika);
			model.addObject("questions_id", questions_id);
			model.addObject("tixing", "��ҩ");
			model.setViewName("chapter/tfcpractice");
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
			model.addObject("datika", datika);
			model.addObject("questions_id", questions_id);
			model.addObject("tixing", "��ҩ");
			model.setViewName("chapter/tfcpractice");
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
			model.addObject("datika", datika);
			model.addObject("questions_id", questions_id);
			model.addObject("tixing", "��ҩ");
			model.setViewName("chapter/tfcpractice");
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
				model.addObject("datika", datika);
				model.addObject("questions_id", questions_id);
				model.addObject("tixing", "��ҩ");
				model.setViewName("chapter/tfcpractice");
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
				model.addObject("datika", datika);
				model.addObject("questions_id", questions_id);
				model.addObject("tixing", "��ҩ");
				model.setViewName("chapter/tfcpractice");
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
				model.addObject("datika", datika);
				model.addObject("questions_id", questions_id);
				model.addObject("tixing", "��ҩ");
				model.setViewName("chapter/tfcpractice");
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
		  /*ExamQuestion examQuestions = new  ExamQuestion();*/
		 /* examQuestions.setKnowledge_Id(knowledge_Id);*///��Ӿ�����
		/*System.out.println("ʹ��ajax�ص�����");*/
		/*//���б���
			// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		    kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		    kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");*/
		  System.out.println("��ҩ����ҩ��"+kemuZYHXY);
		  System.out.println("��������id��"+knowledge_Id);
		 if (kemuZYHXY.equals("��ҩ")) {
			    System.out.println("knowledge_Id��ֵ��"+knowledge_Id);
				List<ExamQuestion>  EQ = examQuestionWestService.findxyzuoti(knowledge_Id);//�ô������½�id������Ŀ���ݵĲ�ѯ
				if (EQ != null && EQ.size() != 0) {
					String EQdata  = JSON.toJSONString(EQ);//����ѯ������Ŀ���ݣ����϶���ת��Ϊjson���ݸ���map���ϣ��ص���ajax
					queryMap.put("datas", EQdata);//ajax�ص��п�����data.key������ȥ��map���� �Ǽ�������ʽ�ó�����map�洢����
					queryMap.put("type", "success");//���ں����ص��ж�
					System.out.println("�ɹ��ص�");
				}else {
					System.out.println("û�в�ѯ������");
					queryMap.put("type", "error");
					System.out.println("ʧ�ܻص�");
				}
		}else if (kemuZYHXY.equals("��ҩ")) {
			System.out.println("��ҩ");
			List<ExamQuestion> EQ = examquestionservice.findzyzuoti(knowledge_Id);
			if (EQ != null && EQ.size() != 0) {
				String EQdata  = JSON.toJSONString(EQ);//����ѯ������Ŀ���ݣ����϶���ת��Ϊjson���ݸ���map���ϣ��ص���ajax
				queryMap.put("datas", EQdata);//ajax�ص��п�����data.key������ȥ��map���� �Ǽ�������ʽ�ó�����map�洢����
				queryMap.put("type", "success");//���ں����ص��ж�
				System.out.println("��ҩ�ɹ��ص�");
			}else {
				System.out.println("û�в�ѯ������");
				queryMap.put("type", "error");
				System.out.println("��ҩʧ�ܻص�");
			}
		
		  }
		   
			return queryMap;
	}
	
	
	
		//������⿨ҳ��
		@RequestMapping(value="/datika",method=RequestMethod.GET)
		@ResponseBody
	    public   ModelAndView   datika(ModelAndView model,HttpServletRequest request,
	    		@RequestParam(value="knowledge_Id")String knowledge_Id,
	    		@RequestParam(value="openid")String openid,
	    		@RequestParam(value="headimgurl")String headimgurl,
	    		@RequestParam(value="nickname")String nickname,
	    		@RequestParam(value="kemuZYHXY")String kemuZYHXY,
	    		@RequestParam(value="kemu")String kemu,
	    		@RequestParam(value="days")String days,
	    		@RequestParam(value="integral")String integral,
	    		@RequestParam(value="dateTime")String dateTime,
	    		@RequestParam(value="lv1state")String lv1state,
	    		@RequestParam(value="lv2state")String lv2state,
	    		@RequestParam(value="lv3state")String lv3state
	    		) throws UnsupportedEncodingException{
			
			//���б���
			// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		    kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		    kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
			
			
			//�����½�id��ѯ����Ӧ������  
			System.out.println("��ת������⿨");
			//�����½�id��ѯ����ͬ���ͣ��������ͣ�
			   //��ѡ��
			List<ExamQuestion> dangxuanti = examquestionservice.dangxuanti(knowledge_Id);
			   //��ѡ��
			List<ExamQuestion> duoxuanti =  examquestionservice.duoxuanti(knowledge_Id);
			  //b����
			List<ExamQuestion> bxingti = examquestionservice.bxingti(knowledge_Id);
			 //�ۺ���
			List<ExamQuestion> zonheti = examquestionservice.zonheti(knowledge_Id);
			//��ѯ�����½��µ�������Ŀ
			/*List<ExamQuestion> chaxuenzhanjieshuoyti = examquestionservice.chaxuenzhanjieshuoyti(knowledge_Id);*/
			
			
			
			int  dangxuantisize = dangxuanti.size();
			int  duoxuantisize = duoxuanti.size();
			int  bxingtisize = bxingti.size();
			int  zonhetisize = zonheti.size();
			int  timushusize = dangxuantisize+duoxuantisize+bxingtisize+zonhetisize;//�ܵ����ݳ���
			
			model.addObject("kemuZYHXY", kemuZYHXY);
			model.addObject("kemu", kemu);
			model.addObject("timushusize", timushusize);
			model.addObject("dangxuanti", dangxuanti);
			model.addObject("duoxuanti", duoxuanti);
			model.addObject("bxingti", bxingti);
			model.addObject("zonheti", zonheti);
			/*model.addObject("chaxuenzhanjieshuoyti", chaxuenzhanjieshuoyti);*/
			model.addObject("knowledge_Id", knowledge_Id);
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("nickname", nickname);
			model.addObject("days", days);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("chapter/datika");
			return model;
		}
	
	
	
}
