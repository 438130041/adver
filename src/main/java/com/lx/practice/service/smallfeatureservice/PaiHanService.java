package com.lx.practice.service.smallfeatureservice;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.DaKa;
import com.lx.practice.entity.General;
import com.lx.practice.entity.LogUser;

@Service
public interface PaiHanService {
			
	
	//查询累计积分排行前三的人
		public  List<LogUser>  findPaiHan();
	
	//查询出积分前一百名
		public  List<LogUser> findPaiHanyibai();
		
	//查出所有排行信息(所有用户信息)
		public LogUser  findPaiHansuoyuo(LogUser  logUser);
		
	//将学员信息录入数据库中
		public   void   insertStudents(LogUser  logUser);
		
	//老师信息验证(专属代码验证)
		public  List<LogUser>  selectlaoshi(LogUser  logUser);
		
	//查询用户打卡图片是否存在
		public  List<LogUser>  finddakauri(LogUser  logUser);
		
	//用户打卡后，将用户打开信息添加进数据库中
		public   void   insertdakaurl(LogUser  logUser); 
		
	//排行榜页面打开，图片存入数据库
		public  void  updatedakaurl(LogUser  logUser);
		
	//同一天多次打卡更改数据
		public  void  updatetonyitian(LogUser  logUser);
		
	//查看今天打卡人数
		public   List<LogUser>  finddaka(String str);
		
		
		//查看数据统计表中的当日打卡人数
		public   List<DaKa>  finddaKatonji(String  str);
		
		//添加当日打卡人数
		public  void  insertdaridakashu(DaKa  daKa);
		
		//更改当日打卡人数数据
		public   void  updatedanridakashu(DaKa  daKa);
		
		//查询出大家打卡的数据
		public    List<LogUser>  dajiadakashuju(LogUser  LogUsers );
		
		
		//查看用户信息
		public  List<LogUser>  insertdaka(String  openid);
		
		//抽奖抽中积分后，根据用户id给用户加积分
		public   void   addintegral(LogUser  logUser);
		
		
		//将用户所中奖存入数据库中去
		public   void    insertzjwupin(LogUser  logUser); 
		
		
		//更改中奖物品状态
		public    void    updatezjwupin(LogUser  logUser);
		
		
		//查看用户中奖纪录
		public   List<LogUser>  insertjilu(LogUser  logUser);
		
		
		//查询出已中奖(所有用户)的记录
		public  List<LogUser>   zhojianjilu();
		
		//更改领奖状态
		public   void  cojianjianpinzhuantai(LogUser  logUser);
		
		//判断手机号表中是否有此手机号
	    public   List<LogUser>   chaxuenshojihao(String   number);
	    
	  //根据openid查询该用户的手机号
	    public   List<LogUser>  sjihaohao(String   openid);
	    
	    //将用户上传的打卡记录图片存入打卡记录表中去
	    public  void  woddakajilu(LogUser  logUser);
	    
	  //查询我的打卡记录
	    public  List<LogUser>  selecttwoddaka(String   openid);
	    
	    
	  //查询出一段图片语句
	    public  List<LogUser>   Pictureidea();
	    
	 
	  //中的是这个课程
	    public   List<LogUser>  sfyiykecheng(LogUser  logUser); 
		
	  //根据代码查询老师代码信息
//	    public   List<LogUser>   laoshidaima(LogUser  logUser);
}
