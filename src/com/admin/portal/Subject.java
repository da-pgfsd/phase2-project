package com.admin.portal;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "subject")


public class Subject {
	
	public Subject() {
		
	}


	@Id
	@Column(name = "subid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)  //for auto increment
	private int subid;
	
	
	@Column(name = "subname")
	private String subname;
	
	@Column(name = "cid")
	private int cid;

	

	public Subject(String subname, int cid) {
		this.subname = subname;
		this.cid = cid;
	}
	@OneToMany(mappedBy = "subject", cascade = CascadeType.ALL)
	
	@ManyToOne
    @JoinColumn(name = "cid")
	public int getSubid() {
		return subid;
	}

	public void setSubid(int subid) {
		this.subid = subid;
	}

	public String getSubname() {
		return subname;
	}

	public void setSubname(String subname) {
		this.subname = subname;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}


	
	
}
