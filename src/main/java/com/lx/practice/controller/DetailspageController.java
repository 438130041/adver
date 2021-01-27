package com.lx.practice.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.TopicData;
import com.lx.practice.service.TopicDataService;


//��ת��������ҳ��
@Controller
@RequestMapping(value="/detailspage")
public class DetailspageController {
	
	@Autowired
	private  TopicDataService   topicDataService;
	
	//�����û�΢��
	//��ת��������ҳ��//������Ҫ��������ȷ�ʱ������redis�У�������Ŀ������΢������
	@RequestMapping(value="/detailspage",method=RequestMethod.GET)
	@ResponseBody
    public ModelAndView index(ModelAndView model,HttpServletRequest request,
    		TopicData  topicData,
    		@RequestParam(value="correctnumber")String correctnumber,
		    @RequestParam(value="percentage")String percentage,
		    @RequestParam(value="int_second")String int_second,
    		@RequestParam(value="queanswer")String queanswer,
    		@RequestParam(value="answers")String answers,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="tixing")String tixing,
    		@RequestParam(value="jiexihuidiao")String jiexihuidiao,
    		@RequestParam(value="days")String days,
    		@RequestParam(value="dateTime")String dateTime,
    		@RequestParam(value="integral")String integral,
    		@RequestParam(value="lv1state")String lv1state,
    		@RequestParam(value="lv2state")String lv2state,
    		@RequestParam(value="lv3state")String lv3state
    		) throws UnsupportedEncodingException{
		
		
		System.out.println("��¼������"+days);
		System.out.println("�ж����ݣ�"+jiexihuidiao);
		System.out.println("�ǳƣ�"+nickname);
		if (jiexihuidiao.equals("jiexihuidiao")) {
			System.out.println("�ӽ���ҳ����ת����ҳ��");
			String  Knowledge_Name  = topicData.getKnowledge_Name();
			//���б���
			// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			Knowledge_Name = URLEncoder.encode(Knowledge_Name, "ISO-8859-1");
		    // �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
			Knowledge_Name = URLDecoder.decode(Knowledge_Name, "UTF-8");
				
			//���б���
			// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			tixing = URLEncoder.encode(tixing, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
			tixing = URLDecoder.decode(tixing, "UTF-8");
			//���б���
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
			
			System.out.println("ҩ���ͣ�"+tixing);
			//���б���
			// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		    nickname = URLDecoder.decode(nickname, "UTF-8");
				model.addObject("correctnumber", correctnumber);
				model.addObject("percentage",percentage);//������ȷ��
				model.addObject("int_second", int_second);
				model.addObject("Knowledge_Name",Knowledge_Name);
				model.addObject("name",tixing);
				model.addObject("answers",answers);
				model.addObject("queanswer",queanswer);
				model.addObject("nickname", nickname);
				model.addObject("openid", openid);
				model.addObject("headimgurl", headimgurl);
				model.addObject("days", days);
				model.addObject("dateTime", dateTime);
				model.addObject("integral", integral);
				model.addObject("lv1state", lv1state);
				model.addObject("lv2state", lv2state);
				model.addObject("lv3state", lv3state);
				if(tixing.equals("中药")){
					System.out.println("中药");
					model.setViewName("system/detailspage");
				}
				if(tixing.equals("西药")){
					System.out.println("西药");
					model.setViewName("system/detailspageWest");
				}
		  }else{
			  /*TopicData topicData2 = new TopicData();*/
				/*List<TopicData>  topicDataList = new  ArrayList<TopicData>();*/
				System.out.println("������ҳ�������ת����ҳ��");
			    //��ת����ʼҳ��
				String  Knowledge_Name  = topicData.getKnowledge_Name();
				//���б���
				// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
				Knowledge_Name = URLEncoder.encode(Knowledge_Name, "ISO-8859-1");
			    // �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
				Knowledge_Name = URLDecoder.decode(Knowledge_Name, "UTF-8");
					
				//���б���
				// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
				tixing = URLEncoder.encode(tixing, "ISO-8859-1");
				// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
				tixing = URLDecoder.decode(tixing, "UTF-8");
				
				//���б���
				// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
				nickname = URLEncoder.encode(nickname, "ISO-8859-1");
				// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
			    nickname = URLDecoder.decode(nickname, "UTF-8");
			    System.out.println("�������ǳƣ�"+nickname);
			    
				/*topicData.setKnowledge_Name(Knowledge_Name);*/
			  //���б���
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
			    
			    
			    String  queanswers =  "";//�û�ѡ��Ĵ�
				String  answerss = "";//��ȷ�Ĵ�
				for (int i = 0; i < topicData.getQueanswer().length; i++) {
					if (i < topicData.getQueanswer().length-1) {
						queanswers = queanswers +  topicData.getQueanswer()[i]+",";
					}
					if (i ==  topicData.getQueanswer().length-1) {
						queanswers = queanswers +  topicData.getQueanswer()[i];
					}
				}
				
				for (int i = 0; i < topicData.getAnswers().length; i++) {
					if (i < topicData.getAnswers().length-1) {
						answerss = answerss +  topicData.getAnswers()[i]+",";
					}
					if (i ==  topicData.getAnswers().length-1) {
						answerss = answerss +  topicData.getAnswers()[i];
					}
				}
				//������Ҫ�ж��û�������ʲô���ͣ���ͬ������Ӧ���ò�ͬ�ļ�����redis�У������û���ͬһ��������ϢӦ�ô���ͬһ������
				        
					/*topicDataService.Savefind(user);*///���û�΢����Ϣ�ʹ�����ȷ�ʴ���redis��
					model.addObject("correctnumber", topicData.getCorrectnumber());
					model.addObject("percentage", topicData.getPercentage());//������ȷ��
					model.addObject("int_second", topicData.getInt_second());
					model.addObject("Knowledge_Name",Knowledge_Name);
					model.addObject("name",tixing);
					model.addObject("answers",answerss);
					model.addObject("queanswer",queanswers);
					model.addObject("nickname", nickname);
					model.addObject("openid", openid);
					model.addObject("headimgurl", headimgurl);
					model.addObject("correctnumber", correctnumber);
					model.addObject("percentage",percentage);//������ȷ��
					model.addObject("days", days);
					model.addObject("dateTime", dateTime);
					model.addObject("integral", integral);
					model.addObject("lv1state", lv1state);
					model.addObject("lv2state", lv2state);
					model.addObject("lv3state", lv3state);
					if(tixing.equals("中药")){
						System.out.println("中药");
						model.setViewName("system/detailspage");
					}
					if(tixing.equals("西药")){
						System.out.println("西药");
						model.setViewName("system/detailspageWest");
					}
		  }
		
        return model;
    }
	
	
	
	
}
