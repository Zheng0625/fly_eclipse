package com.fight.edu.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fight.edu.entity.Planes;
import com.fight.edu.entity.Seties;



public class DBUtil {
	public static ArrayList<ArrayList<Seties>> getAllStuInfo() {
		          Connection conn = null;
		          PreparedStatement ps = null;
		          ResultSet rs = null;
		          ArrayList<Seties> seties = new ArrayList<Seties>();
		          ArrayList<ArrayList<Seties>> setiess = new ArrayList<ArrayList<Seties>>();
		          try {
		              conn = DataSourceUtil.getConnection(Constants.url,
		                     Constants.username, Constants.password);
		             String sql = "select * from tab_class";
		             ps = conn.prepareStatement(sql);
		             rs = ps.executeQuery();         
		                 while (rs.next()) {
		                     int id = rs.getInt("id");
		                     int class_type = rs.getInt("class_type");
		                     int plane_id = rs.getInt("plane_id");
		                     int isbefore = rs.getInt("isbefore");
		                     int isgate = rs.getInt("isgate");
		                     int isasile = rs.getInt("isasile");
		                     int iswindow = rs.getInt("iswindow");
		                     int row = rs.getInt("row");
		                     int column = rs.getInt("column");
		                     int ischoose = rs.getInt("ischoose");
		                     Seties s = new Seties(id, class_type, plane_id,isbefore, isgate,isasile,iswindow,row,column,ischoose);
		                     seties.add(s);
		             }
		                     setiess.add(seties);
		         } catch (Exception e) {
		             e.printStackTrace();
		         } finally {
		 
		             try {
		                  if (null != rs) {
		                     rs.close();
		                 }
		                  if (null != ps) {
		                      ps.close();
		                  }
		                 if (null != conn) {
		                     DataSourceUtil.closeConnection(conn);
		                  }
		              } catch (SQLException e) {
		                  e.printStackTrace();
		             }
		  
		          }
		         return setiess;
		     }
		 
}
