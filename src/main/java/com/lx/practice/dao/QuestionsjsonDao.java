package com.lx.practice.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.Questionsjson;

//������json����dao��
@Repository
public interface QuestionsjsonDao {

	
	//��ѯ��������������Ŀ�����е�questions_json����
		public List<Questionsjson>  findByEQJson(String  questions_id);
}
