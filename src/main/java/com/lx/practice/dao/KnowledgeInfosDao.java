package com.lx.practice.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.KnowledgeInfos;

//题型查询dao层
@Repository
public interface KnowledgeInfosDao {

	  //题型对应到章节
	
	
	
	public  List<KnowledgeInfos>  find(String  knowledge_Name);//查询出所有题型为中药学知识一的数据
	
	public void  insertKnowledgeInfos(KnowledgeInfos  knowledgeInfos);//插入题型数据
}
