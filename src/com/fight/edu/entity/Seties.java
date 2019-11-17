package com.fight.edu.entity;

import java.io.Serializable;

public class Seties implements Serializable{ 
   private String tab;
   private int id;
   private int class_type;
   private int plane_id;
   private int isbefore;
   private int isgate;
   private int isasile;
   private int iswindow;
   private int row;
   private int column;
   private int ischoose;
   
public String getTab() {
	return tab;
}
public void setTab(String tab) {
	this.tab = tab;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getClass_type() {
	return class_type;
}
public void setClass_type(int class_type) {
	this.class_type = class_type;
}
public int getPlane_id() {
	return plane_id;
}
public void setPlane_id(int plane_id) {
	this.plane_id = plane_id;
}
public int getIsgate() {
	return isgate;
}
public void setIsgate(int isgate) {
	this.isgate = isgate;
}
public int getIsasile() {
	return isasile;
}
public void setIsasile(int isasile) {
	this.isasile = isasile;
}
public int getIswindow() {
	return iswindow;
}
public void setIswindow(int iswindow) {
	this.iswindow = iswindow;
}
public int getIsbefore() {
	return isbefore;
}
public void setIsbefore(int isbefore) {
	this.isbefore = isbefore;
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
public int getIschoose() {
	return ischoose;
}
public void setIschoose(int ischoose) {
	this.ischoose = ischoose;
}

@Override
public String toString() {
	return "Seties [id=" + id + ", class_type=" + class_type + ", plane_id=" + plane_id + ", isbefore=" + isbefore
			+ ", isgate=" + isgate + ", isasile=" + isasile + ", iswindow=" + iswindow + ", row=" + row + ", column="
			+ column + ", ischoose=" + ischoose + "]";
}
public Seties() {
	super();
	// TODO Auto-generated constructor stub
}
public Seties(int id, int class_type, int plane_id,int isbefore, int isgate, int isasile, int iswindow, int row, int column,
		int ischoose) {
	super();
	this.id = id;
	this.class_type = class_type;
	this.plane_id = plane_id;
	this.isbefore = isbefore;
	this.isgate = isgate;
	this.isasile = isasile;
	this.iswindow = iswindow;
	this.row = row;
	this.column = column;
	this.ischoose = ischoose;
}
public Seties(int isbefore, int isgate, int isasile, int iswindow) {
	super();
	this.isbefore = isbefore;
	this.isgate = isgate;
	this.isasile = isasile;
	this.iswindow = iswindow;
}
public Seties(int id) {
	super();
	this.id=id;
}
   

   
}
