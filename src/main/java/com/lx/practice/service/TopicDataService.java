package com.lx.practice.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.User;

@Service
public interface TopicDataService {
	
	//将题目做完后的数据存入redis（中药学专业知识一）
	public  User Savefind(User  user);
	
}
