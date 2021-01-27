package com.lx.practice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lx.practice.dao.SubjectsDao;
import com.lx.practice.entity.Subjects;
import com.lx.practice.service.SubjectsService;

@Service
public class SubjectsServiceImpl implements SubjectsService{

	@Autowired
	private  SubjectsDao  subjectdao;

	@Override
	public Subjects find(String subjectsid) {
		// TODO Auto-generated method stub
		return subjectdao.find(subjectsid);
	}
	
	

}
