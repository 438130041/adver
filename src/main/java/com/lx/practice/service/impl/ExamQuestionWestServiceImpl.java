
package com.lx.practice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lx.practice.dao.ExamQuestionWestDao;
import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.ExamQuestionWestService;
import com.lx.practice.util.DynamicDataSourceHolder;

//根据题型查询题目实现类
@Service
@Transactional
public class ExamQuestionWestServiceImpl implements ExamQuestionWestService{

	@Autowired
	private  ExamQuestionWestDao  QxamQuestionWestDao;
	
	//中药学专业知识一
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByWestEQ'")*/
	public List<ExamQuestion> findByWestEQ() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = QxamQuestionWestDao.findByWestEQ();
		System.out.println("没有走题目缓存就打印我...........");
		return ExamQuestion;
	}

	//药事管理与法规
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByWestFG'")*/
	public List<ExamQuestion> findByWestFG() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = QxamQuestionWestDao.findByWestFG();
		System.out.println("没有走题目缓存就打印我...........");
		return ExamQuestion;
	}

	//中药学专业知识二
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByWestZE'")*/
	public List<ExamQuestion> findByWestZE() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = QxamQuestionWestDao.findByWestZE();
		System.out.println("没有走题目缓存就打印我...........");
		return ExamQuestion;
	}

	//中药学综合知识与技能
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByWestZH'")*/
	public List<ExamQuestion> findByWestZH() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = QxamQuestionWestDao.findByWestZH();
		System.out.println("没有走题目缓存就打印我...........");
		return ExamQuestion;
	}
////////////////查询出题目章节///////////////////////////
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findYXY'")*/
	public List<ExamQuestion> findYXY() {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return QxamQuestionWestDao.findYXY();
	}

	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findYXE'")*/
	public List<ExamQuestion> findYXE() {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return QxamQuestionWestDao.findYXE();
	}

	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findYXZH'")*/
	public List<ExamQuestion> findYXZH() {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return QxamQuestionWestDao.findYXZH();
	}
	
	
	//章节题目查询(西药都用这个，一个方法，通过传入不同的参数查询出不同数据)(所有科目下面的题目都可以使用这个方法)
	@Override//@ Cacheable（key = “'leader'+＃p0 +＃p1 +＃p2” ）一般用法，＃p0表示方法的第一个参数，＃p1表示第二个参数，以此类推。
	/*@Cacheable(value = "redisCacheManager",key = "'findxyzuoti'+ #knowledge_Id")*/
	public List<ExamQuestion> findxyzuoti(String   knowledge_Id){
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return QxamQuestionWestDao.findxyzuoti(knowledge_Id);
	}

}
