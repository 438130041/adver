package com.lx.practice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.lx.practice.dao.LogUserDao;
import com.lx.practice.entity.LogUser;
import com.lx.practice.service.LogUserService;
import com.lx.practice.util.DynamicDataSourceHolder;

//用户日志存储实现类
@Service
public class LogUserServiceImpl implements LogUserService {
		
	
	@Autowired
	private  LogUserDao   loguserdao;
	
	//存入用户微信信息
	@Override
	public void insertuser(LogUser  loguser) {
        DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.insertuser(loguser);
		
	}
	
	//根据用户微信id查询用户微信信息
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findbyuser'")*/
	public List<LogUser> findbyuser(String openid) {
		 DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return loguserdao.findbyuser(openid);//根据id查询用户微信信息
	}
	
	//更改用户信息
	@Override
	public void updateuser(LogUser loguser) {
		 DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.updateuser(loguser);
	}

	@Override
	public void findupdateuser(LogUser loguser) {
		 DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.findupdateuser(loguser);
	}

	@Override
	public void updateintegral(LogUser  loguser) {
		 DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.updateintegral(loguser);
	}

	@Override
	public  List<LogUser>  finduserCode(LogUser  loguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		return loguserdao.finduserCode(loguser);
	}

	@Override
	public void updateCode(LogUser loguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.updateCode(loguser);
	}
	
	
	//查询出所有用户微信信息
	@Override
	@Cacheable(value = "redisCacheManager",key = "'findUsers'")
	public List<LogUser> findUsers(String openid) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return loguserdao.findUsers(openid);
	}

	@Override
	public void updateList1(LogUser loguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		 loguserdao.updateList1(loguser);
	}

	@Override
	public void updateList2(LogUser loguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		 loguserdao.updateList2(loguser);
	}

	@Override
	public void updateList3(LogUser loguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		 loguserdao.updateList3(loguser);
	}


	@Override
	public List<LogUser> findby(String openid) {
		// TODO Auto-generated method stub
		return loguserdao.findby(openid);
	}

	@Override
	public void updateList(LogUser  logUser) {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		loguserdao.updateList(logUser);
	}

	@Override
	public void insertimg(LogUser  logusr) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.insertimg(logusr);
	}

	@Override
	public List<LogUser> findimg(String codes) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return loguserdao.findimg(codes);
	}

	@Override
	public void updataimg(LogUser logusr) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.updataimg(logusr);
	}

	@Override
	public List<LogUser> numberquery(LogUser  logusr) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return loguserdao.numberquery(logusr);
	}

	@Override
	public void updateitems(LogUser logusr) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.updateitems(logusr);
	}

	@Override
	public void updateuseritems(LogUser loguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.updateuseritems(loguser);
	}

	@Override
	public void updatayonhuitems(LogUser loguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.updatayonhuitems(loguser);
	}

	@Override
	public void exchangeinsert(LogUser loguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.exchangeinsert(loguser);
	}

	@Override
	public void updataheadimgurl(LogUser loguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.updataheadimgurl(loguser);
	}

	@Override
	public void insertusercodes(LogUser loguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.insertusercodes(loguser);
	}

	@Override
	public void updateusercodes(LogUser loguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		loguserdao.updateusercodes(loguser);
	}

	
  
}
