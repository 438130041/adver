package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class JinyaosiUser implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	public   String    openid;//΢��id
	
	
	public   String    nickname;//΢���ǳ�
	
	
	public   String    number;//�ֻ���
	
	
	public   String    User_Id;//ѧϰϵͳid
	
	
	public   String    User_Name;//ѧϰϵͳ�е��û���
	
	
	
	public String getUser_Id() {
		return User_Id;
	}


	public void setUser_Id(String user_Id) {
		User_Id = user_Id;
	}


	public String getUser_Name() {
		return User_Name;
	}


	public void setUser_Name(String user_Name) {
		User_Name = user_Name;
	}


	public   String    createTime;//ע��ʱ��


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


	public String getNumber() {
		return number;
	}


	public void setNumber(String number) {
		this.number = number;
	}


	public String getCreateTime() {
		return createTime;
	}


	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	
	
	
	
	
}
