package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;

//题目数据实体类
@Component
public class TopicData  implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public  String  correctnumber;
	
	public  String  percentage;
	
	public  String  int_second;
	
	public  String  knowledge_Name;
	
	public  String[]  queanswer;
	
	public  String[]  answers;
	
	
	
	public String getCorrectnumber() {
		return correctnumber;
	}

	public void setCorrectnumber(String correctnumber) {
		this.correctnumber = correctnumber;
	}

	public String getPercentage() {
		return percentage;
	}

	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}

	public String getInt_second() {
		return int_second;
	}

	public void setInt_second(String int_second) {
		this.int_second = int_second;
	}

	public String getKnowledge_Name() {
		return knowledge_Name;
	}

	public void setKnowledge_Name(String knowledge_Name) {
		this.knowledge_Name = knowledge_Name;
	}

	public String[] getQueanswer() {
		return queanswer;
	}

	public void setQueanswer(String[] queanswer) {
		this.queanswer = queanswer;
	}

	public String[] getAnswers() {
		return answers;
	}

	public void setAnswers(String[] answers) {
		this.answers = answers;
	}

	
	
}
