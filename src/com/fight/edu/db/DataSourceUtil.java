package com.fight.edu.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;





public class DataSourceUtil {
	static {
		         try {
		             Class.forName("com.mysql.jdbc.Driver");
		        } catch (ClassNotFoundException e) {
		             e.printStackTrace();
		         }
		     }
		
		     /**
		     * 获取数据源
		     * 
		      * @throws SQLException
		      */
		    public static java.sql.Connection getConnection(String url, String user,
		             String password) throws SQLException {
		         return DriverManager.getConnection(url, user, password);
		    }
		 
		     /**
		     * 关闭数据源
		      * 
		      * @throws SQLException
		      */
		     public static void closeConnection(Connection conn) throws SQLException {
		         if (null != conn) {
		             conn.close();
		         }
		     }

}
