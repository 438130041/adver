package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;
//通用类
@Component
public class General implements Serializable{
		
		private static final long serialVersionUID = 1L;
		
	    public  String  openid;//微信id
		
		public  String  nickname;//微信昵称
		
		public  String  headimgurl;//用户微信头像
		
		public  String  StudentsName;//姓名
		
		public  String  number;//手机号
		
		public  String   Id_card;//身份证号码
		
		public  String   region;//用户所在的地区
		
		public  String   Education_information;//现有学历
		
		public  String   certificate;//学员已有资格证
		
		public  String   jingyaoshi_account;//晶药师账号
		
		public  String    password;//晶药师密码
		
		public  String    Shipping_address;//收货地址

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

		public String getHeadimgurl() {
			return headimgurl;
		}

		public void setHeadimgurl(String headimgurl) {
			this.headimgurl = headimgurl;
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

		public String getId_card() {
			return Id_card;
		}

		public void setId_card(String id_card) {
			Id_card = id_card;
		}

		public String getRegion() {
			return region;
		}

		public void setRegion(String region) {
			this.region = region;
		}

		public String getEducation_information() {
			return Education_information;
		}

		public void setEducation_information(String education_information) {
			Education_information = education_information;
		}

		public String getCertificate() {
			return certificate;
		}

		public void setCertificate(String certificate) {
			this.certificate = certificate;
		}

		public String getJingyaoshi_account() {
			return jingyaoshi_account;
		}

		public void setJingyaoshi_account(String jingyaoshi_account) {
			this.jingyaoshi_account = jingyaoshi_account;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getShipping_address() {
			return Shipping_address;
		}

		public void setShipping_address(String shipping_address) {
			Shipping_address = shipping_address;
		}

		
		
		
		
		
}
