package com.lx.practice.dao.HuoDongDao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.HuoDongUser;

@Repository
public interface XueLiTuiGuangDao {
		
		
		//查询有没有该推广人记录
	    public   List<HuoDongUser>  selectxuelituiguangren(HuoDongUser  huodonguser);
	  /*  public    List<LogUser>   yonhufind(LogUser  logUser);*/
		
	
		//将推广人信息存入数据库中
	 	public   void   inserttiuguangren(HuoDongUser   huodonguser);   
		
		
	 	//将用户微信信息存入数据库中
	 	public   void   insetwxxinxi(HuoDongUser   huodonguser);
	 	
	 	
}
