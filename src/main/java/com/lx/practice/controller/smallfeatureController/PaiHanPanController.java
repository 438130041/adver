package com.lx.practice.controller.smallfeatureController;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.DaKa;
import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;



//���а��ܿ��Ʋ�
@Controller
@RequestMapping("/paihanban")
public class PaiHanPanController {
	
	@Autowired
	private   PaiHanService   paiHanService;
	
	
	
	//���а�ҳ�����
	@RequestMapping(value="/paihanban",method=RequestMethod.GET)
    public ModelAndView paihanban(ModelAndView model,HttpServletRequest request,String  openid,String  fenxianzhojian,String codes){
		//��ת����ʼҳ��
		/*System.out.println("��ת�����а�ҳ��");
        System.out.println("openid:"+openid);*/
		//��ѯ����������ǰ��������	
		List<LogUser> findPaiHan = paiHanService.findPaiHan();
		//��һ��
		model.addObject("Headimgurl1", findPaiHan.get(0).getHeadimgurl());
		model.addObject("Nickname1", findPaiHan.get(0).getNickname());
		model.addObject("Integral1", findPaiHan.get(0).getIntegral());
		//�ڶ���
		model.addObject("Headimgurl2", findPaiHan.get(1).getHeadimgurl());
		model.addObject("Nickname2", findPaiHan.get(1).getNickname());
		model.addObject("Integral2", findPaiHan.get(1).getIntegral());
		//������
		model.addObject("Headimgurl3", findPaiHan.get(2).getHeadimgurl());
		model.addObject("Nickname3", findPaiHan.get(2).getNickname());
		model.addObject("Integral3", findPaiHan.get(2).getIntegral());
		
		//��ѯ���û�ǰһ����������
		List<LogUser> findPaiHanyibai = paiHanService.findPaiHanyibai();
		
		//��ǰʱ��
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String   str = date.format(new  Date());//��ʱ������ת��ΪString����
		//�鿴�����Ѵ�����
		List<LogUser> finddaka = paiHanService.finddaka(str);
		/*System.out.println("��ѯ����������");
		System.out.println("���ݵĳ��ȣ�"+finddaka.size());*/
	 	String   strg = str.replace("-","");//ȥ�������ַ�
	 	/*int    newdates =Integer.parseInt(strg);*///����ʱ��ת��Ϊint���͵����ݣ��û���¼ʱ��ʱ�䣩
		/*int  dakanumber = 0 */;//��ʼֵΪ0,������
	 	//ѭ������ʱ��
	 	/*for (int i = 0; i < finddaka.size(); i++) {*/
	 		/*System.out.println("����ѭ��");*/
	 		 /*String  strs  =  finddaka.get(i).getDakatime();*///�û����һ�δ�ʱ��
	 		/* System.out.println("��ʱ��strs��"+strs);*/
	 		//��String���͵�ʱ�����ݼ�ת��Ϊint��������
			/* if (!StringUtils.isEmpty(strs)) {*/
				/* String	  strsg = strs.replace("-","");*///���һ�δ�ʱ��ȥ�������ַ�
				/* int  olddates = Integer.parseInt(strsg);*/
		 		 /*System.out.println("olddates:"+olddates);
		 		 System.out.println("newdates:"+newdates);*/
				/* if (olddates  == newdates) {*/
//		 			System.out.println("���бȽ� ");
					//�����ѯ�����Ĵ�ʱ��������ʱ����ͬ��˵����������
		 			/* dakanumber ++;*/
		 			/*System.out.println("dakanumber��ֵ��"+dakanumber);*/
			/*	}
				 
			}
	 		 
		}*/
	 	System.out.println("������dakanumber��"+finddaka.size());
	 	//���մ�����
	 	//ʹ�õ���ʱ��ȥ��ѯ���ݣ��жϵ����Ƿ���ͳ������
	 	List<DaKa> finddaKatonji = paiHanService.finddaKatonji(str);
	 	System.out.println("��ѯ���");
	 	if(finddaKatonji.size() == 0 ){
	 			//˵������û��ͳ������
	 			//��ӽ���ͳ������
	 		System.out.println("ͳ������");
	 		DaKa  daKa = new DaKa();
	 		daKa.setCreateTime(date.format(new  Date()));
	 		daKa.setDaynumbers(finddaka.size());
	 		//��������ӽ�����
	 		paiHanService.insertdaridakashu(daKa);
	 			
	 	 }
	 	if (finddaKatonji.size() != 0 && !finddaKatonji.get(0).getCreateTime().equals("") && !finddaKatonji.get(0).getCreateTime().equals(null)) {
			System.out.println("ͬһ���������");
	 		//�����,˵���Ѿ����˴�������Ѿ�ͳ�ƹ�һ�����ݣ���˽��������Ϊ�µ�����
	 		DaKa  daKa = new DaKa();
	 		daKa.setCreateTime(date.format(new  Date()));
	 		daKa.setDaynumbers(finddaka.size());
	 		//����ͳ������
	 		paiHanService.updatedanridakashu(daKa);
	 		
		}
	 	
	 	System.out.println("��ʼ��ѯ��ǰ�û�����");
		//��ѯ����ǰ�û�����
	 	System.out.println("openid:"+openid);
	 	LogUser   logUser  =  new  LogUser();
	 	logUser.setOpenid(openid);
	 	LogUser findPaiHansuoyuo = paiHanService.findPaiHansuoyuo(logUser);
		System.out.println("��ѯ���");
		List<LogUser> finddakauri = paiHanService.finddakauri(logUser);
		/*System.out.println("ʱ�䣺"+findPaiHansuoyuo.get(0).getDakatime());*/
		/*System.out.println( findPaiHansuoyuo.get(0).getDakatime());*/
		model.addObject("openid", finddakauri.get(0).getOpenid());//id
		model.addObject("headimgurl", finddakauri.get(0).getHeadimgurl());//ͷ��
		model.addObject("nickname", finddakauri.get(0).getNickname());//�ǳ�
		System.out.println("headimgurl:"+ finddakauri.get(0).getNickname()); 
		System.out.println("���");
		 //��ѯ���û��ϴε�¼ʱ������
		 /*String  shijian  =  findPaiHansuoyuo.get(0).getDakatime();*/
		 System.out.println("�ϴε�¼ʱ��");
		 //��String���͵�ʱ�����ݼ�ת��Ϊint��������
		 if (finddakauri.get(0).getDakatime()  != "" && finddakauri.get(0).getDakatime() != null) {//�����Ϊ��
			 System.out.println("����");
			 String	  strsg = finddakauri.get(0).getDakatime().replace("-","");//ȥ�������ַ�
			 if(strsg.equals(strg)){//������
				 //���ʱ����ͬ
				 model.addObject("yidaka", "�����Ѵ�");
			 }else{
				 model.addObject("yidaka", "ǰ��ѧϰ��");
			 }
		}
		if (StringUtils.isEmpty(finddakauri.get(0).getDakatime())) {
			System.out.println("Ϊ��");
			model.addObject("yidaka", "ǰ��ѧϰ��");
		}
		 
		
		model.addObject("dakanumber", finddaka.size());//��ǰ������
	
		/*System.out.println("�������������"+findPaiHansuoyuo.get(0).getDakatishu());
		System.out.println("����������"+findPaiHansuoyuo.get(0).getRownum());*/
		
		model.addObject("shuanxing", "shuanxing");//ˢ��
		System.out.println("׼����ת");
		model.addObject("yonhuheadimgurl", finddakauri.get(0).getHeadimgurl());//�û�ͷ��
		model.addObject("yonhunickname", finddakauri.get(0).getNickname());//�û���
		model.addObject("yonhunintegral", finddakauri.get(0).getIntegral());//�û�����
		model.addObject("yonhunpaiming", findPaiHansuoyuo.getRownum());//�û�����
		model.addObject("yonhunactivityClock", finddakauri.get(0).getDakatishu());//����������
		model.addObject("findPaiHanyibai", findPaiHanyibai);
		model.addObject("fenxianzhojian", fenxianzhojian);
		model.addObject("codes", codes);
		model.setViewName("smallfeature/paihanban");
        System.out.println("��ת");
        return model;
    }
	
	
	//�˵��ҳ��
	@RequestMapping(value="/huodongshuoming",method=RequestMethod.GET)
    public ModelAndView huodongshuoming(ModelAndView model,HttpServletRequest request,String  openid){
		
		
		
		model.addObject("openid", openid);
		model.setViewName("smallfeature/huodonjiesao");
        return model;
    }
	
	
	
}
