package com.lx.practice.entity;

import org.springframework.stereotype.Component;

@Component
public class DaKa {
	
	public   String   timeid;
	
	public   String   createTime;//日期
	
	public   int   daynumbers;//打卡人数

	public String getTimeid() {
		return timeid;
	}

	public void setTimeid(String timeid) {
		this.timeid = timeid;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public int getDaynumbers() {
		return daynumbers;
	}

	public void setDaynumbers(int daynumbers) {
		this.daynumbers = daynumbers;
	}

	
	
	
	
}
