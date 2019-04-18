package com.iflytek.service;

import com.iflytek.dao.UserDao;
import com.iflytek.pojo.User;

public class UserService {
	UserDao dao = new UserDao();
	
	/**
	 *   这里是业务操作   方法名称和业务名称是一致的
	 * @param username
	 * @param password
	 * @return
	 */
	public User login(String username, String password) {
		
		// model和数据库交互
		return dao.queryByUsernameAndPassword(username, password);
	}
	
}
