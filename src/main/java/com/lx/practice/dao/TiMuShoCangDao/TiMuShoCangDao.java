package com.lx.practice.dao.TiMuShoCangDao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.ExamQuestion;


@Repository
public interface TiMuShoCangDao {
			
	//��ѯ�ղ���Ŀ�½�
			//��ҩһ
			public   List<ExamQuestion>  timushocangZYY(ExamQuestion  examQuestion);
		    //��ҩ��
			public   List<ExamQuestion>  timushocangZYE(ExamQuestion  examQuestion);
		    //��ҩ�ۺ�
			public   List<ExamQuestion>  timushocangZYZH(ExamQuestion  examQuestion);
		   //��ҩһ
			public   List<ExamQuestion>  timushocangXYY(ExamQuestion  examQuestion);
		   //��ҩ��
			public   List<ExamQuestion>  timushocangXYE(ExamQuestion  examQuestion);
		  //��ҩ�ۺ�
			public   List<ExamQuestion>  timushocangXYZH(ExamQuestion  examQuestion);
		  //����
			public   List<ExamQuestion>  timushocangYS(ExamQuestion  examQuestion);
			
			
		 //����΢��id�ʹ�����Ŀid��ѯ�ղر����Ƿ��Ѿ����˸���Ŀ��Ϣ
		    public   List<ExamQuestion>   chaxuenshocangfcuenzai(ExamQuestion  examQuestion);
		    
		 //����ղ������û�и���Ŀ��Ϣ����ô����Ŀ���ݴ�����ղ������
		    public   void   shocangtimucucuen(ExamQuestion  examQuestion);
		    
		 //ȥ�ղ�����в�ѯĳ���½�id���ж��ٵ���Ŀ
		    public    List<ExamQuestion>  chaxuenshocangzhanjiexaitishu(ExamQuestion  examQuestion);
		    
		    
		  //��ѯ�ղ�����½ڱ��Ƿ��Ѿ��и��½�
		    public   List<ExamQuestion>   chaxuneshocnagzhangjiesfyy(ExamQuestion  examQuestion);
		    
	     //���½���Ϣ�����ղ��½ڱ���ȥ
		    public   void   cucuenshocangzhangjiexinxi(ExamQuestion  examQuestion);
		    
		//�����½�����Ŀ������Ϣ
		    public   void  genggaizhanjietimushulian(ExamQuestion  examQuestion);
		    
		    
		//�½���Ŀ��ѯ(��ҩ���������һ��������ͨ�����벻ͬ�Ĳ�����ѯ����ͬ����)
			public   List<ExamQuestion>   shocangtimu(ExamQuestion  examQuestion);
			
			
	    //ɾ���ղ��������Ŀ��Ϣ
			public   void  shanchushocangtimu(ExamQuestion  examQuestion);
			
	   
		//�����ղ�����½ڱ����Ŀ��
			public   List<ExamQuestion>   gengaizhangjietimushu(ExamQuestion  examQuestion);
			
			
	   //��ѯ���½ڱ���������Ŀ��Ϣ���ж��Ƿ��Ѿ����й��ղأ�
			public   List<ExamQuestion>   chaxuenshuoyshocangtimu(ExamQuestion  examQuestion);
		    
}
