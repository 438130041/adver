package com.lx.practice.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.KnowledgeInfos;

//���Ͳ�ѯdao��
@Repository
public interface KnowledgeInfosDao {

	  //���Ͷ�Ӧ���½�
	
	
	
	public  List<KnowledgeInfos>  find(String  knowledge_Name);//��ѯ����������Ϊ��ҩѧ֪ʶһ������
	
	public void  insertKnowledgeInfos(KnowledgeInfos  knowledgeInfos);//������������
}
