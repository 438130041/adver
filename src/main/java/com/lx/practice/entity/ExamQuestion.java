package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;

//��Ŀʵ����
@Component
public class ExamQuestion implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	public  String  knowledge_Id;
	
	public  String  knowledge_Name;//����������Ŀ���ͣ���ҩѧһ����ҩѧ���ȣ�
	
	public  String   questions_name;//��꣨��Ŀ���⣩
	
	public  String  title_Sum;//�½��µ���Ŀ����
	
	public  String  questions_json;//��Ŀ���
	
	public  String  questions_id;//��Ŀid
	
	public  String  questions_Type;//ѡ������������࣬1Ϊ��ѡ��2Ϊ��ѡ��
	
	public  String  answerAnalysis;//�𰸽���
	
	public  String  parentId;//����id
	
	public  String  sortCode;//�½�ѭ��
	
	/*public  String  msg;*/
	
	public  String  data;
	
	public  String  openid;//΢��id
	
	
	public  String  questions_Json;//��Ŀ����
	
	
	
	
	
	/*public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}*/

	public String getSortCode() {
		return sortCode;
	}

	public void setSortCode(String sortCode) {
		this.sortCode = sortCode;
	}

	public String getQuestions_Json() {
		return questions_Json;
	}

	public void setQuestions_Json(String questions_Json) {
		this.questions_Json = questions_Json;
	}

	public String getOpenid() {
		return openid;
	}

	public void setOpenid(String openid) {
		this.openid = openid;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	

	public String getKnowledge_Id() {
		return knowledge_Id;
	}

	public void setKnowledge_Id(String knowledge_Id) {
		this.knowledge_Id = knowledge_Id;
	}

	public String getTitle_Sum() {
		return title_Sum;
	}

	public void setTitle_Sum(String title_Sum) {
		this.title_Sum = title_Sum;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getAnswerAnalysis() {
		return answerAnalysis;
	}

	public void setAnswerAnalysis(String answerAnalysis) {
		this.answerAnalysis = answerAnalysis;
	}

	public String getKnowledge_Name() {
		return knowledge_Name;
	}

	public void setKnowledge_Name(String knowledge_Name) {
		this.knowledge_Name = knowledge_Name;
	}

	public String getQuestions_name() {
		return questions_name;
	}

	public void setQuestions_name(String questions_name) {
		this.questions_name = questions_name;
	}

	public String getQuestions_id() {
		return questions_id;
	}

	public void setQuestions_id(String questions_id) {
		this.questions_id = questions_id;
	}

	public String getQuestions_Type() {
		return questions_Type;
	}

	public void setQuestions_Type(String questions_Type) {
		this.questions_Type = questions_Type;
	}

	public String getQuestions_json() {
		return questions_json;
	}

	public void setQuestions_json(String questions_json) {
		this.questions_json = questions_json;
	}


	
	
}
