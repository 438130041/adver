package com.lx.practice.dao.HoTaiDao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.lx.practice.entity.LogUser;

@Repository
public interface InformationDao {
	
	
	//��ѯ�������û���Ϣ
	public    List<LogUser>   yonhufind(LogUser  logUser);
	
	//��ѯ����������
	public   Integer  orderpt();
	
	//�û�����ģ����ѯ
	public   List<LogUser>  finduser(LogUser  logUser);
	
	//�����û�΢���ǳƲ�ѯ�û���Ϣ
	public   List<LogUser>  findnickname(LogUser  logUser);
	
	//�����û��ֻ��Ų�ѯ�û���Ϣ
	public   List<LogUser>  findnumber(LogUser  logUser);
	
	//������ʦר�������ѯ������ʦ��ѧԱ
	public  List<LogUser>    findTeacherCodes(LogUser  logUser);

	//��̨ѧԱ��Ʒ״̬�鿴
	public   List<LogUser>   jianpinzhuantai(LogUser  logUser);
	
	
	//ר��ѧԱ����
   public  Integer  zhuanshuorderpt();
	
	//�򿨻ѧԱ(ר��ѧԱ)��ѯ
	public   List<LogUser>  dakahuodonxueyuan(LogUser  logUser);
	
	//��Ʒ��ѯ
	public  List<LogUser>   jianpinchaxuen(LogUser  logUser);
}
