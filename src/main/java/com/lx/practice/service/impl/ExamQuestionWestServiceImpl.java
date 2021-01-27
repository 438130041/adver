
package com.lx.practice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lx.practice.dao.ExamQuestionWestDao;
import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.ExamQuestionWestService;
import com.lx.practice.util.DynamicDataSourceHolder;

//�������Ͳ�ѯ��Ŀʵ����
@Service
@Transactional
public class ExamQuestionWestServiceImpl implements ExamQuestionWestService{

	@Autowired
	private  ExamQuestionWestDao  QxamQuestionWestDao;
	
	//��ҩѧרҵ֪ʶһ
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByWestEQ'")*/
	public List<ExamQuestion> findByWestEQ() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = QxamQuestionWestDao.findByWestEQ();
		System.out.println("û������Ŀ����ʹ�ӡ��...........");
		return ExamQuestion;
	}

	//ҩ�¹����뷨��
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByWestFG'")*/
	public List<ExamQuestion> findByWestFG() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = QxamQuestionWestDao.findByWestFG();
		System.out.println("û������Ŀ����ʹ�ӡ��...........");
		return ExamQuestion;
	}

	//��ҩѧרҵ֪ʶ��
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByWestZE'")*/
	public List<ExamQuestion> findByWestZE() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = QxamQuestionWestDao.findByWestZE();
		System.out.println("û������Ŀ����ʹ�ӡ��...........");
		return ExamQuestion;
	}

	//��ҩѧ�ۺ�֪ʶ�뼼��
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByWestZH'")*/
	public List<ExamQuestion> findByWestZH() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = QxamQuestionWestDao.findByWestZH();
		System.out.println("û������Ŀ����ʹ�ӡ��...........");
		return ExamQuestion;
	}
////////////////��ѯ����Ŀ�½�///////////////////////////
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
	
	
	//�½���Ŀ��ѯ(��ҩ���������һ��������ͨ�����벻ͬ�Ĳ�����ѯ����ͬ����)(���п�Ŀ�������Ŀ������ʹ���������)
	@Override//@ Cacheable��key = ��'leader'+��p0 +��p1 +��p2�� ��һ���÷�����p0��ʾ�����ĵ�һ����������p1��ʾ�ڶ����������Դ����ơ�
	/*@Cacheable(value = "redisCacheManager",key = "'findxyzuoti'+ #knowledge_Id")*/
	public List<ExamQuestion> findxyzuoti(String   knowledge_Id){
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return QxamQuestionWestDao.findxyzuoti(knowledge_Id);
	}

}
