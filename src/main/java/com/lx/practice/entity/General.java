package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;
//ͨ����
@Component
public class General implements Serializable{
		
		private static final long serialVersionUID = 1L;
		
	    public  String  openid;//΢��id
		
		public  String  nickname;//΢���ǳ�
		
		public  String  headimgurl;//�û�΢��ͷ��
		
		public  String  StudentsName;//����
		
		public  String  number;//�ֻ���
		
		public  String   Id_card;//���֤����
		
		public  String   region;//�û����ڵĵ���
		
		public  String   Education_information;//����ѧ��
		
		public  String   certificate;//ѧԱ�����ʸ�֤
		
		public  String   jingyaoshi_account;//��ҩʦ�˺�
		
		public  String    password;//��ҩʦ����
		
		public  String    Shipping_address;//�ջ���ַ

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
