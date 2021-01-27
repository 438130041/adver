package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;

//用户实体类
@Component
public class User implements Serializable{
		
		public  String  nickname;//用户微信名
		
		public  String  openid;//用户微信id
		 
		public  String  headimgurl;//用户微信头像
		
		public  String  percentage;//该用户的答题正确率
			
		public  String  int_second;//做题用时
		

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
