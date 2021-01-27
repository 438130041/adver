package com.lx.practice.util;

import java.util.HashMap;
import java.util.Map;

import com.alibaba.druid.sql.dialect.mysql.ast.statement.MySqlCreateUserStatement.UserSpecification;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

//Redis储存与与查询工具类
public class RedisUtil {

	private static JedisPool pool;
	
	private  static  Jedis  jedis;

	public static Object redisTemplate;
	
	
	//向redis中添加没有的数据
	public  static  void   Redisadd(){
		//初始化Redis连接池(写入连接池)
		pool = new JedisPool(new JedisPoolConfig(), "127.0.0.1");
		// 从连接池中获取一个连接
        jedis = pool.getResource();
        //把数据以Hash的方式存入redis中
        Map<String,String> map2 = new HashMap<>();
        /*map2.put("", ");
*/        
	}
	
}
