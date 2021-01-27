package com.lx.practice.service.impl.TiMuShoCangImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lx.practice.dao.TiMuShoCangDao.TiMuShoCangDao;
import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.TiMuShoCangService.TiMuShoCangService;
import com.lx.practice.util.DynamicDataSourceHolder;

@Service
public class TiMuShoCangImpl implements  TiMuShoCangService{
	
	
	@Autowired
	private   TiMuShoCangDao    timushocangdao;
	
	
	@Override
	public List<ExamQuestion> timushocangZYY(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.timushocangZYY(examQuestion);
	}

	@Override
	public List<ExamQuestion> timushocangZYE(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.timushocangZYE(examQuestion);
	}

	@Override
	public List<ExamQuestion> timushocangZYZH(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.timushocangZYZH(examQuestion);
	}

	@Override
	public List<ExamQuestion> timushocangXYY(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.timushocangXYY(examQuestion);
	}

	@Override
	public List<ExamQuestion> timushocangXYE(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.timushocangXYE(examQuestion);
	}

	@Override
	public List<ExamQuestion> timushocangXYZH(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.timushocangXYZH(examQuestion);
	}

	@Override
	public List<ExamQuestion> timushocangYS(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.timushocangYS(examQuestion);
	}

	@Override
	public List<ExamQuestion> chaxuenshocangfcuenzai(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.chaxuenshocangfcuenzai(examQuestion);
	}

	@Override
	public void shocangtimucucuen(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		timushocangdao.shocangtimucucuen(examQuestion);
	}

	@Override
	public List<ExamQuestion> chaxuneshocnagzhangjiesfyy(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.chaxuneshocnagzhangjiesfyy(examQuestion);
	}

	@Override
	public List<ExamQuestion> chaxuenshocangzhanjiexaitishu(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.chaxuenshocangzhanjiexaitishu(examQuestion);
	}

	@Override
	public void cucuenshocangzhangjiexinxi(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		timushocangdao.cucuenshocangzhangjiexinxi(examQuestion);
	}

	@Override
	public void genggaizhanjietimushulian(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		timushocangdao.genggaizhanjietimushulian(examQuestion);
	}

	@Override
	public List<ExamQuestion> shocangtimu(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.shocangtimu(examQuestion);
	}

	@Override
	public void shanchushocangtimu(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		 timushocangdao.shanchushocangtimu(examQuestion);
	}

	@Override
	public List<ExamQuestion> gengaizhangjietimushu(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.gengaizhangjietimushu(examQuestion);
	}

	@Override
	public List<ExamQuestion> chaxuenshuoyshocangtimu(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return timushocangdao.chaxuenshuoyshocangtimu(examQuestion);
	}


}
