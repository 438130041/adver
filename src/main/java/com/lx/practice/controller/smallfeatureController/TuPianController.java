package com.lx.practice.controller.smallfeatureController;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;

@Controller
@RequestMapping("/urltupian")
public class TuPianController {
			
			
		@Autowired
		private  PaiHanService   paiHanService;
		
		
		
	//���û�ͼƬ�������ݿ�ͬʱ�����û��򿨻��֣������û���ʱ����ۼƴ�����
			@RequestMapping(value="/urltupian",method=RequestMethod.POST)
			@ResponseBody
		    public Map<String, Object> urltupian(ModelAndView model,HttpServletRequest request,LogUser  logUser){
				Map<String, Object> queryMap = new HashMap<String, Object>();
				/*System.out.println("����ͼƬ���淽��");
				System.out.println("Ҫ�����ͼƬ��"+logUser.getDakaurl());
				System.out.println("��ǰ�û�΢��id��"+logUser.getOpenid());*/
				//��ѯ�ô��û���Ϣ���Ƿ����ϴ���ͼƬ
				List<LogUser> finddakauri = paiHanService.finddakauri(logUser);  
				/*System.out.println("��ѯ����ͼƬ���ݣ�"+finddakauri.get(0).getDakaurl());*/
				
				 SimpleDateFormat Wwoddakatime = new SimpleDateFormat("yyyy-MM-dd  HH:mm");
				 LogUser  logUserwoddaka  =  new LogUser();
				 logUserwoddaka.setOpenid(logUser.getOpenid());
				 logUserwoddaka.setNickname(finddakauri.get(0).getNickname());
				 logUserwoddaka.setHeadimgurl(finddakauri.get(0).getHeadimgurl());
				 logUserwoddaka.setDakatime(Wwoddakatime.format(new  Date()));
				 logUserwoddaka.setDakaurl(logUser.getDakaurl());
				 //���û��ϴ���ͼƬ����򿨼�¼����
 				 paiHanService.woddakajilu(logUserwoddaka);
 				 
				if(StringUtils.isEmpty(finddakauri.get(0).getDakaurl())) {//���Ϊ�������
					System.out.println("��һ���ϴ�ͼƬ");
					//���Ϊ�գ�˵��û��ͼƬ��Ϣ�����ǵ�һ�δ�,������Ϣ��ӽ����ݿ���
					 SimpleDateFormat datetime = new SimpleDateFormat("yyyy-MM-dd");
	  	         	 LogUser  logUserinsert  =  new LogUser();
	  	         	 if(finddakauri.get(0).getIntegral() == null ){
	  	         		 /*System.out.println("Ϊ��");*/
	  	         		 logUserinsert.setIntegral(20);//��ʼֵΪ��
	  	         	 }else{
//	  	         		 System.out.println("��Ϊ��");
	  	         		 logUserinsert.setIntegral(finddakauri.get(0).getIntegral()+20);//��һ�μ�20����
	  	         	 }
	  	         	 logUserinsert.setDakatime(datetime.format(new Date()));//�û���ǰ��ʱ��
	  	         	 logUserinsert.setDakatishu(1);//�ۼƻ������
	  	         	 logUserinsert.setDakaurl(logUser.getDakaurl());//���ϴ�ͼƬ
	  	         	 logUserinsert.setOpenid(logUser.getOpenid());//�û�΢��id
	  	         	 logUserinsert.setState(logUser.getState());
	  	         	 System.out.println("��������ӽ�ȥ");
	  	         	 paiHanService.insertdakaurl(logUserinsert);//�����û�΢�����ݣ���Ӵ�ͼƬ����Ӵ�ʱ�䣬���ӻ��֣�
	  	         	 queryMap.put("type", "success");
				}
				if (!StringUtils.isEmpty(finddakauri.get(0).getDakaurl())) {//�����Ϊ�ս�ȥ
					System.out.println("�ϴ����ٴ��ϴ�");
						//�����Ϊ��˵����������ϴ���ͼƬ
					 	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
					 	String   str = date.format(new  Date());//��ʱ������ת��ΪString����
					 	String   strg = str.replace("-","");//ȥ�������ַ�
					 	String   dateTime =str.replace("-","");//ȥ�������ַ�
					 	int    newdates =Integer.parseInt(strg);//����ʱ��ת��Ϊint���͵����ݣ��û���¼ʱ��ʱ�䣩
					 	 //��ѯ���û��ϴε�¼ʱ������
			    		 String  strs  =  finddakauri.get(0).getDakatime();//�û����һ�δ�ʱ��
			    		 //��String���͵�ʱ�����ݼ�ת��Ϊint��������
			    		 String	  strsg = strs.replace("-","");//���һ�δ�ʱ��ȥ�������ַ�
			    		 int  olddates = Integer.parseInt(strsg);
			    		 /*System.out.println("ת��Ϊin�����ݺ�ľɵ�ʱ��ֵ"+olddates);*/
			    		 //�µ�ʱ��ȥ��ȥ�ɵ�ʱ��
			    		 int  k = newdates - olddates;//����ʱ���ȥ���һ�εĴ�ʱ��
			    		 System.out.println("k��ֵ��"+k);
			    		 if(k == 1 || k == 71 || k == 72 || k == 73 || k == 8870){
			    			 //˵���������򿨣�
			    			 LogUser  logUserlianxu  =  new LogUser();
			    			 logUserlianxu.setDakatishu(finddakauri.get(0).getDakatishu()+1);//�ۼƴ�������һ
			    			 logUserlianxu.setDakaurl(logUser.getDakaurl());//���ϴ�ͼƬ
			    			 logUserlianxu.setDakatime(date.format(new  Date()));//�������ʱ�����Ϊ��ǰʱ��
			    			 logUserlianxu.setOpenid(logUser.getOpenid());//����΢���û�id���и���
			    			 logUserlianxu.setState(logUser.getState());
			    			 if (finddakauri.get(0).getDakatishu()+1 == 3) {
								 //����ۼƻ������Ϊ3�죬�����20����
			    				 logUserlianxu.setIntegral(finddakauri.get(0).getIntegral()+40);//������3�����20����
			    				 
							 }else if(finddakauri.get(0).getDakatishu()+1 == 7){
								 logUserlianxu.setIntegral(finddakauri.get(0).getIntegral()+70);//������7�����50����
							 }else {
								 logUserlianxu.setIntegral(finddakauri.get(0).getIntegral()+20);//��һ�μ�20����
							 }
			    			 //��������
			    			 paiHanService.updatedakaurl(logUserlianxu);
			    			 queryMap.put("type", "success");
			    			 
			    		 }
			    		 if (k > 1 && k != 71 && k != 72 && k != 73 && k != 8870){
			    			 //˵�����������μӴ򿨻
			    			 SimpleDateFormat newdate = new SimpleDateFormat("yyyy-MM-dd");
			     			 String   newstr = date.format(new  Date());//��ʱ������ת��ΪString����
			     			 LogUser  logUsersbulianxu  =  new LogUser();
			     			 logUsersbulianxu.setDakatishu(1);//������������Ϊ1
			     			 logUsersbulianxu.setDakaurl(logUser.getDakaurl());//���ϴ�ͼƬ
			     			 logUsersbulianxu.setDakatime(date.format(new  Date()));//��ǰ��ʱ��
			     			 logUsersbulianxu.setOpenid(logUser.getOpenid());//����΢��id���и���
			     			 logUsersbulianxu.setIntegral(finddakauri.get(0).getIntegral() + 20);//�򿨼ӻ���
			     			 logUsersbulianxu.setState(logUser.getState());
			     			 //��������
			     			 paiHanService.updatedakaurl(logUsersbulianxu);
			     			 queryMap.put("type", "success");
			    		 }
			    		 if(k == 0){
			    			 //˵����ͬһ���δ�
			    			 //ͬһ���δ򿨣�ֻ�����ϴ���ͼƬ
			    			 LogUser  logUserstonyitian  =  new LogUser();
			    			 logUserstonyitian.setDakaurl(logUser.getDakaurl());//�û��ϴ���ͼƬ
			    			 logUserstonyitian.setOpenid(logUser.getOpenid());//�û�΢��id
			    			 paiHanService.updatetonyitian(logUserstonyitian);
			    			 queryMap.put("type", "success");
			    		 }
				    }
				
		        return queryMap;
		    }
			
			
			
			/*@RequestMapping(value="/urltupian",method=RequestMethod.GET)
			@ResponseBody
		    public ModelAndView urltupianget(ModelAndView model,HttpServletRequest request,String  openid,String  imageurl){
				
				model.addObject("imageurl", imageurl);
				model.addObject("openid", openid);
				model.setViewName("smallfeature/dakaurl");
		        return model;
		    }*/
			
			
}
