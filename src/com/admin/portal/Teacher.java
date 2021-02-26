package com.admin.portal;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "teacher")


public class Teacher  {
	
	public Teacher() {
		
	}
	

	@Id
	@Column(name = "tid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)  //for auto increment
	private int tid;
	
	
	@Column(name = "tname")
	private String tname;
	
	@Column(name = "cid")
	private int cid;
	
	@Column(name = "subid")
	private int subid;

	
	
	public Teacher(String tname, int cid, int subid) {
		this.tname = tname;
		this.cid = cid;
		this.subid = subid;
	}
	@ManyToOne
    @JoinColumn(name = "cid")
    @JoinColumn(name = "subid")
	

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getSubid() {
		return subid;
	}

	public void setSubid(int subid) {
		this.subid = subid;
	}




	

}
