package com.lx.practice.service.impl;

import org.springframework.cache.annotation.CachePut;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lx.practice.entity.User;
import com.lx.practice.service.TopicDataService;

@Service
@Transactional
public class TopicDataImpl implements TopicDataService{

	

		//@CachePutע���������ݵ��������ģ��Ὣ���ص����ݻ��浽redis��ȥ
		//Ҳ�ɲ�дmapper�ļ�����dao��ֱ�ӽ�Ҫ��ӵ����ݻ�Զ��󷵻س�ȥ��������ʵ�������ݵĻ���
		@Override
		@CachePut(value = "redisCacheManager",key="'#user.openid'")//��ҩѧרҵ֪ʶһ
		public User Savefind(User  user) {
			// TODO Auto-generated method stub
			System.out.println("û���߻���ʹ�ӡ�ҡ�����������");
			/*topicDataDao.Savefind(topicData);*/
			return  user;
		}
	
	
	

	
	
}
