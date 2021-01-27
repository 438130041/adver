package com.lx.practice.dao.GeRenXinXiDao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.UserinFormation;

@Repository
public interface GeRenXinXiDao {
		
		//将用户信息存入个人信息表中
		public  void  insertgerenxinxi(UserinFormation   userinformation);
		
		//在用户点击个人信息时，查询出用户个人信息
		public  List<UserinFormation>  selectuser(String   openid);
		
		
}
