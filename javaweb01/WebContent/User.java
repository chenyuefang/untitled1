package com.iflytek;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-DD HH:mm:ss");
	
	private String username;
	private String password;
	private int age;
	private String cardNo;
	private Date birthday;
	
	
	
	public User() {}
	
	public User(String username, String password, int age, String cardNo, Date birthday) {
		this.username = username;
		this.password = password;
		this.age = age;
		this.cardNo = cardNo;
		this.birthday = birthday;
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
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getBirthday() {
		return format.format(birthday);
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

}
