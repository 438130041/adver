package com.lx.practice.entity;

import org.springframework.stereotype.Component;

//��ҩ��Ŀѡ��ʵ����
@Component
public class Subjects {
	
	/**
	 * 
	 */

	/*private static final long serialVersionUID = 1L; */

	public  Long  id;
	
	public  String  subjectsname;//ѡ��Ŀ�Ŀ������ҩ����ҩ��
	
	public  String  subjectsid;//��ҩ��Ŀid
	
	public  String  subjects;//��ҩ��Ŀ����ѡ��

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
