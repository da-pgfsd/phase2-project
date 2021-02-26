package com.admin.portal;

import java.util.List;
import java.util.Scanner;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;




public class master {
	
	private  SessionFactory theFactory;
	private  Session theSession;
	
	public master() {
		
		// Reference to the Session Factory
		 theFactory = new Configuration() 
					.configure("hibernateConfig.xml")
					.addAnnotatedClass(Sclass.class)
					.addAnnotatedClass(Student.class)
				    .addAnnotatedClass(Subject.class)
					.addAnnotatedClass(Teacher.class)
					.addAnnotatedClass(ClassDetails.class)
					.buildSessionFactory();
		
		 theSession=theFactory.getCurrentSession();
		 theSession.beginTransaction();
	}

	public static void main(String[] args) {
				
		master obj = new master();
			
	}
		
	public void addClassdata(String name) {  //Add record to class table
			
			try {
			
			    Sclass cobj =new Sclass(name);
				theSession.save(cobj);
				this.commitTheTransaction();
				
			System.out.println("Class "+name+ "is added");		    
					
			}finally {
				theFactory.close();
			}
							
		}
	
	public void addStudentData(String sid,String sname, int cid) {  //Add record to student table
		
		try {
		
			Student cobj = new Student(sid,sname,cid);
			theSession.save(cobj);
			this.commitTheTransaction();
			
			System.out.println("\nStudent "+sname+ "is added to the DB");		    
		  					
		}catch (Exception e) {
			System.out.println("Error: Record already exist"+e.getMessage());
		}finally {
			theFactory.close();

			
		}
						
	}
	
   public void addSubjectData(String subname, int cid) {  //Add record to student table
		
		try {
		
			Subject cobj = new Subject(subname,cid);
			theSession.save(cobj);
			this.commitTheTransaction();
			
			System.out.println("Subject "+subname+ "is added to the DB");		    
		    /* FOR REFERENCE
		    //READ DATA FROM TABLE
		    System.out.println("Class Id: " +cobj.getCid());
		     Sclass read=theSession.get(Sclass.class, cobj.getCname());
			//Sclass read=theSession.get(Sclass.class, 1);
			System.out.println(read); */
								
		}finally {
			theFactory.close();
		}
						
	}

    public void addTeacherData(String tname, int cid, int subid) {  //Add record to student table
	
	   try {
	
		Teacher cobj = new Teacher(tname,cid, subid);
		theSession.save(cobj);
		this.commitTheTransaction();
		
		System.out.println("Teacher "+tname+ "is added to the DB");		    
	  
				
	}finally {
		theFactory.close();
	}
					
}
    public List<Sclass> viewClassdata() { //View all class data
    	
    	try {
        
	    List<Sclass> classes= theSession.createQuery("from Sclass").getResultList();
	
	    this.commitTheTransaction();
	    return classes;
		
	     	}finally {
			theFactory.close();
		}
		
		
	 }
    
  public List<Student> viewStudentDataById(int id) { //View all student data
    	
    	try {
    	
	    List<Student> students= theSession.createQuery("from Student s where s.sid=:id").getResultList();
	
		this.commitTheTransaction();
		return students;
	 	 }finally {
			theFactory.close();
		}
		
	 }
 
  public List<Student> viewStudentDataforClass(int id) { //View student data for a specific class
	
	try {
	    		
    List<Student> students= theSession.createQuery("from Student where cid='"+id+"'").getResultList();

	for (Student theStudent :students) {
    	System.out.println(theStudent);
    
    }
	this.commitTheTransaction();
	return students;
	
 	 }finally {
		theFactory.close();
	}
 }

	
 public List<Student> viewStudentData() { //View all student data
    	
    	try {
    	
	    List<Student> students= theSession.createQuery("from Student").getResultList();
	
		this.commitTheTransaction();
		return students;
	 	 }finally {
			theFactory.close();
		}
		
	 }
 
    
  
    public List<Subject> viewSubjectData() { //View all subject data
    	
    	try {
    
	    List<Subject> subjects= theSession.createQuery("from Subject").getResultList();
	
		this.commitTheTransaction();
		return subjects;
	     	}finally {
			theFactory.close();
		}
	 }
    
    public List<Teacher> viewTeacherData() { //View all teacher data
    	
    	try {
    
	    List<Teacher> teachers= theSession.createQuery("from Teacher").getResultList();
	
		this.commitTheTransaction();
		return teachers;
		
	     	}finally {
			theFactory.close();
		}
	 }
 
 public List<Teacher> viewTeacherDatabyforClass(int id) { //View all teacher data by class id
    	
    	try {
    
	    List<Teacher> teachers= theSession.createQuery("from Teacher where cid='"+id+"'").getResultList();
	
		this.commitTheTransaction();
		return teachers;
		
	     	}finally {
			theFactory.close();
		}
	 }
 
 
 public List<Subject> viewSubjectDatabyforClass(int id) { //View all teacher data by class id
    	
    	try {
    
	    List<Subject> subjects= theSession.createQuery("from Subject where cid='"+id+"'").getResultList();
	
		this.commitTheTransaction();
		return subjects;
		
	     	}finally {
			theFactory.close();
		}
	 }
 
 public List<ClassDetails> viewclassReport(int id) {
	 
		try {
       
		String HQL = "Select sub.subname,t.tname from Subject sub inner join Teacher t ON sub.subid=t.subid where sub.cid='"+id+"'";
			
         List <ClassDetails> sublist = theSession.createQuery(HQL).getResultList();
        
         for (ClassDetails theClassDetails :sublist) {
         	System.out.println(theClassDetails);
         
         }
         
         this.commitTheTransaction();	
		  return sublist;
		
	     	}finally {
	     			     			
			theFactory.close();
			
		}
	 }
 

 
	void commitTheTransaction() {
   //Commit the transaction
		theSession.getTransaction().commit();
	}
}

