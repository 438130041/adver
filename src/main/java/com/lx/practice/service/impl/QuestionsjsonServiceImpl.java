package com.lx.practice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lx.practice.dao.QuestionsjsonDao;
import com.lx.practice.entity.Questionsjson;
import com.lx.practice.service.QuestionsjsonService;

@Service
@Transactional
public class QuestionsjsonServiceImpl implements  QuestionsjsonService{

	@Autowired
	private QuestionsjsonDao  questionsjsonDao;
	
	
	@Override
	@Cacheable(value = "redisCacheManager",key = "'findByEQJson'")
	public List<Questionsjson> findByEQJson(String  questions_id){
		// TODO Auto-generated method stub
		System.err.println("findByEQJson");
		List<Questionsjson>   Questionsjson  = questionsjsonDao.findByEQJson(questions_id);
		System.out.println("没有走json数据缓存就打印我...........");
		return Questionsjson;
	}

}
