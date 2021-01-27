package com.lx.practice.service;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.Subjects;


@Service
public interface SubjectsService {
		
	public   Subjects  find(String subjectsid);
}
