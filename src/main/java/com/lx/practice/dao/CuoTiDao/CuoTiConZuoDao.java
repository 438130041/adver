package com.lx.practice.dao.CuoTiDao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.ExamQuestion;


@Repository
public interface CuoTiConZuoDao {
	
	
	//������Ŀid��ѯ������Ŀ��Ϣ
	public  List<ExamQuestion>  tmuchaxuen(ExamQuestion  examQuestion);
	
	//���������ݴ���������
	public  void   cuoticuenru(ExamQuestion  examQuestion);
	
		
	//������ϰ��ɾ��������������˵���Ŀ
	public   void  cuotishanchus(ExamQuestion  examQuestion);
	
	//��ѯ�����½�
	//��ҩһ
	public   List<ExamQuestion>  cuotizZYY(ExamQuestion  examQuestion);
    //��ҩ��
	public   List<ExamQuestion>  cuotizZYE(ExamQuestion  examQuestion);
    //��ҩ�ۺ�
	public   List<ExamQuestion>  cuotizZYZH(ExamQuestion  examQuestion);
   //��ҩһ
	public   List<ExamQuestion>  cuotizXYY(ExamQuestion  examQuestion);
   //��ҩ��
	public   List<ExamQuestion>  cuotizXYE(ExamQuestion  examQuestion);
  //��ҩ�ۺ�
	public   List<ExamQuestion>  cuotizXYZH(ExamQuestion  examQuestion);
  //����
	public   List<ExamQuestion>  cuotizYS(ExamQuestion  examQuestion);
	
	
	//�½���Ŀ��ѯ(��ҩ���������һ��������ͨ�����벻ͬ�Ĳ�����ѯ����ͬ����)
    public  List<ExamQuestion>  cuotitimu(ExamQuestion  examQuestion);
    
   //��ѯ����Ӧ�½���
    public  List<ExamQuestion>  cuotizhangjieshu(ExamQuestion  examQuestion);
    
   //���½���Ϣ�������ݿ���
    public  void cuotizhanjiecucuen(ExamQuestion  examQuestion);
    
  //�����½ڱ����½���Ŀ��
    public  void  cuotizhangjiegengai(ExamQuestion  examQuestion);
    
  //��ѯ���������ĳ���½������ж��ٸ���Ŀ
    public  List<ExamQuestion> cuotizhangjietimushu(ExamQuestion  examQuestion);
    
  //�����½�id��ѯ���½��е���Ŀ
   
    
    
   //��ѯ�½ڱ����Ƿ��Ѿ��и��½�
    public  List<ExamQuestion> chaxuensfygaizhangjie(ExamQuestion  examQuestion);
    
   
    
   //��ʷ���ⴢ��
    public  void  lishicuoticc(ExamQuestion  examQuestion);
    
    
   //��ʷ�����½ڴ���
    public  void  lishicuotizhanjie(ExamQuestion  examQuestion);
    
    
    //��ѯ����ʷ�½ڱ������е��½���Ŀ��
    public   List<ExamQuestion> lishizhanjietimushu(ExamQuestion  examQuestion);
    
    
    
   //��ʷ�����½���Ŀ������
    public  void  lishicuotizhanjiegengai(ExamQuestion  examQuestion);
 
    
   //����΢��id�ʹ�����Ŀid��ѯ����������Ƿ��Ѿ����˸���Ŀ��Ϣ
    public   List<ExamQuestion>   chaxuencuotisfcuenzai(ExamQuestion  examQuestion);
    
    
    
}
