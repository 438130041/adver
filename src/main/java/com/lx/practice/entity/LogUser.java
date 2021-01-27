package com.lx.practice.entity;

import java.io.Serializable;

import org.springframework.stereotype.Component;

//΢���û���¼��¼��
@Component
public class LogUser implements Serializable{
	
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	private   String  openid; //�û�΢��id
	 
	 
	 private   String  nickname;//΢���û���
     
	 
	 public   String  headimgurl;//�û�ͷ��
	 
     
	 private   Integer  days;//������½����
	 
     
     private   String   createTime;//�û���¼ʱ�䣨����ĵ�¼ʱ�䣩

     
     private  Integer  integral;//�ۼƻ���
     
     
     private  String   items;//Ҫ�һ�����Ʒ
     
     
     private  String   SystemAccount;//��ҩʦϵͳid
     
     
     private  String  StudentsName;//�û���ʵ����
     
     
     private  String  number;//�û��ֻ���
     
     
     public   String    User_Id;//ѧϰϵͳid
 	
 	
 	 public   String    User_Name;//ѧϰϵͳ�е��û���
     
     
     private  String  exchange;//�û��һ���
     
     
     public  String  lv1state;//lv1������ȡ״̬
		
     
     public  String  lv2state;//lv2������ȡ״̬
     
     
     public  String  lv3state;//lv3������ȡ״̬
     
     
     public   Integer  limit;
     
     
     public   Integer  start;
     
     
     public   String  id;
     
     
     public   String  imgs;
     
     
     public   String  FewSubjects;//���꿼����
     
     
     public   String  codes;//��ʦר������
     
     
     public   String  TeacherCodes;//ѧ����������ʦר������
     
     
     public   int  dakatishu;//�ۼƻ������
     			   
     
     public   String  dakaurl;//�û����ϴ�ͼƬ
     
     
     public   String  dakatime;//�����ʱ��
     
     
     public   String  rownum;//��ǰ�û�����
     
     
     public   String  prize;//�û����н�Ʒ
     
     
     public   String  prizetime;//�н�ʱ��
     
     
     public   String  state;//�н���Ʒ״̬
     
     
     public   String  daima;//�γ̴���
     
     
     private  String  zuotian;//����ʱ��
		
     
     private  String  jintian;//�����ʱ��

     
     public   String  department;//����
     
     
     public  String  parentId;//��Ŀid
     
     
     public  String  sortCode;//�����½���
     
     
     public  String  amount;//������
     
     
     public  String  paymenttime;//����ʱ��
     
     
     
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
