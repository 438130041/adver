package com.lx.practice.service.impl.HoTailmpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lx.practice.dao.HoTaiDao.InformationDao;
import com.lx.practice.entity.LogUser;
import com.lx.practice.service.HoTaiService.InformationService;
import com.lx.practice.util.DynamicDataSourceHolder;

@Service
public class InformationServiceImpl  implements InformationService{

	@Autowired
	private   InformationDao  informationDao;
	
	
	//��ѯ�������û���Ϣ
	@Override
	public List<LogUser> yonhufind(LogUser  logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return informationDao.yonhufind(logUser);
	}

	//��ѯ������������
	@Override
	public Integer orderpt() {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return informationDao.orderpt();
	}

	@Override
	public List<LogUser> finduser(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return informationDao.finduser(logUser);
	}

	@Override
	public List<LogUser> findnickname(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return informationDao.findnickname(logUser);
	}

	@Override
	public List<LogUser> findnumber(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return informationDao.findnumber(logUser);
	}

	@Override
	public List<LogUser> findTeacherCodes(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return informationDao.findTeacherCodes(logUser);
	}

	@Override
	public List<LogUser> jianpinzhuantai(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return informationDao.jianpinzhuantai(logUser);
	}

	@Override
	public List<LogUser> dakahuodonxueyuan(LogUser  logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return informationDao.dakahuodonxueyuan(logUser);
	}

	@Override
	public List<LogUser> jianpinchaxuen(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return informationDao.jianpinchaxuen(logUser);
	}

	@Override
	public Integer zhuanshuorderpt() {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return informationDao.zhuanshuorderpt();
	}


	
	
	
}
