package com.lx.practice.dao.HuoDongDao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.HuoDongUser;

@Repository
public interface XueLiTuiGuangDao {
		
		
		//��ѯ��û�и��ƹ��˼�¼
	    public   List<HuoDongUser>  selectxuelituiguangren(HuoDongUser  huodonguser);
	  /*  public    List<LogUser>   yonhufind(LogUser  logUser);*/
		
	
		//���ƹ�����Ϣ�������ݿ���
	 	public   void   inserttiuguangren(HuoDongUser   huodonguser);   
		
		
	 	//���û�΢����Ϣ�������ݿ���
	 	public   void   insetwxxinxi(HuoDongUser   huodonguser);
	 	
	 	
}
