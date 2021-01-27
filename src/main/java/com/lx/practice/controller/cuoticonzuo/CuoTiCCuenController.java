package com.lx.practice.controller.cuoticonzuo;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.CuoTiConZuoService.CuoTiConZuoService;
import com.lx.practice.service.LiShiCuoTiService.LiShiCuoTiService;


@Controller
@RequestMapping("/cuoticucuen")
public class CuoTiCCuenController {
	
	@Autowired
	private  CuoTiConZuoService  cuotiConzuoservice;
	
	
	@Autowired  
	private  LiShiCuoTiService   liShiCuoTiService;
	
	//���û�����������ݿ���
		@RequestMapping(value="/cuoticucuen",method=RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> cuoticucuen(HttpServletRequest request,
				ExamQuestion  examQuestion,String   kemu
			 ){
			System.out.println("������ⴢ�淽��");
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//(������Ŀid)��ѯ����Ŀ����
			System.out.println("���ⴢ����Ŀid��"+examQuestion.getQuestions_id());
			List<ExamQuestion> tmuchaxuen = cuotiConzuoservice.tmuchaxuen(examQuestion);
		 	//����Ŀ�����ó���������������
			  //�½���
			/*System.out.println("��Ŀ���ͣ�"+tmuchaxuen.get(0).getQuestions_Type());*/
			
			ExamQuestion  examquestions = new  ExamQuestion();
			examquestions.setOpenid(examQuestion.getOpenid());//΢��id
			examquestions.setKnowledge_Id(examQuestion.getKnowledge_Id());//�½�id
			System.out.println("��Ŀ���ͣ�"+kemu);
			if(kemu.equals("ZYY")){
				examquestions.setParentId("60079614-2c3f-4ef5-a60e-db3c6bb5b2e6");//��Ŀid
			}
			if(kemu.equals("ZYE")){
				examquestions.setParentId("a638780e-40ea-4b24-85c8-b58a1e112ff4");//��Ŀid
			}
			if(kemu.equals("ZYZH")){
				examquestions.setParentId("b54ed4c4-a9ba-405c-8d20-8c0b703e8f4c");//��Ŀid
			}
			if(kemu.equals("YXY")){
				examquestions.setParentId("c9f44130-5ea8-4c99-a9f2-b1da75fc21c6");//��Ŀid
			}
			if(kemu.equals("YXE")){
				examquestions.setParentId("99286489-2d7e-4eaf-8ef2-ed8e6f2f5e31");//��Ŀid
			}
			if(kemu.equals("YXZH")){
				System.out.println("�����½�id");
				examquestions.setParentId("0c1947d3-d248-4fa9-8fb8-36c786b1816b");//��Ŀid
			}
			if(kemu.equals("YS")){
				examquestions.setParentId("148ac965-7a16-4e59-ad28-554fc760afa7");//��Ŀid
			}
			
			examquestions.setQuestions_id(examQuestion.getQuestions_id());//��Ŀid
			examquestions.setKnowledge_Name(tmuchaxuen.get(0).getKnowledge_Name());//�½���
			examquestions.setQuestions_json(tmuchaxuen.get(0).getQuestions_json());//��Ŀ����
			examquestions.setQuestions_Type(tmuchaxuen.get(0).getQuestions_Type());//��Ŀ����
			System.out.println("�½�����"+tmuchaxuen.get(0).getKnowledge_Name());
			//�жϴ��������ʷ��������Ƿ��Ѿ����˸������ݣ���Ϊ�û������ڴ�����ʱ����ͷ��ʼ���⣬�������ڴ�������ʱ���ڴ���һ�Σ�
					//�����û�΢��id����Ŀid��ѯ����������ʷ��������Ƿ��Ѿ����˸�����
			List<ExamQuestion> chaxuencuotisfcuenzai = cuotiConzuoservice.chaxuencuotisfcuenzai(examquestions);    
					//�����û�΢��id����Ŀid��ѯ����ʷ��������Ƿ��Ѿ����˸���Ŀ��Ϣ
			List<ExamQuestion> chaxuenlishicuotisfcuenzai = liShiCuoTiService.chaxuenlishicuotisfcuenzai(examquestions);
			if(chaxuencuotisfcuenzai.size() == 0){//����������û�и���Ŀ���ݣ���ô����Ŀ������ӽ�ȥ
					/*System.out.println("�½�����"+cuotizhangjieshu.get(0).getSortCode());
					System.out.println("�½�����"+cuotizhangjieshu.get(0).getKnowledge_Name());*/
				    examquestions.setTitle_Sum("1");
					cuotiConzuoservice.cuoticuenru(examquestions);//�����ݴ��루�������������ݿ���
			}
			if(chaxuenlishicuotisfcuenzai.size() == 0){//�����ʷ�������û�и���Ŀ���ݣ���ô����Ŀ������ӽ�ȥ
					//��������Ϣ���루��ʷ���⣩��Ϣ����
					examquestions.setTitle_Sum("1");
					cuotiConzuoservice.lishicuoticc(examquestions);
			}
			
			
			//�����½�����ѯ���½ڶ�Ӧ�½�����ȥ�½�����в�ѯ���½�����Ӧ���½�����
			/*System.out.println("parentId��ֵ��"+);*/
			System.out.println("�½�����"+tmuchaxuen.get(0).getKnowledge_Name());
			System.out.println("�½�id��"+examquestions.getParentId());
			List<ExamQuestion> cuotizhangjieshu = cuotiConzuoservice.cuotizhangjieshu(examquestions);
			System.out.println("��ѯ�½�����ѯ���");
			System.out.println("�½�����"+cuotizhangjieshu.get(0).getSortCode());
			examquestions.setSortCode(cuotizhangjieshu.get(0).getSortCode());//�����½���(�ڼ���)(�����½ڱ���)
			//��ѯ��������Ŀ��
			//��ѯ���½����ж��ٵ���Ŀ��������У�
			List<ExamQuestion> cuotizhangjietimushu = cuotiConzuoservice.cuotizhangjietimushu(examQuestion);
			String  title_Sum =  Integer.toString(cuotizhangjietimushu.size());//java��int����ת��ΪString����
			examquestions.setTitle_Sum(title_Sum);//��Ŀ��(���½����ж��ٸ���Ŀ�������½ڱ���)
			//��ѯ�½ڱ�(�����½ڱ�)���Ƿ��Ѿ��и��½�
			List<ExamQuestion> chaxuensfygaizhangjie = cuotiConzuoservice.chaxuensfygaizhangjie(examquestions);
			List<ExamQuestion> lishizhanjietimushu = cuotiConzuoservice.lishizhanjietimushu(examquestions);
			
			if(chaxuensfygaizhangjie.size() == 0){
				//�����û������½���ôֱ�ӽ��½���Ϣ�����ȥ,���½���Ϣ�������ݿ���(ͬһ���½�ֻ�ı��½���Ŀ��)
				System.out.println("�����½���Ϣ");
				cuotiConzuoservice.cuotizhanjiecucuen(examquestions);
				System.out.println("�����½���Ϣ���");
				//��ʷ�����½ڴ���
				cuotiConzuoservice.lishicuotizhanjie(examquestions);
				/*System.out.println("���ݴ���ɹ�");*/
			}
			if(chaxuensfygaizhangjie.size() != 0 && cuotizhangjietimushu.size() >=1 &&  chaxuencuotisfcuenzai.size() == 0){
				//����½ڱ����Ѿ����˸��½���Ϣ����ôֻ��Ҫ�ñ��½���Ϣ����Ŀ���ݣ�������
				int   zhangjiesize =  Integer.parseInt(lishizhanjietimushu.get(0).getTitle_Sum());//�½���Ŀ��
				/*System.out.println("��ʼ�½���Ŀ����"+zhangjiesize);*/
				String  zhangjietitle_Sumlishi =  Integer.toString(zhangjiesize + 1);
				/*System.out.println("���ĺ���½�����Ŀ����"+zhangjietitle_Sumlishi);*/
				examquestions.setTitle_Sum(zhangjietitle_Sumlishi);
				cuotiConzuoservice.cuotizhangjiegengai(examquestions);//�����½��е���Ŀ��
				/*System.out.println("�����½���Ŀ��������");*/
			}
			
			//��ʷ����
			if(chaxuensfygaizhangjie.size() != 0 && cuotizhangjietimushu.size() >=1 &&  chaxuenlishicuotisfcuenzai.size() == 0){
				//��ʷ�����½ڸ���
					//�Ȳ�ѯ��ʷ������и��½ڵ���Ŀ��
				int  size  =   Integer.parseInt(lishizhanjietimushu.get(0).getTitle_Sum());//�½���Ŀ��
				String   title_Sumlishi =  Integer.toString(size + 1);//��ΪֻҪ�����˴˷�����˵������һ��������֣����ֻҪ����ͼ�һ
				examquestions.setTitle_Sum(title_Sumlishi);
				/*examquestions.setTitle_Sum(title_Sum);*/
				 //����ʷ�������Ŀ�����и���(����Ӵ����¼ʱ����ʷ�����е���Ŀ��ֻ����)
				cuotiConzuoservice.lishicuotizhanjiegengai(examquestions);
				/*System.out.println("���ݸ��ĳɹ�");*///
			}
			
			queryMap.put("type", "success");
			return queryMap;
		}
	
		//
		
		//������ϰʱ������û���ԣ��ͽ�������и��û��Ĵ�����Ϣɾ��
		
		@RequestMapping(value="/cuotishanchu",method=RequestMethod.POST)
		@ResponseBody
		public  Map<String,Object>  cuotishanchu(HttpServletRequest request,
				ExamQuestion  examQuestion
				){
			Map<String, Object> queryMap = new HashMap<String, Object>();
			System.out.println("�������ɾ������");
			System.out.println("��ǰ��Ŀid��"+examQuestion.getQuestions_id());
			//��ѯ���½����ж��ٵ���Ŀ
			List<ExamQuestion> cuotizhangjietimushu = cuotiConzuoservice.cuotizhangjietimushu(examQuestion);
			//���ݴ�������΢��id����Ŀidɾ����Ӧ����Ŀ
			cuotiConzuoservice.cuotishanchus(examQuestion);
			ExamQuestion  examquestioncuoti  = new  ExamQuestion();
			int  size = cuotizhangjietimushu.size();
			String  title_Sum =  Integer.toString(size -1);//java��int����ת��ΪString����
			/*if(!title_Sum.equals("0")){*///��ȥ��Ŀ����Ϊ0�������ִ�и����½���Ŀ������
				examquestioncuoti.setTitle_Sum(title_Sum);
				//����ɾ����Ŀ���½�id���ı��½ڱ�����Ŀ��������½��еĴ��������Ѿ�Ϊ0�� ��
				cuotiConzuoservice.cuotizhangjiegengai(examQuestion);
			/*}*/
			
			queryMap.put("type", "success");
			return queryMap;
		}
		 
		
		//ҳ������������
		@RequestMapping(value="/cuotikemu",method=RequestMethod.GET)
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
			    model.setViewName("cuotichonzuo/cuotikemu");
				return model;
		}
		 
}
