package com.fight.edu.entity;

public class Planes {
     private int id;
     private String type ;
     private int setcount;
     private int eco_row;
     private int eco_culm;
     private int bus_row;
     private int bus_culm;
     private int fir_row;
     private int fir_culm;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getSetcount() {
		return setcount;
	}
	public void setSetcount(int setcount) {
		this.setcount = setcount;
	}
	public int getEco_row() {
		return eco_row;
	}
	public void setEco_row(int eco_row) {
		this.eco_row = eco_row;
	}
	public int getEco_culm() {
		return eco_culm;
	}
	public void setEco_culm(int eco_culm) {
		this.eco_culm = eco_culm;
	}
	public int getBus_row() {
		return bus_row;
	}
	public void setBus_row(int bus_row) {
		this.bus_row = bus_row;
	}
	public int getBus_culm() {
		return bus_culm;
	}
	public void setBus_culm(int bus_culm) {
		this.bus_culm = bus_culm;
	}
	public int getFir_row() {
		return fir_row;
	}
	public void setFir_row(int fir_row) {
		this.fir_row = fir_row;
	}
	public int getFir_culm() {
		return fir_culm;
	}
	public void setFir_culm(int fir_culm) {
		this.fir_culm = fir_culm;
	}
	public Planes() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Planes(int id, String type, int setcount, int eco_row, int eco_culm, int bus_row, int bus_culm, int fir_row,
			int fir_culm) {
		super();
		this.id = id;
		this.type = type;
		this.setcount = setcount;
		this.eco_row = eco_row;
		this.eco_culm = eco_culm;
		this.bus_row = bus_row;
		this.bus_culm = bus_culm;
		this.fir_row = fir_row;
		this.fir_culm = fir_culm;
	}
     
     
}
