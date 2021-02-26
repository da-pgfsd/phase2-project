package com.admin.portal;

import javax.persistence.Entity;
import javax.persistence.Table;


public class ClassDetails {


public ClassDetails() {
}
	
private String subname;
private String tname;
private int cid;
	
		public int getCid() {
	return cid;
}

public void setCid(int cid) {
	this.cid = cid;
}


		public ClassDetails(String subname, String tname, int cid) {
			super();
			this.subname = subname;
			this.tname = tname;
			this.cid = cid;
		}

		public String getSubname() {
			return subname;
		}

		public void setSubname(String subname) {
			this.subname = subname;
		}

		public String getTname() {
			return tname;
		}

		public void setTname(String tname) {
			this.tname = tname;
		}
		 
		 
	}


