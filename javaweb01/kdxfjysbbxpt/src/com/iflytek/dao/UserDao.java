package com.iflytek.dao;

import java.util.Date;

import com.iflytek.pojo.User;

public class UserDao {
	/**
	 *    数据库交互层
	 * @param username
	 * @param password
	 * @return
	 */
	public User queryByUsernameAndPassword(String username, String password) {
		// 执行查询操作
		User user = new User("admin","admin",18,new Date(),0,"110110200108071264");
		if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
			return user;
		}
		return null;
	}
	
}
