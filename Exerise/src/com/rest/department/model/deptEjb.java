package com.rest.department.model;

import java.sql.*;

public class deptEjb {
public void editDepartment(Department d){
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = null;
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "root");
		Statement stmt = conn.createStatement();
		String query = "update dept set deptno='"+d.getDeptno()+"',dname="+d.getDname()+"',loc="+d.getLoc();
        stmt.executeQuery(query);
	} catch (Exception ex) {
		ex.printStackTrace();
	}
}
public void deleteDepartment(Integer d){
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = null;
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "root");
		Statement stmt = conn.createStatement();
		String query = "delete * from dept where deptno='"+d;
        stmt.executeQuery(query);
	} catch (Exception ex) {
		ex.printStackTrace();
	}
}
    

}
