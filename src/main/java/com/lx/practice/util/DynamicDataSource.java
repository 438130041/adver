package com.lx.practice.util;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;


public class DynamicDataSource extends AbstractRoutingDataSource{
	
	 @Override
	    protected Object determineCurrentLookupKey() {
	        // ���Զ����λ�û�ȡ����Դ��ʶ
	        return DynamicDataSourceHolder.getDataSource();
	    };
	
}