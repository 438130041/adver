package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;

//微信用户登录记录类
@Component
public class LogUser implements Serializable{
	
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	private   String  openid; //用户微信id
	 
	 
	 private   String  nickname;//微信用户名
     
	 
	 public   String  headimgurl;//用户头像
	 
     
	 private   Integer  days;//连续登陆天数
	 
     
     private   String   createTime;//用户登录时间（具体的登录时间）

     
     private  Integer  integral;//累计积分
     
     
     private  String   items;//要兑换的物品
     
     
     private  String   SystemAccount;//金药师系统id
     
     
     private  String  StudentsName;//用户真实姓名
     
     
     private  String  number;//用户手机号
     
     
     public   String    User_Id;//学习系统id
 	
 	
 	 public   String    User_Name;//学习系统中的用户名
     
     
     private  String  exchange;//用户兑换码
     
     
     public  String  lv1state;//lv1礼物领取状态
		
     
     public  String  lv2state;//lv2礼物领取状态
     
     
     public  String  lv3state;//lv3礼物领取状态
     
     
     public   Integer  limit;
     
     
     public   Integer  start;
     
     
     public   String  id;
     
     
     public   String  imgs;
     
     
     public   String  FewSubjects;//今年考几科
     
     
     public   String  codes;//老师专属代码
     
     
     public   String  TeacherCodes;//学生所属的老师专属代码
     
     
     public   int  dakatishu;//累计活动打卡天数
     			   
     
     public   String  dakaurl;//用户打卡上传图片
     
     
     public   String  dakatime;//最近打卡时间
     
     
     public   String  rownum;//当前用户排名
     
     
     public   String  prize;//用户抽中奖品
     
     
     public   String  prizetime;//中奖时间
     
     
     public   String  state;//中将物品状态
     
     
     public   String  daima;//课程代码
     
     
     private  String  zuotian;//昨天时间
		
     
     private  String  jintian;//今天的时间

     
     public   String  department;//部门
     
     
     public  String  parentId;//科目id
     
     
     public  String  sortCode;//错题章节数
     
     
     public  String  amount;//付款金额
     
     
     public  String  paymenttime;//付款时间
     
     
     
		public String getPaymenttime() {
		return paymenttime;
	}

	public void setPaymenttime(String paymenttime) {
		this.paymenttime = paymenttime;
	}

		public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

		public String getSortCode() {
		return sortCode;
	}

	public void setSortCode(String sortCode) {
		this.sortCode = sortCode;
	}

		public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

		public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

		public String getZuotian() {
			return zuotian;
		}

		public void setZuotian(String zuotian) {
			this.zuotian = zuotian;
		}

		public String getJintian() {
			return jintian;
		}

		public void setJintian(String jintian) {
			this.jintian = jintian;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		}
				
     
     
   	 public String getDaima() {
		return daima;
	}


	public void setDaima(String daima) {
		this.daima = daima;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getPrize() {
		return prize;
	}


	public void setPrize(String prize) {
		this.prize = prize;
	}


	public String getPrizetime() {
		return prizetime;
	}


	public void setPrizetime(String prizetime) {
		this.prizetime = prizetime;
	}


	public int getDakatishu() {
		return dakatishu;
	}


	public void setDakatishu(int dakatishu) {
		this.dakatishu = dakatishu;
	}


	public String getRownum() {
		return rownum;
	}


	public void setRownum(String rownum) {
		this.rownum = rownum;
	}



	public String getDakatime() {
		return dakatime;
	}


	public void setDakatime(String dakatime) {
		this.dakatime = dakatime;
	}


	public String getDakaurl() {
		return dakaurl;
	}


	public void setDakaurl(String dakaurl) {
		this.dakaurl = dakaurl;
	}


	public String getTeacherCodes() {
		return TeacherCodes;
	}


	public void setTeacherCodes(String teacherCodes) {
		TeacherCodes = teacherCodes;
	}


	public String getCodes() {
		return codes;
	}


	public void setCodes(String codes) {
		this.codes = codes;
	}


	public String getFewSubjects() {
		return FewSubjects;
	}


	public void setFewSubjects(String fewSubjects) {
		FewSubjects = fewSubjects;
	}


	public String getHeadimgurl() {
		return headimgurl;
	}


	public void setHeadimgurl(String headimgurl) {
		this.headimgurl = headimgurl;
	}


	public String getItems() {
		return items;
	}


	public void setItems(String items) {
		this.items = items;
	}


	public Integer getLimit() {
		return limit;
	}


	public void setLimit(Integer limit) {
		this.limit = limit;
	}


	public Integer getStart() {
		return start;
	}


	public void setStart(Integer start) {
		this.start = start;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getImgs() {
		return imgs;
	}


	public void setImgs(String imgs) {
		this.imgs = imgs;
	}


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


	public String getSystemAccount() {
		return SystemAccount;
	}


	public void setSystemAccount(String systemAccount) {
		SystemAccount = systemAccount;
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


	public String getExchange() {
		return exchange;
	}


	public void setExchange(String exchange) {
		this.exchange = exchange;
	}


	public String getLv1state() {
		return lv1state;
	}


	public void setLv1state(String lv1state) {
		this.lv1state = lv1state;
	}


	public String getLv2state() {
		return lv2state;
	}


	public void setLv2state(String lv2state) {
		this.lv2state = lv2state;
	}


	public String getLv3state() {
		return lv3state;
	}


	public void setLv3state(String lv3state) {
		this.lv3state = lv3state;
	}


	public Integer getIntegral() {
		return integral;
	}


	public void setIntegral(Integer integral) {
		this.integral = integral;
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


	public Integer getDays() {
		return days;
	}


	public void setDays(Integer days) {
		this.days = days;
	}


	public String getCreateTime() {
		return createTime;
	}


	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
     
     
     
     
}
