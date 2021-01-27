package com.lx.practice.service.impl.HuoDongImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lx.practice.dao.HuoDongDao.XueLiTuiGuangDao;
import com.lx.practice.entity.HuoDongUser;
import com.lx.practice.service.huodongservice.XueLiTuiGuangService;
import com.lx.practice.util.DynamicDataSourceHolder;

@Service
public class XueLiTuiGuangImpl implements  XueLiTuiGuangService{
	
	
	@Autowired
	private   XueLiTuiGuangDao  xuelituiguangdao;
	
		
	@Override
	public void inserttiuguangren(HuoDongUser huodonguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		xuelituiguangdao.inserttiuguangren(huodonguser);
	}


	@Override
	public List<HuoDongUser> selectxuelituiguangren(HuoDongUser huodonguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		System.out.println("¿ªÊ¼²éÑ¯");
		// TODO Auto-generated method stub
		return xuelituiguangdao.selectxuelituiguangren(huodonguser);
	}


	@Override
	public void insetwxxinxi(HuoDongUser huodonguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		xuelituiguangdao.insetwxxinxi(huodonguser);
	}
		
		
		
		
}
