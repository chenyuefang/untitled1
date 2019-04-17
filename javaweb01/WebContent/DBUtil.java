package com.iflytek;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class DBUtil {
	public String query(String username) {
		return "user5";
	}
	
	public List<User> queryAllUser(){
		List<User> users = new ArrayList<User>();
		
		// 相当于从数据库中查询到的用户信息
		for (int i = 0; i < 10; i++) {
			User user = new User("requestUser"+(i+1),"123456",22,"110xxx1997xxxxxxxx",new Date());
			users.add(user);
		}
		Map map = null;
		return users;
	}
	
	public List<User> queryAllSessionUser(){
		List<User> users = new ArrayList<User>();
		
		// 相当于从数据库中查询到的用户信息
		for (int i = 0; i < 10; i++) {
			User user = new User("sessionUser"+(i+1),"123456",22,"110xxx1997xxxxxxxx",new Date());
			users.add(user);
		}
		Map map = null;
		return users;
	}
	
	public List<User> queryAllApplicationUser(){
		List<User> users = new ArrayList<User>();
		
		// 相当于从数据库中查询到的用户信息
		for (int i = 0; i < 10; i++) {
			User user = new User("applicationUser"+(i+1),"123456",22,"110xxx1997xxxxxxxx",new Date());
			users.add(user);
		}
		Map map = null;
		return users;
	}
}
