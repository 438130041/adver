package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;

//����ʵ����
@Component			//һ��Ҫʵ�����л��ӿ�Serializable����Ȼredisû���������
public class KnowledgeInfos implements  Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public   String    knowledge_Id;//����id
	
	public   String    knowledge_Name;//������

	
	
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
