package com.lx.practice.dao.GeRenXinXiDao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.UserinFormation;

@Repository
public interface GeRenXinXiDao {
		
		//���û���Ϣ���������Ϣ����
		public  void  insertgerenxinxi(UserinFormation   userinformation);
		
		//���û����������Ϣʱ����ѯ���û�������Ϣ
		public  List<UserinFormation>  selectuser(String   openid);
		
		
}
