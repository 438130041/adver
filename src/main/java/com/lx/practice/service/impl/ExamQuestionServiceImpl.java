package com.lx.practice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lx.practice.dao.ExamQuestionDao;
import com.lx.practice.entity.ExamQuestion;
import com.lx.practice.service.ExamQuestionService;
import com.lx.practice.util.DynamicDataSourceHolder;

//�������Ͳ�ѯ��Ŀʵ����
@Service
@Transactional
public class ExamQuestionServiceImpl implements ExamQuestionService{

	@Autowired
	private  ExamQuestionDao  examquestiondao;
	
	//��ҩѧרҵ֪ʶһ
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByEQ'")*/
	public List<ExamQuestion> findByEQ() {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		System.out.println("��ѯfindByEQ");
		List<ExamQuestion>   ExamQuestion  = examquestiondao.findByEQ();
		System.out.println("û������Ŀ����ʹ�ӡ��...........");
		return ExamQuestion;
	}

	//ҩ�¹����뷨��
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByFG'")*/
	public List<ExamQuestion> findByFG() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = examquestiondao.findByFG();
		System.out.println("û������Ŀ����ʹ�ӡ��...........");
		return ExamQuestion;
	}

	//��ҩѧרҵ֪ʶ��
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByZE'")*/
	public List<ExamQuestion> findByZE() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = examquestiondao.findByZE();
		System.out.println("û������Ŀ����ʹ�ӡ��...........");
		return ExamQuestion;
	}

	//��ҩѧ�ۺ�֪ʶ�뼼��
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findByZH'")*/
	public List<ExamQuestion> findByZH() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = examquestiondao.findByZH();
		System.out.println("û������Ŀ����ʹ�ӡ��...........");
		return ExamQuestion;
	}
	
	//������Ŀid��ѯ�������Ӧ��������
	@Override
/*	@Cacheable(value = "redisCacheManager",key = "'findidList'")*/
	public List<ExamQuestion> findidList() {
		// TODO Auto-generated method stub
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		List<ExamQuestion>   ExamQuestion  = examquestiondao.findidList();
		System.out.println("û������Ŀ����ʹ�ӡ��...........");
		return ExamQuestion;
	}

	@Override
	public List<ExamQuestion> findcs() {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.findcs();
	}
	///////////////  �½ھ�ѡʵ�ֲ�    //////////////////////


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
	
	

	//�½���Ŀ��ѯ(��ҩ���������һ��������ͨ�����벻ͬ�Ĳ�����ѯ����ͬ����)
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findxyzuoti'+ #knowledge_Id")*/
	public List<ExamQuestion> findzyzuoti(String knowledge_Id) {
		DynamicDataSourceHolder.setDataSource("jrt_dataSource");
		// TODO Auto-generated method stub
		return examquestiondao.findzyzuoti(knowledge_Id);
	}

	
	
	//��ѯ��ͬһ�½��²�ͬ������
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
