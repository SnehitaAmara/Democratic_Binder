package com.sdp3.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table
public class Question {
	
	public Question() {

	}
	
	
	
	public Question(int qId, String title, String opt1, String opt2, String opt3, int ans, int chose) {
		super();
		this.qId = qId;
		this.title = title;
		this.opt1 = opt1;
		this.opt2 = opt2;
		this.opt3 = opt3;
		this.ans = ans;
		this.chose = chose;
	}



	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int qId;
	private String title;
	private String opt1;
	private String opt2;
	private String opt3;
	private int ans;
	private int chose;
	
	public int getAns() {
		return ans;
	}
	public void setAns(int ans) {
		this.ans = ans;
	}
	public int getChose() {
		return chose;
	}
	public void setChose(int chose) {
		this.chose = chose;
	}
	public int getqId() {
		return qId;
	}
	public void setqId(int qId) {
		this.qId = qId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOpt1() {
		return opt1;
	}
	public void setOpt1(String opt1) {
		this.opt1 = opt1;
	}
	public String getOpt2() {
		return opt2;
	}
	public void setOpt2(String opt2) {
		this.opt2 = opt2;
	}
	public String getOpt3() {
		return opt3;
	}
	public void setOpt3(String opt3) {
		this.opt3 = opt3;
	}
	
	

}
