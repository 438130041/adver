package com.lx.practice.service.GeRenXinXiService;


import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.UserinFormation;

@Service
public interface GeRenXinXiService {
		
			//将用户信息存入个人信息表中
			public  void  insertgerenxinxi(UserinFormation   userinformation);
			
			//在用户点击个人信息时，查询出用户个人信息
			public  List<UserinFormation>  selectuser(String   openid);
		
}
