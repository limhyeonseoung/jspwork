package ch06;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class UseBeanDB4 {
	private final String JDBC_DRIVER = "oracle.jdbc.OracleDriver";
	private final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final String USER = "tjoeun";
	private final String PASS = "1234";
	
public UseBeanDB4() {
	try {	
		Class.forName(JDBC_DRIVER);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
}

public ArrayList<Bean> getList() {
	ArrayList<Bean> alist = new ArrayList<Bean>();
	try {
		Connection con = DriverManager.getConnection(JDBC_URL,USER,PASS);
		Statement st = con.createStatement();
		String query = "select * from employee";
		ResultSet rs = st.executeQuery(query);
		
		while(rs.next()) {
			Bean bean = new Bean();
			bean.setEmp_id(rs.getString("emp_id"));
			bean.setEmp_name(rs.getString("emp_name"));
			bean.setDept_code(rs.getString("dept_code"));
			alist.add(bean);
		}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return alist;
	}
}