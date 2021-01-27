package com.lx.practice.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.Questionsjson;

//数据中json数据service层
@Service
public interface QuestionsjsonService {

	//查询出随机查出来的题目数据中的questions_json数据
	public List<Questionsjson>  findByEQJson(String  questions_id);
		
}
