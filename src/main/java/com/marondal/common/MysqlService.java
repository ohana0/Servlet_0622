package com.marondal.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private static MysqlService mysqlService = null;
	
	Connection connection = null;
	Statement statement = null;
	
	public static MysqlService getInstance() {
		if(mysqlService == null) {
			mysqlService = new MysqlService();
			
		}
		
		return mysqlService;
	}
	
	private MysqlService() {
		
	}
	
	
	//접속을 위한 기능 메소드
	public void connect() {
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			
			//접속 주소, 아이디,비밀번호
			String url = "jdbc:mysql://localhost:3306/donghui";
			String userId = "root";
			String password = "root";
			
			//접속
			connection = DriverManager.getConnection(url,userId,password);
			statement = connection.createStatement();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//쿼리 수행을 위한 기능 메소드
	public ResultSet select(String query) {
		
		
		try {
			ResultSet resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			
			e.printStackTrace();
			return null;
		}
	}
	// insert,update,delete
	public int update(String query) {
		try {
			//실행된 행의 개수가 리턴됨
			int count = statement.executeUpdate(query);
			return count;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			//실행된 행의 개수는 보통 양수니깐 에러상황을 알리기위해 음수값을 리턴함.
			return -1;
		}
	}
	
	
	
	
	//접속을 했으면 접속귾는거도있어야지
	
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
