package com.lx.practice.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.Questionsjson;

//������json����service��
@Service
public interface QuestionsjsonService {

	//��ѯ��������������Ŀ�����е�questions_json����
	public List<Questionsjson>  findByEQJson(String  questions_id);
		
}
