package com.lx.practice.entity;

import org.springframework.stereotype.Component;

//questions_json实体类
@Component
public class Questionsjson {
	
	/**
	 * 
	 */
	
		public  String  questions_id;//题目id
	
		public  String  answer;
		
		public  String  answerAnalysis;
		
		public  String   options;
		
		public  String   title;

		public  String  ABCDE;
		
		
		
		
		public String getABCDE() {
			return ABCDE;
		}

		public void setABCDE(String aBCDE) {
			ABCDE = aBCDE;
		}

		public String getQuestions_id() {
			return questions_id;
		}

		public void setQuestions_id(String questions_id) {
			this.questions_id = questions_id;
		}

		public String getAnswer() {
			return answer;
		}

		public void setAnswer(String answer) {
			this.answer = answer;
		}

		public String getAnswerAnalysis() {
			return answerAnalysis;
		}

		public void setAnswerAnalysis(String answerAnalysis) {
			this.answerAnalysis = answerAnalysis;
		}

		public String getOptions() {
			return options;
		}

		public void setOptions(String options) {
			this.options = options;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}
		
		
	
	
	
}
