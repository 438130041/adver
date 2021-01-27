package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;

//题型实体类
@Component			//一定要实现序列化接口Serializable，不然redis没法对其操作
public class KnowledgeInfos implements  Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public   String    knowledge_Id;//题型id
	
	public   String    knowledge_Name;//题型名

	
	
	public String getKnowledge_Id() {
		return knowledge_Id;
	}

	public void setKnowledge_Id(String knowledge_Id) {
		this.knowledge_Id = knowledge_Id;
	}

	public String getKnowledge_Name() {
		return knowledge_Name;
	}

	public void setKnowledge_Name(String knowledge_Name) {
		this.knowledge_Name = knowledge_Name;
	}
	
 	
}
