package com.lx.practice.service.smallfeatureservice;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.DaKa;
import com.lx.practice.entity.General;
import com.lx.practice.entity.LogUser;

@Service
public interface PaiHanService {
			
	
	//��ѯ�ۼƻ�������ǰ������
		public  List<LogUser>  findPaiHan();
	
	//��ѯ������ǰһ����
		public  List<LogUser> findPaiHanyibai();
		
	//�������������Ϣ(�����û���Ϣ)
		public LogUser  findPaiHansuoyuo(LogUser  logUser);
		
	//��ѧԱ��Ϣ¼�����ݿ���
		public   void   insertStudents(LogUser  logUser);
		
	//��ʦ��Ϣ��֤(ר��������֤)
		public  List<LogUser>  selectlaoshi(LogUser  logUser);
		
	//��ѯ�û���ͼƬ�Ƿ����
		public  List<LogUser>  finddakauri(LogUser  logUser);
		
	//�û��򿨺󣬽��û�����Ϣ��ӽ����ݿ���
		public   void   insertdakaurl(LogUser  logUser); 
		
	//���а�ҳ��򿪣�ͼƬ�������ݿ�
		public  void  updatedakaurl(LogUser  logUser);
		
	//ͬһ���δ򿨸�������
		public  void  updatetonyitian(LogUser  logUser);
		
	//�鿴���������
		public   List<LogUser>  finddaka(String str);
		
		
		//�鿴����ͳ�Ʊ��еĵ��մ�����
		public   List<DaKa>  finddaKatonji(String  str);
		
		//��ӵ��մ�����
		public  void  insertdaridakashu(DaKa  daKa);
		
		//���ĵ��մ���������
		public   void  updatedanridakashu(DaKa  daKa);
		
		//��ѯ����Ҵ򿨵�����
		public    List<LogUser>  dajiadakashuju(LogUser  LogUsers );
		
		
		//�鿴�û���Ϣ
		public  List<LogUser>  insertdaka(String  openid);
		
		//�齱���л��ֺ󣬸����û�id���û��ӻ���
		public   void   addintegral(LogUser  logUser);
		
		
		//���û����н��������ݿ���ȥ
		public   void    insertzjwupin(LogUser  logUser); 
		
		
		//�����н���Ʒ״̬
		public    void    updatezjwupin(LogUser  logUser);
		
		
		//�鿴�û��н���¼
		public   List<LogUser>  insertjilu(LogUser  logUser);
		
		
		//��ѯ�����н�(�����û�)�ļ�¼
		public  List<LogUser>   zhojianjilu();
		
		//�����콱״̬
		public   void  cojianjianpinzhuantai(LogUser  logUser);
		
		//�ж��ֻ��ű����Ƿ��д��ֻ���
	    public   List<LogUser>   chaxuenshojihao(String   number);
	    
	  //����openid��ѯ���û����ֻ���
	    public   List<LogUser>  sjihaohao(String   openid);
	    
	    //���û��ϴ��Ĵ򿨼�¼ͼƬ����򿨼�¼����ȥ
	    public  void  woddakajilu(LogUser  logUser);
	    
	  //��ѯ�ҵĴ򿨼�¼
	    public  List<LogUser>  selecttwoddaka(String   openid);
	    
	    
	  //��ѯ��һ��ͼƬ���
	    public  List<LogUser>   Pictureidea();
	    
	 
	  //�е�������γ�
	    public   List<LogUser>  sfyiykecheng(LogUser  logUser); 
		
	  //���ݴ����ѯ��ʦ������Ϣ
//	    public   List<LogUser>   laoshidaima(LogUser  logUser);
}
