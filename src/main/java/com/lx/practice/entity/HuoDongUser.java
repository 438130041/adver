package com.lx.practice.entity;

import org.springframework.stereotype.Component;

@Component
public class HuoDongUser {
		
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


		public  String  openid;//微信id
		
	
		public  String  nickname;//微信昵称
		
		
		public  String  headimgurl;//微信头像
		
		
		public  String  StudentsName;//学员姓名
		
		
		public  String  number;//手机号
		
		
		public  String  people_openid;//我所推广的人的微信id
		
		
		public  String  people_nickname;//我所推广的人的昵称
		
		
		public  String people_headimgurl;//所推广的人的头像
		
		
		public  String   people_StudentsName;//我所推广的人的姓名
		
		
		public  String   people_number;//我所推广人的手机号
		
		
		public  String   my_openid;//我的推广人的微信id
		
		
		public  String   my_nickname;//我的推广人的昵称
		
		
		public   String  my_headimgurl;//我的推广人微信头像
		
		
		public  String   my_StudentsName;//我的推广人的姓名
		
		
		public  String   my_number;//我的推广人的手机号

		
		
		public  String  total;//佣金档次
		 
		
		
		
		
		
		public String getTotal() {
			return total;
		}


		public void setTotal(String total) {
			this.total = total;
		}


		public String getPeople_headimgurl() {
			return people_headimgurl;
		}


		public void setPeople_headimgurl(String people_headimgurl) {
			this.people_headimgurl = people_headimgurl;
		}


		public String getMy_headimgurl() {
			return my_headimgurl;
		}


		public void setMy_headimgurl(String my_headimgurl) {
			this.my_headimgurl = my_headimgurl;
		}


		public String getHeadimgurl() {
			return headimgurl;
		}


		public void setHeadimgurl(String headimgurl) {
			this.headimgurl = headimgurl;
		}


		public String getOpenid() {
			return openid;
		}


		public void setOpenid(String openid) {
			this.openid = openid;
		}


		public String getNickname() {
			return nickname;
		}


		public void setNickname(String nickname) {
			this.nickname = nickname;
		}


		public String getStudentsName() {
			return StudentsName;
		}


		public void setStudentsName(String studentsName) {
			StudentsName = studentsName;
		}


		public String getNumber() {
			return number;
		}


		public void setNumber(String number) {
			this.number = number;
		}


		public String getPeople_openid() {
			return people_openid;
		}


		public void setPeople_openid(String people_openid) {
			this.people_openid = people_openid;
		}


		public String getPeople_nickname() {
			return people_nickname;
		}


		public void setPeople_nickname(String people_nickname) {
			this.people_nickname = people_nickname;
		}


		public String getPeople_StudentsName() {
			return people_StudentsName;
		}


		public void setPeople_StudentsName(String people_StudentsName) {
			this.people_StudentsName = people_StudentsName;
		}


		public String getPeople_number() {
			return people_number;
		}


		public void setPeople_number(String people_number) {
			this.people_number = people_number;
		}


		public String getMy_openid() {
			return my_openid;
		}


		public void setMy_openid(String my_openid) {
			this.my_openid = my_openid;
		}


		public String getMy_nickname() {
			return my_nickname;
		}


		public void setMy_nickname(String my_nickname) {
			this.my_nickname = my_nickname;
		}


		public String getMy_StudentsName() {
			return my_StudentsName;
		}


		public void setMy_StudentsName(String my_StudentsName) {
			this.my_StudentsName = my_StudentsName;
		}


		public String getMy_number() {
			return my_number;
		}


		public void setMy_number(String my_number) {
			this.my_number = my_number;
		}
		  
		
}
