package com.iflytek.pojo;

import java.util.Date;

public class User {
	private String username;
	private String password;
	private int age;
	private Date birthday;
	private int sex;//(0 女生 1 男生)
	private String cardNo;
	
	public User() {
		super();
	}
	
	public User(String username, String password, int age, Date birthday, int sex, String cardNo) {
		super();
		this.username = username;
		this.password = password;
		this.age = age;
		this.birthday = birthday;
		this.sex = sex;
		this.cardNo = cardNo;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", age=" + age + ", birthday=" + birthday
				+ ", sex=" + sex + ", cardNo=" + cardNo + "]";
	}
}
