package com.lx.practice.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.ExamQuestion;

//��ҩ��Ŀdao��
@Repository
public interface ExamQuestionWestDao {
	

	//�������е�idȥ��ѯ��Ӧ����Ŀ��ҩ�¹����뷨�棩
		public   List<ExamQuestion>  findByWestFG();

	//�������е�idȥ��ѯ��Ӧ����Ŀ��ҩѧרҵ֪ʶһ��
		public   List<ExamQuestion>  findByWestEQ();
		
	//�������е�idȥ��ѯ��Ӧ����Ŀ��ҩѧרҵ֪ʶ����
		public   List<ExamQuestion>  findByWestZE();

	//�������е�idȥ��ѯ��Ӧ����Ŀ��ҩѧ�ۺ�֪ʶ�뼼�ܣ�
		public   List<ExamQuestion>  findByWestZH();
		
		
		//�½ھ�ѡdao�����
	    //ҩѧרҵ֪ʶһ
	    public  List<ExamQuestion>  findYXY();
	    
	    
	    //ҩѧרҵ֪ʶ��
	    public  List<ExamQuestion>  findYXE();
	    
	    
	    //ҩѧ�ۺ�֪ʶ�뼼��
	    public  List<ExamQuestion>  findYXZH();	
	    
	  //�½���Ŀ��ѯ(��ҩ���������һ��������ͨ�����벻ͬ�Ĳ�����ѯ����ͬ����)
	    public  List<ExamQuestion>  findxyzuoti(String   knowledge_Id);
}
