package com.lx.practice.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.KnowledgeInfos;

//���Ͳ�ѯservice
@Service
public interface KnowledgeInfosService {
	
	public  List<KnowledgeInfos>  find(String  knowledge_Name);//��ѯ����������Ϊ��ҩѧ֪ʶһ������
	
	public void  insertKnowledgeInfos(KnowledgeInfos  knowledgeInfos);//������������
}
