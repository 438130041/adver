package com.lx.practice.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.User;

@Service
public interface TopicDataService {
	
	//����Ŀ���������ݴ���redis����ҩѧרҵ֪ʶһ��
	public  User Savefind(User  user);
	
}
