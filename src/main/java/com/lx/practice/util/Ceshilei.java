package com.lx.practice.util;

import java.util.List;


import redis.clients.jedis.Jedis;

public class Ceshilei {
	
	
	 public static void main(String[] args) throws Exception {
		/* String openid = "okSrrjjtR9tsH0uy6evWqV6z3PDA";*/
		 
		 //通过用户微信id在后台生成用户专属的二维码
		/* String  url = "http://practicetest.jingyaoshi.net/ceshi/ceshi/tcm/posters?openid="+ openid +"";*/
	        //不含Logo
	       /* QrCodeUtil.encode(url, null, "../resources/admin/login/img", true);*/
	        //含Logo，不指定二维码图片名
	        //QrCodeUtil.encode(text, "e:\\csdn.jpg", "e:\\", true);
	        //含Logo，指定二维码图片名
	       /* QrCodeUtil.encode(url, "e:\\error.jpg", "e:\\", "qrcode", true);*/
		 
		 
		 //测试redis删除key
		 /*ShanchuZhidingdRedisKey  sk =new   ShanchuZhidingdRedisKey();
		 sk.delete("findPaiHan");*/
		 
		 //连接本地的Redis 服务
		 Jedis jedis =  new Jedis("localhost");
		 jedis.auth("root");
		 System.out.println("连接成功");
		 //储存数据到列表中
		   //list使用lpush
		 /*jedis.lpush("site-list", "Runoob");
		 jedis.lpush("site-list", "Google");*/
		 //获取储存的数据并输出
		 System.out.println("开始");
		 /*jedis.lrem("site-list", 1, "Google");*/
		 jedis.del("findPaiHan");
		 System.out.println("删除完毕");
		 
		/* List<String>  list = (List<String>) jedis.lrange("findPaiHan", 0, 1);
		 System.out.println("结束");
		   for (int i = 0; i < list.size(); i++) {
			System.out.println("列表项为："+list.get(i));
		}*/
		 
		}
		 
}
