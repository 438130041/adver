package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class JinyaosiUser implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	public   String    openid;//微信id
	
	
	public   String    nickname;//微信昵称
	
	
	public   String    number;//手机号
	
	
	public   String    User_Id;//学习系统id
	
	
	public   String    User_Name;//学习系统中的用户名
	
	
	
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


	public   String    createTime;//注册时间


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
