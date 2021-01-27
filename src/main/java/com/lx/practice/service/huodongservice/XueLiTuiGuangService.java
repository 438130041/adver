package com.lx.practice.service.huodongservice;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.HuoDongUser;

@Service
public interface XueLiTuiGuangService {
	
	
	//查询有没有该推广人记录
    public   List<HuoDongUser>  selectxuelituiguangren(HuoDongUser  huodonguser);
	
	
	//将推广人信息存入数据库中
 	public   void   inserttiuguangren(HuoDongUser   huodonguser);   
		
 	
 	
 	//将用户微信信息存入数据库中
 	public   void   insetwxxinxi(HuoDongUser   huodonguser);
 	
}
