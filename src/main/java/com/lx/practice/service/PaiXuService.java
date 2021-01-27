package com.lx.practice.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.User;

@Service
public interface PaiXuService {
	

	public   List<User> findPaiming(User user);
	
}
