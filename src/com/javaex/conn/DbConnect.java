package com.javaex.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnect {

private Connection con;
	
	public DbConnect() {
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String userid = "webdb";
		String pwd = "webdb";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("����̹��ε强��");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			System.out.println("�����ͺ��̽� ���� �غ�...");
			con = DriverManager.getConnection(url, userid, pwd);
			System.out.println("�����ͺ��̽� ���� ����");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getCon() {
		return con;
	}
}