package com.admin.portal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "student")

public class Student {
	
	public Student() {
		
	}

	@Id
	@Column(name = "sid")
	//@GeneratedValue(strategy = GenerationType.IDENTITY)  //for auto increment
	private String sid;
	
	
	@Column(name = "sname")
	private String sname;
		
	@Column(name = "cid")
	private int cid;


	
	
	public Student(String sid, String sname, int cid) {
		this.sid = sid;
		this.sname = sname;
		this.cid = cid;
	}

	@ManyToOne
    @JoinColumn(name = "cid")
	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}
	
	
	
}
