package com.lx.practice.entity;

import org.springframework.stereotype.Component;

//中药科目选择实体类
@Component
public class Subjects {
	
	/**
	 * 
	 */

	/*private static final long serialVersionUID = 1L; */

	public  Long  id;
	
	public  String  subjectsname;//选择的科目名（中药或西药）
	
	public  String  subjectsid;//中药科目id
	
	public  String  subjects;//中药科目（供选择）

	public String getSubjectsname() {
		return subjectsname;
	}

	public void setSubjectsname(String subjectsname) {
		this.subjectsname = subjectsname;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSubjectsid() {
		return subjectsid;
	}

	public void setSubjectsid(String subjectsid) {
		this.subjectsid = subjectsid;
	}

	public String getSubjects() {
		return subjects;
	}

	public void setSubjects(String subjects) {
		this.subjects = subjects;
	}
	
	public   Subjects(){};
	
}
