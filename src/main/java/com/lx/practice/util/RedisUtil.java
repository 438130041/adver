package com.lx.practice.util;

import java.util.HashMap;
import java.util.Map;

import com.alibaba.druid.sql.dialect.mysql.ast.statement.MySqlCreateUserStatement.UserSpecification;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

//Redis���������ѯ������
public class RedisUtil {

	private static JedisPool pool;
	
	private  static  Jedis  jedis;

	public static Object redisTemplate;
	
	
	//��redis�����û�е�����
	public  static  void   Redisadd(){
		//��ʼ��Redis���ӳ�(д�����ӳ�)
		pool = new JedisPool(new JedisPoolConfig(), "127.0.0.1");
		// �����ӳ��л�ȡһ������
        jedis = pool.getResource();
        //��������Hash�ķ�ʽ����redis��
        Map<String,String> map2 = new HashMap<>();
        /*map2.put("", ");
*/        
	}
	
}
