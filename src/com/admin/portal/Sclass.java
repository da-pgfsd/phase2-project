package com.admin.portal;
import java.util.*;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "sclass")

public class Sclass {
				
	public Sclass() {
		
	}

	@Id
	@Column(name = "cid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)  //for auto increment
	private int cid;
	
	@Column(name = "cname")
	private String cname;
	
		
		
	public Sclass(String cname) {  //Constructor without auto  increment fields
		this.cname = cname;
     }
	@OneToMany(mappedBy = "sclass", cascade = CascadeType.ALL)
		
	//@Override
	//public String toString() {
	//	return "Sclass [cid=" + cid + ", cname=" + cname + "]";
//	}


	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	

	
}
