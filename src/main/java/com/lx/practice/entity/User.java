package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;

//�û�ʵ����
@Component
public class User implements Serializable{
		
		public  String  nickname;//�û�΢����
		
		public  String  openid;//�û�΢��id
		 
		public  String  headimgurl;//�û�΢��ͷ��
		
		public  String  percentage;//���û��Ĵ�����ȷ��
			
		public  String  int_second;//������ʱ
		

		public String getInt_second() {
			return int_second;
		}

		public void setInt_second(String int_second) {
			this.int_second = int_second;
		}

		public String getPercentage() {
			return percentage;
		}

		public void setPercentage(String percentage) {
			this.percentage = percentage;
		}

		public String getNickname() {
			return nickname;
		}

		public void setNickname(String nickname) {
			this.nickname = nickname;
		}

		public String getOpenid() {
			return openid;
		}

		public void setOpenid(String openid) {
			this.openid = openid;
		}

		public String getHeadimgurl() {
			return headimgurl;
		}

		public void setHeadimgurl(String headimgurl) {
			this.headimgurl = headimgurl;
		}
		
		
		
	
	
}
