package com.lx.practice.service.LiShiCuoTiService;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.ExamQuestion;

@Service
public interface LiShiCuoTiService {
			
			
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
