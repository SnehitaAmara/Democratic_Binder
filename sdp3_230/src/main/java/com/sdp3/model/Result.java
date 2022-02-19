package com.sdp3.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Result {
	
	@Id
	private int id;
	private String username;
	private int totalCorrect = 0;
	
//	public Result(int id, String username, int totalCorrect) {
//		super();
//		this.id = id;
//		this.username = username;
//		this.totalCorrect = totalCorrect;
//	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getTotalCorrect() {
		return totalCorrect;
	}
	public void setTotalCorrect(int totalCorrect) {
		this.totalCorrect = totalCorrect;
	}

}
