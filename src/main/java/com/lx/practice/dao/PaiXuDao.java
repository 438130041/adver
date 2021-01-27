package com.lx.practice.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.User;


//≈≈–Údao≤„
@Repository
public interface PaiXuDao {
	
	public  List<User>  findPaiXuming(User user);
	
}
