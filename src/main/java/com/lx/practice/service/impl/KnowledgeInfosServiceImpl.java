package com.lx.practice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lx.practice.dao.KnowledgeInfosDao;
import com.lx.practice.entity.KnowledgeInfos;
import com.lx.practice.service.KnowledgeInfosService;
//题型实现类
@Service
@Transactional
public class KnowledgeInfosServiceImpl implements  KnowledgeInfosService{
	
	@Autowired
	private  KnowledgeInfosDao   KnowledgeInfosdao;
	
	@Override
	@Cacheable(value = "redisCacheManager",key = "'find'")
	public List<KnowledgeInfos> find(String knowledge_Name) {
		System.out.println("hahah");
		/**
	     * 查询所有
	     * value的值是你redis配置文件对应的缓存管理器的id值
	     * key = "'find'"：是你要缓存到redis中的值，下次spring会直接通过key获取结果。注意key的值中还有个单引号。
	     * @Cacheable：适合查询，有返回值的方法上。
	     * 因为，每次请求在进入方法之前，spring会先从缓存服务器中查找对应的key,如果有，就直接返回。
	     * 否则再去查询数据库，在将结果通过key保存到缓存中。
	     * 当缓存中有值，则返回缓存数据，否则则访问数据库
	     * value引用缓存管理器，key定义缓存的键
	     * @return
	     */
		List<KnowledgeInfos>   KnowledgeInfosdaofind  = KnowledgeInfosdao.find(knowledge_Name);
		System.out.println("没有走题型缓存就打印我...........");
		return KnowledgeInfosdaofind;
		
	}

	
	/*
	 * 添加题型数据
	 * @CachePut：适合添加，修改，void方法上。
	 * 因为spring不会事先去缓存服务器中查询数据，而是直接执行方法，然后将结果通过key保存到缓存中,一定要有返回值。
	 * 这样是防止数据不一致。
	 */
	@Override
	@CachePut(value = "redisCacheManager",key="'InsertKnowledgeInfos'")
	public void insertKnowledgeInfos(KnowledgeInfos knowledgeInfos) {
		
		KnowledgeInfosdao.insertKnowledgeInfos(knowledgeInfos);
	}

	
	
	
}
