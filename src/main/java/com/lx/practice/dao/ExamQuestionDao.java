package com.lx.practice.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.ExamQuestion;

//��Ŀdao��
@Repository
public interface ExamQuestionDao {
	
	//�������е�idȥ��ѯ��Ӧ����Ŀ��ҩ�¹����뷨�棩
		public   List<ExamQuestion>  findByFG();

	//�������е�idȥ��ѯ��Ӧ����Ŀ����ҩѧרҵ֪ʶһ��
		public   List<ExamQuestion>  findByEQ();
		
	//�������е�idȥ��ѯ��Ӧ����Ŀ����ҩѧרҵ֪ʶ����
		public   List<ExamQuestion>  findByZE();

	//�������е�idȥ��ѯ��Ӧ����Ŀ����ҩѧ�ۺ�֪ʶ�뼼�ܣ�
		public   List<ExamQuestion>  findByZH();
		
	//������Ŀid��ѯ�������Ӧ������
		public  List<ExamQuestion>  findidList();
		
    //����b����
	    public  List<ExamQuestion>  findcs();
	    
	    
	//�½ھ�ѡdao�����
	    
	    //��ҩѧרҵ֪ʶһ
	    public  List<ExamQuestion>  findZYY();
	    
	    
	    //��ҩѧרҵ֪ʶ��
	    public  List<ExamQuestion>  findZYE();
	    
	    
	    //��ҩѧ�ۺ�֪ʶ�뼼��
	    public  List<ExamQuestion>  findZYZH();
	    
	    
	    //ҩ�¹����뷨��
	    public  List<ExamQuestion>  findYS();
	    
	//�½���Ŀ��ѯ(��ҩ���������һ��������ͨ�����벻ͬ�Ĳ�����ѯ����ͬ����)
	    public  List<ExamQuestion>  findzyzuoti(String   knowledge_Id);
	    
	    
	    //�����½�id��ѯ����Ŀ��ɸѡ����ͬ����
	      //��ѡ��
	    public   List<ExamQuestion>  dangxuanti(String   knowledge_Id);
	    
	      //��ѡ��
	    public   List<ExamQuestion>  duoxuanti(String   knowledge_Id);
	    
	      //b����
	    public   List<ExamQuestion>  bxingti(String   knowledge_Id);
	    
	     //�ۺ���
	    public   List<ExamQuestion>  zonheti(String   knowledge_Id);
	    
	   //��ѯ��ĳ���½��µ�������Ŀ
	    /*public   List<ExamQuestion>  chaxuenzhanjieshuoyti(String   knowledge_Id);*/
	    
	    
	   //��ѯ�û��Ƿ��Ѿ�����
	   public   List<ExamQuestion>  chaxuenyonhusff(ExamQuestion   examquestion);
	    
	    
 }
