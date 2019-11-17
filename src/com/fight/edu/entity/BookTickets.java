package com.fight.edu.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;


public class BookTickets implements Serializable{
	// private String tab;
	 private Integer id;
     private String name;//姓名
     private int sex;//性别
     private String user;//用户名
     private String username;//用户名   未手动添加且字段名和实体类名不一样时使用
     private int plane_id;//飞机型号
     private int fight_id;//航班班次
     private int row;//座位行
     private int column;//座位列
     private int class_id;//座位id
     private int pastype;//乘客类型
     private int isbefore;//是否前排
     private int iswindow;//是否靠窗
     private int isasile;//是否靠过道
     private int isgate;//是否靠登机口
     private Timestamp booktime;//订票时间
     
   //关联属性，因为一个用户有多个记录，所以是list类型
 	private List<Seties> seties;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public int getPlane_id() {
		return plane_id;
	}
	public void setPlane_id(int plane_id) {
		this.plane_id = plane_id;
	}
	public int getFight_id() {
		return fight_id;
	}
	public void setFight_id(int fight_id) {
		this.fight_id = fight_id;
	}
	
	public int getRow() {
		return row;
	}
	public void setRow(int row) {
		this.row = row;
	}
	public int getColumn() {
		return column;
	}
	public void setColumn(int column) {
		this.column = column;
	}
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	public int getPastype() {
		return pastype;
	}
	public void setPastype(int pastype) {
		this.pastype = pastype;
	}
	
	public int getIsbefore() {
		return isbefore;
	}
	public void setIsbefore(int isbefore) {
		this.isbefore = isbefore;
	}

	public int getIswindow() {
		return iswindow;
	}
	public void setIswindow(int iswindow) {
		this.iswindow = iswindow;
	}
	public int getIsasile() {
		return isasile;
	}
	public void setIsasile(int isasile) {
		this.isasile = isasile;
	}
	public int getIsgate() {
		return isgate;
	}
	public void setIsgate(int isgate) {
		this.isgate = isgate;
	}
	public Timestamp getBooktime() {
		return booktime;
	}
	public void setBooktime(Timestamp booktime) {
		this.booktime = booktime;
	}
	
	
	public List<Seties> getSeties() {
		return seties;
	}
	public void setSeties(List<Seties> seties) {
		this.seties = seties;
	}
	@Override
	public String toString() {
		return "BookTickets [id=" + id + ", name=" + name + ", sex=" + sex + ", user=" + user + ", username=" + username
				+ ", plane_id=" + plane_id + ", fight_id=" + fight_id + ", row=" + row + ", column=" + column
				+ ", class_id=" + class_id + ", pastype=" + pastype + ", isbefore=" + isbefore + ", iswindow="
				+ iswindow + ", isasile=" + isasile + ", isgate=" + isgate + ", booktime=" + booktime + ", seties="
				+ seties + "]";
	}
	
	
	
	
	
     
}
