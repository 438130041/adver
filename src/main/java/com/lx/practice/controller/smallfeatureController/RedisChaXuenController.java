package com.lx.practice.controller.smallfeatureController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import redis.clients.jedis.Jedis;

@Controller
@RequestMapping("/deleteredis")
public class RedisChaXuenController {
		
		
		
	@RequestMapping(value="/deleteredis",method=RequestMethod.GET)
	 public  String  del(){
		 System.out.println("进入方法");
		//连接本地的Redis 服务
		 Jedis jedis =  new Jedis("r-2zepvq773e85hwbbjq.redis.rds.aliyuncs.com");
		 jedis.auth("Jingyaoshi123");
		 System.out.println("连接成功");
		 //储存数据到列表中
		   //list使用lpush
		 /*jedis.lpush("site-list", "Runoob");
		 jedis.lpush("site-list", "Google");*/
		 //获取储存的数据并输出
		 System.out.println("开始");
		 /*jedis.lrem("site-list", 1, "Google");*/
		 jedis.del("findPaiHan");
		 jedis.del("findPaiHanyibai");
		 System.out.println("删除完毕");
		return "seccess";
	 }
}