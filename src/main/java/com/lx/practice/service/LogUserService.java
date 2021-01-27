package com.lx.practice.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.LogUser;


//用户登录日志service层
@Service
public interface LogUserService {

	public  void  insertuser(LogUser  loguser);//存入用户登录信息
	
	public   List<LogUser>  findbyuser(String openid);//查询用户表中是否有该微信用户信息
	
	public  void  updateuser(LogUser  loguser);//更改用户登录信息(更改登录天数信息)
	
	public  void  findupdateuser(LogUser  loguser);//更改用户所有信息
	
	public  void  updateintegral(LogUser  loguser);//更改用户的积分值
	
	public   List<LogUser>   finduserCode(LogUser  loguser);//根据用户兑换码查询是否有这个兑换码
	
	public void  updateCode(LogUser  loguser);//更改老学员信息
	
	public List<LogUser> findUsers(String openid);//查询出所有用户信息（存入redis中）
	
	public  void updateList1(LogUser  loguser);//用户领取礼物
	
	public  void updateList2(LogUser  loguser);//用户领取礼物
	
	public  void updateList3(LogUser  loguser);//用户领取礼物
	
	
	
	public  void  updataheadimgurl(LogUser  loguser);//添加用户微信头像
	
	
	
    //章节精选用户注册
    public   List<LogUser>  findby(String  openid);
	
	
    public   void  updateList(LogUser  logUser);
    
    
    
	  //将图片存入数据库中
	    
	    public   void   insertimg(LogUser  logusr);
	    
	    
	  //查出图片
	    public   List<LogUser>   findimg(String  openid);  
	    
	    //同一用户更改二维码图片
	    public   void   updataimg(LogUser  logusr);
	    
	    
	    //通过用户手机号查询该用户是否有兑换码
	    public   List<LogUser>  numberquery(LogUser  logusr); 
	    
	    
	    
	    //将手机兑换码中的东西给与该微信用户
	    public   void   updateitems(LogUser  loguser);
	    
	    
	    //将手机兑换码中的数据给与微信用户
	    public   void   updateuseritems(LogUser  loguser);
	    
	    //用户兑换书本后将微信信息你的物品改为空
	    public  void  updatayonhuitems(LogUser  loguser);
	    
	    
	  //通过后台单个添加兑换码
	    public  void  exchangeinsert(LogUser  loguser);
	    
	    
	    
	  //添加用户老师代码(新用户)
	    public  void  insertusercodes(LogUser  loguser);
	    
	    
	    //更改参加打卡活动用户信息
	    public  void  updateusercodes(LogUser  loguser);
}
