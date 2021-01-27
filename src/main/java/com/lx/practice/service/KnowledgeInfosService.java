package com.lx.practice.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.KnowledgeInfos;

//题型查询service
@Service
public interface KnowledgeInfosService {
	
	public  List<KnowledgeInfos>  find(String  knowledge_Name);//查询出所有题型为中药学知识一的数据
	
	public void  insertKnowledgeInfos(KnowledgeInfos  knowledgeInfos);//插入题型数据
}
