package com.lx.practice.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.Questionsjson;

//数据中json数据dao层
@Repository
public interface QuestionsjsonDao {

	
	//查询出随机查出来的题目数据中的questions_json数据
		public List<Questionsjson>  findByEQJson(String  questions_id);
}
