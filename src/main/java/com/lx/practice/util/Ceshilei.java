package com.lx.practice.util;

import java.util.List;


import redis.clients.jedis.Jedis;

public class Ceshilei {
	
	
	 public static void main(String[] args) throws Exception {
		/* String openid = "okSrrjjtR9tsH0uy6evWqV6z3PDA";*/
		 
		 //ͨ���û�΢��id�ں�̨�����û�ר���Ķ�ά��
		/* String  url = "http://practicetest.jingyaoshi.net/ceshi/ceshi/tcm/posters?openid="+ openid +"";*/
	        //����Logo
	       /* QrCodeUtil.encode(url, null, "../resources/admin/login/img", true);*/
	        //��Logo����ָ����ά��ͼƬ��
	        //QrCodeUtil.encode(text, "e:\\csdn.jpg", "e:\\", true);
	        //��Logo��ָ����ά��ͼƬ��
	       /* QrCodeUtil.encode(url, "e:\\error.jpg", "e:\\", "qrcode", true);*/
		 
		 
		 //����redisɾ��key
		 /*ShanchuZhidingdRedisKey  sk =new   ShanchuZhidingdRedisKey();
		 sk.delete("findPaiHan");*/
		 
		 //���ӱ��ص�Redis ����
		 Jedis jedis =  new Jedis("localhost");
		 jedis.auth("root");
		 System.out.println("���ӳɹ�");
		 //�������ݵ��б���
		   //listʹ��lpush
		 /*jedis.lpush("site-list", "Runoob");
		 jedis.lpush("site-list", "Google");*/
		 //��ȡ��������ݲ����
		 System.out.println("��ʼ");
		 /*jedis.lrem("site-list", 1, "Google");*/
		 jedis.del("findPaiHan");
		 System.out.println("ɾ�����");
		 
		/* List<String>  list = (List<String>) jedis.lrange("findPaiHan", 0, 1);
		 System.out.println("����");
		   for (int i = 0; i < list.size(); i++) {
			System.out.println("�б���Ϊ��"+list.get(i));
		}*/
		 
		}
		 
}
