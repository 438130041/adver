package com.lx.practice.service.impl.LiShiCuoTiImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lx.practice.dao.LiShiCuoTiDao.LiShiCuoTiDao;
import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.LiShiCuoTiService.LiShiCuoTiService;
import com.lx.practice.util.DynamicDataSourceHolder;

@Service
public class LiShiCuoTiImpl implements  LiShiCuoTiService{
	
	
	@Autowired
	private    LiShiCuoTiDao    lishicuoTidao;
	
	
	
	@Override
	public List<ExamQuestion> lishicuotizZYY(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return lishicuoTidao.lishicuotizZYY(examQuestion);
	}

	@Override
	public List<ExamQuestion> lishicuotizZYE(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return lishicuoTidao.lishicuotizZYE(examQuestion);
	}

	@Override
	public List<ExamQuestion> lishicuotizZYZH(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return lishicuoTidao.lishicuotizZYZH(examQuestion);
	}

	@Override
	public List<ExamQuestion> lishicuotizXYY(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return lishicuoTidao.lishicuotizXYY(examQuestion);
	}

	@Override
	public List<ExamQuestion> lishicuotizXYE(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return lishicuoTidao.lishicuotizXYE(examQuestion);
	}

	@Override
	public List<ExamQuestion> lishicuotizXYZH(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return lishicuoTidao.lishicuotizXYZH(examQuestion);
	}

	@Override
	public List<ExamQuestion> lishicuotizYS(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return lishicuoTidao.lishicuotizYS(examQuestion);
	}

	@Override
	public List<ExamQuestion> chaxuenlishicuotisfcuenzai(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return lishicuoTidao.chaxuenlishicuotisfcuenzai(examQuestion);
	}

	@Override
	public List<ExamQuestion> lishicuotitimu(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return lishicuoTidao.lishicuotitimu(examQuestion);
	}

}
