package com.lx.practice.service.impl;

import org.springframework.cache.annotation.CachePut;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lx.practice.entity.User;
import com.lx.practice.service.TopicDataService;

@Service
@Transactional
public class TopicDataImpl implements TopicDataService{

	

		//@CachePut注释用于数据的添加与更改，会将返回的数据缓存到redis中去
		//也可不写mapper文件不用dao，直接将要添加的数据或对对象返回出去，这样就实现了数据的缓存
		@Override
		@CachePut(value = "redisCacheManager",key="'#user.openid'")//中药学专业知识一
		public User Savefind(User  user) {
			// TODO Auto-generated method stub
			System.out.println("没有走缓存就打印我。。。。。。");
			/*topicDataDao.Savefind(topicData);*/
			return  user;
		}
	
	
	

	
	
}
