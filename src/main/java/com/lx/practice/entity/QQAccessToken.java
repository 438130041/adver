package com.lx.practice.entity;
import java.io.Serializable;


public class QQAccessToken implements Serializable{
		
		
	/**
	 * 
	 */
	private static final long serialVersionUID = 5258435811207021018L;
	private String accessToken;//�ӿڵ���ƾ֤
	private int expiresIn;//access_token�ӿڵ���ƾ֤��ʱʱ�䣬��λ���룩
	private String openid;//��Ȩ�û�Ψһ��ʶ
	private String refreshToken;//�û�ˢ��access_token
	private String scope;//�û���Ȩ��������ʹ�ö��ţ�,���ָ�

	public String getOpenid() {
		return openid;
	}

	public void setOpenid(String openid) {
		this.openid = openid;
	}

	public String getAccessToken() {
		return accessToken;
	}

	public void setAccessToken(String accessToken) {
		this.accessToken = accessToken;
	}

	public int getExpiresIn() {
		return expiresIn;
	}

	public void setExpiresIn(int expiresIn) {
		this.expiresIn = expiresIn;
	}

	public String getRefreshToken() {
		return refreshToken;
	}

	public void setRefreshToken(String refreshToken) {
		this.refreshToken = refreshToken;
	}

	public String getScope() {
		return scope;
	}

	public void setScope(String scope) {
		this.scope = scope;
	}
		
		
}
