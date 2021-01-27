package com.lx.practice.controller.lishicuoti;

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
import com.lx.practice.service.LiShiCuoTiService.LiShiCuoTiService;


@Controller
@RequestMapping("/lishicuotikemuzhangjie")
public class LiShiCuoTiKeMuZhanJieController {
	
					@Autowired
					private  LiShiCuoTiService  lishicuotiService;
						
					
					@RequestMapping(value="lishicuotikemuzhangjie",method=RequestMethod.GET)
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
							 //ͨ���½�id��ѯ�½���
							 List<ExamQuestion> lishicuotizXYY = lishicuotiService.lishicuotizXYY(examquestion);
							 System.out.println("ҩѧһ�½�ѡ��");
							 model.addObject("knowledge_Name", "ҩѧרҵ֪ʶһ");
							 model.addObject("zhangjie", lishicuotizXYY);
							 model.addObject("size", lishicuotizXYY.size());//�½���Ŀ����
						 }
						 if(kemu.equals("YXE")){
							 List<ExamQuestion> lishicuotizXYE = lishicuotiService.lishicuotizXYE(examquestion);
							 model.addObject("knowledge_Name", "ҩѧרҵ֪ʶ��");
							 model.addObject("zhangjie", lishicuotizXYE);
							 model.addObject("size", lishicuotizXYE.size());//�½���Ŀ����
						 }
						 if(kemu.equals("YXZH")){//
							/* System.out.println("΢��id��"+openid);*/
							 List<ExamQuestion> lishicuotizXYZH = lishicuotiService.lishicuotizXYZH(examquestion);
							 System.out.println("ҩѧ�ۺ��½�ѡ��");
							/* System.out.println("�½�����"+cuotizXYZH.get(0).getKnowledge_Name());*/
							 System.out.println("�½ڳ��ȣ�"+lishicuotizXYZH.size());
							 model.addObject("knowledge_Name", "ҩѧ�ۺ�֪ʶ�뼼��");
							 model.addObject("zhangjie", lishicuotizXYZH);
							 model.addObject("size", lishicuotizXYZH.size());//�½���Ŀ����
						 }
						 if(kemu.equals("YS")){
							 List<ExamQuestion> lishicuotizYS = lishicuotiService.lishicuotizYS(examquestion);
							 model.addObject("knowledge_Name", "ҩ�¹����뷨��");
							 model.addObject("zhangjie", lishicuotizYS);
							 model.addObject("size", lishicuotizYS.size());//�½���Ŀ����
						 }
						 if(kemu.equals("ZYY")){
							 List<ExamQuestion> lishicuotizZYY = lishicuotiService.lishicuotizZYY(examquestion);
							 model.addObject("knowledge_Name", "��ҩѧרҵ֪ʶһ");
							 model.addObject("zhangjie", lishicuotizZYY);
							 model.addObject("size", lishicuotizZYY.size());//�½���Ŀ����
						 }
						 if(kemu.equals("ZYE")){
							 List<ExamQuestion> lishicuotizZYE = lishicuotiService.lishicuotizZYE(examquestion);
							 model.addObject("knowledge_Name", "��ҩѧרҵ֪ʶ��");
							 model.addObject("zhangjie", lishicuotizZYE);
							 model.addObject("size", lishicuotizZYE.size());//�½���Ŀ����
						 }
						 if(kemu.equals("ZYZH")){
							 List<ExamQuestion> lishicuotizZYZH = lishicuotiService.lishicuotizZYZH(examquestion);
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
	
	
	
	
	
						//������벻ͬ���½�
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
								model.addObject("tixing", "��ҩ");
								model.setViewName("lishicuoti/lishicuotitfcpractice");
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
								model.setViewName("lishicuoti/lishicuotitfcpractice");
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
								model.setViewName("lishicuoti/lishicuotitfcpractice");
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
								model.setViewName("lishicuoti/lishicuotitfcpractice");
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
									model.setViewName("lishicuoti/lishicuotitfcpractice");
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
									model.setViewName("lishicuoti/lishicuotitfcpractice");
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
									model.setViewName("lishicuoti/lishicuotitfcpractice");
									return model;
								}
							
							return model;
							
					    }
	
	
	
					//ajax��ѯ����Ŀ����
					@RequestMapping(value="/practice",method=RequestMethod.POST)
					@ResponseBody
					public  Map<String, Object>  ajax(ExamQuestion  subList,
							@RequestParam(value="knowledge_Id")String knowledge_Id,
							@RequestParam(value="kemuZYHXY")String kemuZYHXY,
							@RequestParam(value="openid")String openid
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
						  ExamQuestion   examquestions  =  new  ExamQuestion();
						  examquestions.setKnowledge_Id(knowledge_Id);
						  examquestions.setOpenid(openid);
						if (kemuZYHXY.equals("��ҩ")) {
							    System.out.println("knowledge_Id��ֵ��"+knowledge_Id);
								List<ExamQuestion>  EQ = lishicuotiService.lishicuotitimu(examquestions);//�ô������½�id������Ŀ���ݵĲ�ѯ
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
							List<ExamQuestion> EQ = lishicuotiService.lishicuotitimu(examquestions);
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
	
	
				//�½��п�Ŀ�л���ť
					@RequestMapping(value="/switch",method=RequestMethod.GET)
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
				    		){//
						//��ת����ʼҳ��
						System.out.println("��ת����ʼҳ��");
						 model.addObject("nickname",nickname);
						 model.addObject("openid", openid);
						 model.addObject("headimgurl", headimgurl);
						 model.addObject("days", days);
						 model.addObject("integral", integral);
						 model.addObject("dateTime", dateTime);
						 model.addObject("lv1state", lv1state);
						 model.addObject("lv2state", lv2state);
						 model.addObject("lv3state", lv3state);
						model.setViewName("lishicuoti/lishicuotikemu");
				        System.out.println("��ת");
				        return model;
				    }
		
		
}
