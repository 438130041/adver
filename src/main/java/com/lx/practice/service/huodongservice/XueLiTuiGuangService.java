package com.lx.practice.service.huodongservice;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.HuoDongUser;

@Service
public interface XueLiTuiGuangService {
	
	
	//��ѯ��û�и��ƹ��˼�¼
    public   List<HuoDongUser>  selectxuelituiguangren(HuoDongUser  huodonguser);
	
	
	//���ƹ�����Ϣ�������ݿ���
 	public   void   inserttiuguangren(HuoDongUser   huodonguser);   
		
 	
 	
 	//���û�΢����Ϣ�������ݿ���
 	public   void   insetwxxinxi(HuoDongUser   huodonguser);
 	
}
