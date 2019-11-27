package com.DEStore.model;

import java.sql.Date;

public class Report {
	private Date date;
	private float total;
	private int countTotal;
	private float average;
	private int dayWeek;
	
	public Report(Date date, float total,
			int countTotal, float average, int dayWeek) {
		super();
		this.date = date;
		this.total = total;
		this.countTotal = countTotal;
		this.average = average;
		this.dayWeek = dayWeek;
	}

	public Date getDate() {
		return date;
	}

	public void setYear(Date date) {
		this.date = date;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public int getCountTotal() {
		return countTotal;
	}

	public void setCountTotal(int countTotal) {
		this.countTotal = countTotal;
	}

	public float getAverage() {
		return average;
	}

	public void setAverage(float average) {
		this.average = average;
	}

	public int getDayWeek() {
		return dayWeek;
	}

	public void setDayWeek(int dayWeek) {
		this.dayWeek = dayWeek;
	}	
	

}