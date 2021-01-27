package com.lx.practice.service.impl.CuoTiConZuoimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lx.practice.dao.CuoTiDao.CuoTiConZuoDao;
import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.CuoTiConZuoService.CuoTiConZuoService;
import com.lx.practice.util.DynamicDataSourceHolder;


@Service
public class CuoTiConZuoImpl  implements  CuoTiConZuoService{
			
	@Autowired
	private    CuoTiConZuoDao    cuoTiconzuodao;

	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'tmuchaxuen'")*/
	public List<ExamQuestion> tmuchaxuen(ExamQuestion examQuestion) {
		System.out.println("进入方法");
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.tmuchaxuen(examQuestion);
	}

	@Override
	public void cuoticuenru(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		cuoTiconzuodao.cuoticuenru(examQuestion);
	}

	@Override
	public void cuotishanchus(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		cuoTiconzuodao.cuotishanchus(examQuestion);
	}

	
	//查询出科目章节
	@Override
	public List<ExamQuestion> cuotizZYY(ExamQuestion  examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.cuotizZYY(examQuestion);
	}

	@Override
	public List<ExamQuestion> cuotizZYE(ExamQuestion  examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.cuotizZYE(examQuestion);
	}

	@Override
	public List<ExamQuestion> cuotizZYZH(ExamQuestion  examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.cuotizZYZH(examQuestion);
	}

	@Override
	public List<ExamQuestion> cuotizXYY(ExamQuestion  examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.cuotizXYY(examQuestion);
	}

	@Override
	public List<ExamQuestion> cuotizXYE(ExamQuestion  examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.cuotizXYE(examQuestion);
	}

	@Override
	public List<ExamQuestion> cuotizXYZH(ExamQuestion  examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.cuotizXYZH(examQuestion);
	}

	@Override
	public List<ExamQuestion> cuotizYS(ExamQuestion  examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.cuotizYS(examQuestion);
	}

	@Override
	public List<ExamQuestion> cuotitimu(ExamQuestion  examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.cuotitimu(examQuestion);
	}

	@Override
	public List<ExamQuestion> cuotizhangjieshu(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.cuotizhangjieshu(examQuestion);
	}

	@Override
	public void cuotizhanjiecucuen(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		 cuoTiconzuodao.cuotizhanjiecucuen(examQuestion);
	}

	@Override
	public void cuotizhangjiegengai(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		cuoTiconzuodao.cuotizhangjiegengai(examQuestion);
	}

	@Override
	public List<ExamQuestion> cuotizhangjietimushu(ExamQuestion  examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.cuotizhangjietimushu(examQuestion);
	}

	@Override
	public List<ExamQuestion> chaxuensfygaizhangjie(ExamQuestion  examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.chaxuensfygaizhangjie(examQuestion);
	}

	@Override
	public void lishicuoticc(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		cuoTiconzuodao.lishicuoticc(examQuestion);
	}

	@Override
	public void lishicuotizhanjie(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		cuoTiconzuodao.lishicuotizhanjie(examQuestion);
	}

	@Override
	public void lishicuotizhanjiegengai(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		cuoTiconzuodao.lishicuotizhanjiegengai(examQuestion);
	}

	@Override
	public List<ExamQuestion> lishizhanjietimushu(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.lishizhanjietimushu(examQuestion);
	}

	@Override
	public List<ExamQuestion> chaxuencuotisfcuenzai(ExamQuestion examQuestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return cuoTiconzuodao.chaxuencuotisfcuenzai(examQuestion);
	}

	
	
}
