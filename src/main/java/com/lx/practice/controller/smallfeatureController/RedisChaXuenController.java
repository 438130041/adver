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
		 System.out.println("���뷽��");
		//���ӱ��ص�Redis ����
		 Jedis jedis =  new Jedis("r-2zepvq773e85hwbbjq.redis.rds.aliyuncs.com");
		 jedis.auth("Jingyaoshi123");
		 System.out.println("���ӳɹ�");
		 //�������ݵ��б���
		   //listʹ��lpush
		 /*jedis.lpush("site-list", "Runoob");
		 jedis.lpush("site-list", "Google");*/
		 //��ȡ��������ݲ����
		 System.out.println("��ʼ");
		 /*jedis.lrem("site-list", 1, "Google");*/
		 jedis.del("findPaiHan");
		 jedis.del("findPaiHanyibai");
		 System.out.println("ɾ�����");
		return "seccess";
	 }
}