package com.lx.practice.dao.HoTaiDao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.lx.practice.entity.LogUser;

@Repository
public interface InformationDao {
	
	
	//查询出所有用户信息
	public    List<LogUser>   yonhufind(LogUser  logUser);
	
	//查询数据总条数
	public   Integer  orderpt();
	
	//用户姓名模糊查询
	public   List<LogUser>  finduser(LogUser  logUser);
	
	//根据用户微信昵称查询用户信息
	public   List<LogUser>  findnickname(LogUser  logUser);
	
	//根据用户手机号查询用户信息
	public   List<LogUser>  findnumber(LogUser  logUser);
	
	//根据老师专属代码查询出该老师的学员
	public  List<LogUser>    findTeacherCodes(LogUser  logUser);

	//后台学员奖品状态查看
	public   List<LogUser>   jianpinzhuantai(LogUser  logUser);
	
	
	//专属学员数量
   public  Integer  zhuanshuorderpt();
	
	//打卡活动学员(专属学员)查询
	public   List<LogUser>  dakahuodonxueyuan(LogUser  logUser);
	
	//奖品查询
	public  List<LogUser>   jianpinchaxuen(LogUser  logUser);
}
