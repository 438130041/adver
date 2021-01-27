package com.lx.practice.dao.LiShiCuoTiDao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.ExamQuestion;

@Repository
public interface LiShiCuoTiDao {
		
	//查询历史错题章节
		//中药一
		public   List<ExamQuestion>  lishicuotizZYY(ExamQuestion  examQuestion);
	    //中药二
		public   List<ExamQuestion>  lishicuotizZYE(ExamQuestion  examQuestion);
	    //中药综合
		public   List<ExamQuestion>  lishicuotizZYZH(ExamQuestion  examQuestion);
	   //西药一
		public   List<ExamQuestion>  lishicuotizXYY(ExamQuestion  examQuestion);
	   //西药二
		public   List<ExamQuestion>  lishicuotizXYE(ExamQuestion  examQuestion);
	  //西药综合
		public   List<ExamQuestion>  lishicuotizXYZH(ExamQuestion  examQuestion);
	  //法规
		public   List<ExamQuestion>  lishicuotizYS(ExamQuestion  examQuestion);
		
	  //根据微信id和题目id查询历史错题表是否已经存在该题目信息
		public   List<ExamQuestion>  chaxuenlishicuotisfcuenzai(ExamQuestion  examQuestion);
		
		
	//章节题目查询(中药都用这个，一个方法，通过传入不同的参数查询出不同数据)
	  public  List<ExamQuestion>  lishicuotitimu(ExamQuestion  examQuestion);
		
		
		
}
