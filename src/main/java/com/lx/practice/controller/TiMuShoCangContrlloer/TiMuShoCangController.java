package com.lx.practice.controller.TiMuShoCangContrlloer;

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
import com.lx.practice.service.TiMuShoCangService.TiMuShoCangService;
import com.sun.tools.classfile.Annotation.element_value;

@Controller
@RequestMapping("/timushocang")
public class TiMuShoCangController {
			
		@Autowired
		private  CuoTiConZuoService  cuotiConzuoservice;
			
		
		@Autowired
		private   TiMuShoCangService  timushocangservice;
		
	
		//�����Ŀ�ղ�ģ�������Ŀѡ��
		@RequestMapping(value="/timushocangkemu",method=RequestMethod.GET)
		public  ModelAndView timushocangkemu(HttpServletRequest request,ModelAndView model,
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
			    model.setViewName("timushocang/timushocangkemu");
				return model;
		}
		
		
		
		@RequestMapping(value="timushocang",method=RequestMethod.POST)
		@ResponseBody
		public   Map<String,Object>   timushocang(HttpServletRequest request,
					ExamQuestion  examQuestion,String   kemu
				){//
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//������Ŀid��ѯ������Ŀ���ݣ�����У�
			List<ExamQuestion> tmuchaxuen = cuotiConzuoservice.tmuchaxuen(examQuestion);
			//���û�΢��id�Լ��½�id����ʵ����
			ExamQuestion  examquestions = new  ExamQuestion();
			examquestions.setOpenid(examQuestion.getOpenid());//΢��id
			examquestions.setKnowledge_Id(examQuestion.getKnowledge_Id());//�½�id
			System.out.println("��Ŀ���ͣ�"+kemu);
			System.out.println("΢��id��"+examQuestion.getOpenid());
			//�ж��ղص���Ŀ����
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
			//����ѯ������Ŀ���ݸ���ʵ����
			examquestions.setQuestions_id(examQuestion.getQuestions_id());//��Ŀid
			examquestions.setKnowledge_Name(tmuchaxuen.get(0).getKnowledge_Name());//�½���
			examquestions.setQuestions_json(tmuchaxuen.get(0).getQuestions_json());//��Ŀ����
			examquestions.setQuestions_Type(tmuchaxuen.get(0).getQuestions_Type());//��Ŀ����
			System.out.println("�½�����"+tmuchaxuen.get(0).getKnowledge_Name());
			//��ѯ�ղر����Ƿ��Ѿ��и���Ŀ����
			List<ExamQuestion> chaxuenshocangfcuenzai = timushocangservice.chaxuenshocangfcuenzai(examquestions);
			if(chaxuenshocangfcuenzai.size() == 0){//����Ϊ0˵������Ŀû���ղع�
				  examquestions.setTitle_Sum("1");//���ø���Ŀ����Ӧ���½�����Ŀ����ʼֵΪ1
				  timushocangservice.shocangtimucucuen(examquestions);//��Ҫ�ղص���Ŀ��Ϣ�������Ŀ�ղؿ���
			}
			//�����½�����ѯ���½ڶ�Ӧ�½�����ȥ�½�����в�ѯ���½�����Ӧ���½�����
			List<ExamQuestion> cuotizhangjieshu = cuotiConzuoservice.cuotizhangjieshu(examquestions);
			System.out.println("�½�����"+cuotizhangjieshu.get(0).getSortCode());
			examquestions.setSortCode(cuotizhangjieshu.get(0).getSortCode());//�����½���(�ڼ���)(�����½ڱ���)
			//��ѯ���½����ж��ٵ���Ŀ���ղ�����У�
			List<ExamQuestion> cuotizhangjietimushu = timushocangservice.chaxuenshocangzhanjiexaitishu(examQuestion);
			String  title_Sum =  Integer.toString(cuotizhangjietimushu.size());//java��int����ת��ΪString����
			examquestions.setTitle_Sum(title_Sum);//��Ŀ��(���½����ж��ٸ���Ŀ�������½ڱ���)
			System.out.println("��Ŀ����"+title_Sum);
			//��ѯ�ղ��½ڱ����Ƿ��Ѿ��и��½�
			List<ExamQuestion> chaxuneshocnagzhangjiesfyy = timushocangservice.chaxuneshocnagzhangjiesfyy(examquestions);
			if(chaxuneshocnagzhangjiesfyy.size() == 0){//
				//����ղ��½ڱ��л�û�и��½���Ϣ�����½���Ϣ�������ݿ���
				timushocangservice.cucuenshocangzhangjiexinxi(examquestions);
				System.out.println("�����½���Ϣ�ɹ�");
			}
			//����ղ��½ڱ����Ѿ����ڸ��½����ݣ���ô�½�����Ŀ����һ
			if(chaxuneshocnagzhangjiesfyy.size() > 0 ||   chaxuneshocnagzhangjiesfyy.size() > 0  && StringUtils.isEmpty(chaxuneshocnagzhangjiesfyy.get(0).getTitle_Sum())){//�����ݿ����ֶ�Ϊ��ʱ���صĲ���null��Ӧ����inEmpty�����ж�
				System.out.println("���ڸ��½����½�������0����½�����Ŀ���Ѿ�Ϊ��");
				if(StringUtils.isEmpty(chaxuneshocnagzhangjiesfyy.get(0).getTitle_Sum())){
					 examquestions.setTitle_Sum("1");
				}else{
					int   zhanjiesize =  Integer.parseInt(chaxuneshocnagzhangjiesfyy.get(0).getTitle_Sum());//�½���Ŀ��
					String   zhangjietitle_Sumlishi = Integer.toString(zhanjiesize + 1);//ת��ΪString��������
					examquestions.setTitle_Sum(zhangjietitle_Sumlishi);//���µ����ݸ���ʵ����
				}
				timushocangservice.genggaizhanjietimushulian(examquestions);//���ĸ��½�����Ŀ������
			}
			queryMap.put("type", "success");//�ɹ���ص�
			return  queryMap;
		}
		
		
		
