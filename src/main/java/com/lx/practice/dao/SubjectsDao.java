package com.lx.practice.dao;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.Subjects;

@Repository
public interface SubjectsDao {

	
	public   Subjects  find(String subjectsid);
}
