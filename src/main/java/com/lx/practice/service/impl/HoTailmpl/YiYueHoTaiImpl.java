package com.lx.practice.service.impl.HoTailmpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lx.practice.dao.HoTaiDao.YiYueHoTaiDao;
import com.lx.practice.entity.HuoDongUser;
import com.lx.practice.service.HoTaiService.YiYueHoTaiService;
import com.lx.practice.util.DynamicDataSourceHolder;
import com.sun.tools.javac.util.List;

@Service
public class YiYueHoTaiImpl implements  YiYueHoTaiService{
	
	@Autowired
	private  YiYueHoTaiDao  yiyuehotaidao;

	@Override
	public List<HuoDongUser> selecttuiguangren(HuoDongUser huodonguser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return yiyuehotaidao.selecttuiguangren(huodonguser);
	}
	
	
	
	
		
}
