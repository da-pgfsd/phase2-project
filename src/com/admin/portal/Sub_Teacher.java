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
@Table(name = "sub_teacher")

public class Sub_Teacher {
				


	@Column(name = "subject")
	@GeneratedValue
	private String subject;
	
	@Column(name = "teacher")
	private String teacher;

public  Sub_Teacher() {
		
	}
	
	public Sub_Teacher(String subject, String teacher) {
		
		this.subject = subject;
		this.teacher = teacher;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getTeacher() {
		return teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	
		
		
}