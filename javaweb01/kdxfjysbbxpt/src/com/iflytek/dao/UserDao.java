package com.iflytek.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.iflytek.pojo.User;

public class UserDao {
	/**
	  *   和数据库连接
	 * 1、创建数据库
	 * 2、创建用户表
	 * 3、创建用户数据
	 * 4、使用jdbc连接数据库
	 * 		4.1 加入驱动包
	 * 		4.2 加载驱动
	 * 		4.3 获取连接--》 username password url
	 * 		    jdbc.driver=com.mysql.jdbc.Driver
				jdbc.url=jdbc:mysql://localhost:3306/kdxfjysbbxpt?useUnicode=true&characterEncoding=UTF-8&useSSL=false&autoReconnect=true&failOverReadOnly=false
				jdbc.name=root
				jdbc.password=123456
	 * 		4.4 创建statement --》操作sql语句
	 * 		4.5 执行sql 返回ResultSet 
	 * 		4.6 循环ResultSet 取值封装对象（List<User>)
	 * 		
	 * 5、实现增删改查操作
	 * 6、实现登录查询功能
	 * 7、效果演示
	 */
	public static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	public static final String JDBC_USERNAME = "root";
	public static final String JDBC_PASSWORD = "123456";
	public static final String JDBC_URL = "jdbc:mysql://localhost:3306/kdxfjysbbxpt?useUnicode=true&characterEncoding=UTF-8&useSSL=false&autoReconnect=true&failOverReadOnly=false";
	
	private static Connection conn = null;
	static {
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 *    数据库交互层
	 * @param username
	 * @param password
	 * @return
	 */
	public User queryByUsernameAndPassword(String username, String password) {
		// 执行查询操作
//		User user = new User("admin","admin",18,new Date(),0,"110110200108071264");
//		if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
//			return user;
//		}
//		return null;
		
		User user = null;
		String sql = "select id, username, password, age, birthday, sex, cardNo from user where username = ? and password = ?";
		try {
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, username);
			psmt.setString(2, password);
			
			ResultSet rs = psmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String un = rs.getString("username");
				String pw = rs.getString("password");
				int age = rs.getInt("age");
				Date birthday = rs.getDate("birthday");
				int sex = rs.getInt("sex");
				String cardNo = rs.getString("cardNo");
				user = new User(un, pw, age, birthday, sex, cardNo);
				user.setId(id);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public static void main(String[] args) {
		UserDao dao = new UserDao();
		User user = dao.queryByUsernameAndPassword("user", "user");
		System.out.println(user);
	}
	
}
