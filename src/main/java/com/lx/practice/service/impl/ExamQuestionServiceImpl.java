package com.lx.practice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lx.practice.dao.ExamQuestionDao;
import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.ExamQuestionService;
import com.lx.practice.util.DynamicDataSourceHolder;

//根据题型查询题目实现类
@Service
@Transactional
public class ExamQuestionServiceImpl implements ExamQuestionService{

	@Autowired
	private  ExamQuestionDao  examquestiondao;
	
	//中药学专业知识一
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByEQ'")*/
	public List<ExamQuestion> findByEQ() {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		System.out.println("查询findByEQ");
		List<ExamQuestion>   ExamQuestion  = examquestiondao.findByEQ();
		System.out.println("没有走题目缓存就打印我...........");
		return ExamQuestion;
	}

	//药事管理与法规
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByFG'")*/
	public List<ExamQuestion> findByFG() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = examquestiondao.findByFG();
		System.out.println("没有走题目缓存就打印我...........");
		return ExamQuestion;
	}

	//中药学专业知识二
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByZE'")*/
	public List<ExamQuestion> findByZE() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = examquestiondao.findByZE();
		System.out.println("没有走题目缓存就打印我...........");
		return ExamQuestion;
	}

	//中药学综合知识与技能
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByZH'")*/
	public List<ExamQuestion> findByZH() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = examquestiondao.findByZH();
		System.out.println("没有走题目缓存就打印我...........");
		return ExamQuestion;
	}
	
	//根据题目id查询出与其对应的题型名
	@Override
/*	@Cacheable(value = "redisCacheManager",key = "'findidList'")*/
	public List<ExamQuestion> findidList() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = examquestiondao.findidList();
		System.out.println("没有走题目缓存就打印我...........");
		return ExamQuestion;
	}

	@Override
	public List<ExamQuestion> findcs() {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.findcs();
	}
	///////////////  章节精选实现层    //////////////////////


	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findZYY'")*/
	public List<ExamQuestion> findZYY() {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.findZYY();
	}

	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findZYE'")*/
	public List<ExamQuestion> findZYE() {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.findZYE();
	}

	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findZYZH'")*/
	public List<ExamQuestion> findZYZH() {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.findZYZH();
	}

	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findYS'")*/
	public List<ExamQuestion> findYS() {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.findYS();
	}
	
	

	//章节题目查询(中药都用这个，一个方法，通过传入不同的参数查询出不同数据)
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findxyzuoti'+ #knowledge_Id")*/
	public List<ExamQuestion> findzyzuoti(String knowledge_Id) {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.findzyzuoti(knowledge_Id);
	}

	
	
	//查询出同一章节下不同的题型
	@Override
	public List<ExamQuestion> dangxuanti(String   knowledge_Id) {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.dangxuanti(knowledge_Id);
	}

	@Override
	public List<ExamQuestion> duoxuanti(String   knowledge_Id) {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.duoxuanti(knowledge_Id);
	}

	@Override
	public List<ExamQuestion> bxingti(String   knowledge_Id) {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.bxingti(knowledge_Id);
	}

	@Override
	public List<ExamQuestion> zonheti(String   knowledge_Id) {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.zonheti(knowledge_Id);
	}

	
	@Override
	public List<ExamQuestion> chaxuenyonhusff(ExamQuestion examquestion) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return examquestiondao.chaxuenyonhusff(examquestion);
	}

	/*@Override
	public List<ExamQuestion> chaxuenzhanjieshuoyti(String knowledge_Id) {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.chaxuenzhanjieshuoyti(knowledge_Id);
	}*/

	
	 
	 
	 
}
