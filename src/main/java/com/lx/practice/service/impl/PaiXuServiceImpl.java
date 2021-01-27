package com.lx.practice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.lx.practice.dao.PaiXuDao;
import com.lx.practice.entity.User;
import com.lx.practice.service.PaiXuService;

@Service
public class PaiXuServiceImpl implements PaiXuService{
	
	@Autowired
	private PaiXuDao paixudao;
	
	@Override
	@Cacheable(value = "redisCacheManager",key = "'#User.openid'")
	public List<User> findPaiming(User  user) {
		// TODO Auto-generated method stub
		System.out.println("如果没有进过缓存就打印。。。。。。。");
		return   paixudao.findPaiXuming(user);
	}

	/*@Override
	public List<User> findPaiming() {
		// TODO Auto-generated method stub
		return null;
	}*/

	
	
	
}
