package com.lx.practice.service.GeRenXinXiService;


import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.UserinFormation;

@Service
public interface GeRenXinXiService {
		
			//���û���Ϣ���������Ϣ����
			public  void  insertgerenxinxi(UserinFormation   userinformation);
			
			//���û����������Ϣʱ����ѯ���û�������Ϣ
			public  List<UserinFormation>  selectuser(String   openid);
		
}
