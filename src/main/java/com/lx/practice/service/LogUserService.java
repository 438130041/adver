package com.lx.practice.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.LogUser;


//�û���¼��־service��
@Service
public interface LogUserService {

	public  void  insertuser(LogUser  loguser);//�����û���¼��Ϣ
	
	public   List<LogUser>  findbyuser(String openid);//��ѯ�û������Ƿ��и�΢���û���Ϣ
	
	public  void  updateuser(LogUser  loguser);//�����û���¼��Ϣ(���ĵ�¼������Ϣ)
	
	public  void  findupdateuser(LogUser  loguser);//�����û�������Ϣ
	
	public  void  updateintegral(LogUser  loguser);//�����û��Ļ���ֵ
	
	public   List<LogUser>   finduserCode(LogUser  loguser);//�����û��һ����ѯ�Ƿ�������һ���
	
	public void  updateCode(LogUser  loguser);//������ѧԱ��Ϣ
	
	public List<LogUser> findUsers(String openid);//��ѯ�������û���Ϣ������redis�У�
	
	public  void updateList1(LogUser  loguser);//�û���ȡ����
	
	public  void updateList2(LogUser  loguser);//�û���ȡ����
	
	public  void updateList3(LogUser  loguser);//�û���ȡ����
	
	
	
	public  void  updataheadimgurl(LogUser  loguser);//����û�΢��ͷ��
	
	
	
    //�½ھ�ѡ�û�ע��
    public   List<LogUser>  findby(String  openid);
	
	
    public   void  updateList(LogUser  logUser);
    
    
    
	  //��ͼƬ�������ݿ���
	    
	    public   void   insertimg(LogUser  logusr);
	    
	    
	  //���ͼƬ
	    public   List<LogUser>   findimg(String  openid);  
	    
	    //ͬһ�û����Ķ�ά��ͼƬ
	    public   void   updataimg(LogUser  logusr);
	    
	    
	    //ͨ���û��ֻ��Ų�ѯ���û��Ƿ��жһ���
	    public   List<LogUser>  numberquery(LogUser  logusr); 
	    
	    
	    
	    //���ֻ��һ����еĶ��������΢���û�
	    public   void   updateitems(LogUser  loguser);
	    
	    
	    //���ֻ��һ����е����ݸ���΢���û�
	    public   void   updateuseritems(LogUser  loguser);
	    
	    //�û��һ��鱾��΢����Ϣ�����Ʒ��Ϊ��
	    public  void  updatayonhuitems(LogUser  loguser);
	    
	    
	  //ͨ����̨������Ӷһ���
	    public  void  exchangeinsert(LogUser  loguser);
	    
	    
	    
	  //����û���ʦ����(���û�)
	    public  void  insertusercodes(LogUser  loguser);
	    
	    
	    //���ĲμӴ򿨻�û���Ϣ
	    public  void  updateusercodes(LogUser  loguser);
}
