package com.lx.practice.dao.LiShiCuoTiDao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.ExamQuestion;

@Repository
public interface LiShiCuoTiDao {
		
	//��ѯ��ʷ�����½�
		//��ҩһ
		public   List<ExamQuestion>  lishicuotizZYY(ExamQuestion  examQuestion);
	    //��ҩ��
		public   List<ExamQuestion>  lishicuotizZYE(ExamQuestion  examQuestion);
	    //��ҩ�ۺ�
		public   List<ExamQuestion>  lishicuotizZYZH(ExamQuestion  examQuestion);
	   //��ҩһ
		public   List<ExamQuestion>  lishicuotizXYY(ExamQuestion  examQuestion);
	   //��ҩ��
		public   List<ExamQuestion>  lishicuotizXYE(ExamQuestion  examQuestion);
	  //��ҩ�ۺ�
		public   List<ExamQuestion>  lishicuotizXYZH(ExamQuestion  examQuestion);
	  //����
		public   List<ExamQuestion>  lishicuotizYS(ExamQuestion  examQuestion);
		
	  //����΢��id����Ŀid��ѯ��ʷ������Ƿ��Ѿ����ڸ���Ŀ��Ϣ
		public   List<ExamQuestion>  chaxuenlishicuotisfcuenzai(ExamQuestion  examQuestion);
		
		
	//�½���Ŀ��ѯ(��ҩ���������һ��������ͨ�����벻ͬ�Ĳ�����ѯ����ͬ����)
	  public  List<ExamQuestion>  lishicuotitimu(ExamQuestion  examQuestion);
		
		
		
}
