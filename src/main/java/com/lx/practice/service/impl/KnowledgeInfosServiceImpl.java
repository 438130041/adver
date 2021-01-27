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
//����ʵ����
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
	     * ��ѯ����
	     * value��ֵ����redis�����ļ���Ӧ�Ļ����������idֵ
	     * key = "'find'"������Ҫ���浽redis�е�ֵ���´�spring��ֱ��ͨ��key��ȡ�����ע��key��ֵ�л��и������š�
	     * @Cacheable���ʺϲ�ѯ���з���ֵ�ķ����ϡ�
	     * ��Ϊ��ÿ�������ڽ��뷽��֮ǰ��spring���ȴӻ���������в��Ҷ�Ӧ��key,����У���ֱ�ӷ��ء�
	     * ������ȥ��ѯ���ݿ⣬�ڽ����ͨ��key���浽�����С�
	     * ����������ֵ���򷵻ػ������ݣ�������������ݿ�
	     * value���û����������key���建��ļ�
	     * @return
	     */
		List<KnowledgeInfos>   KnowledgeInfosdaofind  = KnowledgeInfosdao.find(knowledge_Name);
		System.out.println("û�������ͻ���ʹ�ӡ��...........");
		return KnowledgeInfosdaofind;
		
	}

	
	/*
	 * �����������
	 * @CachePut���ʺ���ӣ��޸ģ�void�����ϡ�
	 * ��Ϊspring��������ȥ����������в�ѯ���ݣ�����ֱ��ִ�з�����Ȼ�󽫽��ͨ��key���浽������,һ��Ҫ�з���ֵ��
	 * �����Ƿ�ֹ���ݲ�һ�¡�
	 */
	@Override
	@CachePut(value = "redisCacheManager",key="'InsertKnowledgeInfos'")
	public void insertKnowledgeInfos(KnowledgeInfos knowledgeInfos) {
		
		KnowledgeInfosdao.insertKnowledgeInfos(knowledgeInfos);
	}

	
	
	
}