		//���ȡ���ղغ�ɾ���ղر��еĸ���Ŀ��Ϣ��
		@RequestMapping(value="timushocangshuanchu",method=RequestMethod.POST)
		@ResponseBody
		public   Map<String,Object>   timushocangshuanchu(
					ExamQuestion  examQuestion,String   kemu
				){//
				Map<String, Object> queryMap = new HashMap<String, Object>();
				//ɾ���ղ������ָ����Ŀ
				timushocangservice.shanchushocangtimu(examQuestion);
				//��ѯ��ɾ����Ŀ���ղ�����е���Ŀ��
				List<ExamQuestion> cuotizhangjietimushu = timushocangservice.chaxuenshocangzhanjiexaitishu(examQuestion);
				String  title_Sum =  Integer.toString(cuotizhangjietimushu.size());//java��int����ת��ΪString����
				ExamQuestion  examquestions = new  ExamQuestion();
				examquestions.setTitle_Sum(title_Sum);//��Ŀ��(���½����ж��ٸ���Ŀ�������½ڱ���)
				//�����ղ��½ڱ�����Ŀ��������
				timushocangservice.genggaizhanjietimushulian(examQuestion);
				//�ɹ���ص�
				queryMap.put("type", "success");
				return queryMap;
		    }
		
		
		//���뾫ѡ�������ʱ�Ȳ�ѯ���û����ղؿ��е�������Ŀ�����ڱ���������ղص���Ŀ
		@RequestMapping(value="chaxuenshuoyshocangtimu",method=RequestMethod.POST)
		@ResponseBody
		public  Map<String,Object>  chaxuenshuoyshocangtimu(
						ExamQuestion  examQuestion
				){
			/*System.out.println("΢��id��"+examQuestion.getOpenid());
			System.out.println("��Ŀid:"+examQuestion.getQuestions_id());*/
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//��ѯ���û�����Ŀ�ղ�
			List<ExamQuestion> chaxuenshuoyshocangtimu = timushocangservice.chaxuenshuoyshocangtimu(examQuestion);
			/*System.err.println("���ݳ��ȣ�"+chaxuenshuoyshocangtimu.size());
			System.out.println("��Ŀid��ֵ��"+chaxuenshuoyshocangtimu.get(0).getQuestions_id());
			System.out.println("json��ֵ��"+chaxuenshuoyshocangtimu.get(0).getQuestions_json());*/
			if(chaxuenshuoyshocangtimu.size() >0  &&   !StringUtils.isEmpty(chaxuenshuoyshocangtimu.get(0).getQuestions_json()) ){
				queryMap.put("type", "success");
			}else{
				queryMap.put("type","error");
			}
			return queryMap;
		}
		
		
		
		
		
}
