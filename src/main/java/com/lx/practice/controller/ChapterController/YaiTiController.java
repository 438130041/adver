package com.lx.practice.controller.ChapterController;

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
import com.lx.practice.service.ExamQuestionService;
import com.lx.practice.service.ExamQuestionWestService;



@Controller
@RequestMapping("/yati")
public class YaiTiController {
		
	
	@Autowired
	private  ExamQuestionService  examQuestionService;
	
	@Autowired
	private  ExamQuestionWestService  examQuestionWestService;
	
	//�����û���ѡ���ÿ��һ����ѡ��
			@RequestMapping(value="/yati",method=RequestMethod.GET)
		    public  ModelAndView  jingxuantiku(ModelAndView model,HttpServletRequest request,
		    		@RequestParam(value="kemu")String kemu,
		    		@RequestParam(value="kemuZYHXY")String kemuZYHXY,
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
				
				/*System.out.println("�û�΢������"+nickname);*/
				System.out.println("��ѯ���½�");
				System.out.println("ѡ��Ŀ�Ŀ��"+kemu);
				
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
			  //���б���
				// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			    kemuZYHXY = URLEncoder.encode(kemuZYHXY, "ISO-8859-1");
			    // �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
			    kemuZYHXY = URLDecoder.decode(kemuZYHXY, "UTF-8");
			    
			    System.out.println("kemuZYHXY��"+kemuZYHXY);
				
				//���б���
				/*// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
				 nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			    // �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
				 nickname = URLDecoder.decode(nickname, "UTF-8");*/
				//��ѯ����Ŀ�µ��½�
				if("YXY".equals(kemu)){//ҩѧרҵ֪ʶһ
			     List<ExamQuestion> findYXY = examQuestionWestService.findYXY();
					/*model.addObject("nickname", nickname);knowledge_Name
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie", findYXY);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findYXY.size());//�½�����
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("dateTime", dateTime);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "ҩѧרҵ֪ʶһ");
				    model.setViewName("chapter/zhangjie");
				}
				if("YXE".equals(kemu)){//ҩѧרҵ֪ʶ��
					System.out.println("����ҩѧרҵ֪ʶ��");
					List<ExamQuestion> findYXE = examQuestionWestService.findYXE();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findYXE);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findYXE.size());//�½�����
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "ҩѧרҵ֪ʶ��");
				    model.setViewName("chapter/zhangjie");
				}
				if("YXZH".equals(kemu)){//ҩѧ�ۺ�֪ʶ�뼼��
					List<ExamQuestion> findYXZH = examQuestionWestService.findYXZH();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findYXZH);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findYXZH.size());//�½�����
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "ҩѧ�ۺ�֪ʶ�뼼��");
				    model.setViewName("chapter/zhangjie");
				}
				if ("ZYY".equals(kemu)){//��ҩѧרҵ֪ʶһ
					List<ExamQuestion> findZYY = examQuestionService.findZYY();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findZYY);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findZYY.size());//�½�����
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "��ҩѧרҵ֪ʶһ");
				    model.setViewName("chapter/zhangjie");
				}
				if ("ZYE".equals(kemu)){//��ҩѧרҵ֪ʶ��
					List<ExamQuestion> findZYE = examQuestionService.findZYE();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findZYE);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findZYE.size());//�½�����
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "��ҩѧרҵ֪ʶ��");
				    model.setViewName("chapter/zhangjie");
				}
				if ("ZYZH".equals(kemu)){//��ҩѧ�ۺ�֪ʶ�뼼��
					List<ExamQuestion> findYXZH = examQuestionService.findZYZH();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findYXZH);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findYXZH.size());//�½�����
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "��ҩѧ�ۺ�֪ʶ�뼼��");
				    model.setViewName("chapter/zhangjie");
				}
				if ("YS".equals(kemu)){//ҩ�·���
					List<ExamQuestion> findYS = examQuestionService.findYS();
					/*model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);*/
					model.addObject("zhangjie",findYS);
					model.addObject("kemu", kemu);
					model.addObject("openid", openid);
					model.addObject("nickname", nickname);
					model.addObject("headimgurl", headimgurl);
					model.addObject("days", days);
					model.addObject("size", findYS.size());//�½�����
					model.addObject("dateTime", dateTime);
					model.addObject("kemuZYHXY", kemuZYHXY);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					model.addObject("knowledge_Name", "ҩ�¹����뷨��");
				    model.setViewName("chapter/zhangjie");
				}
		        return model;
		    }
	
}
