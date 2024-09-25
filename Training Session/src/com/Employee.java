package com;

public class Employee {
	
	static String companyName= "TSS";
	int eid;
	String name;
	
	Employee(int eid,String name){
		this.eid=eid;
		this.name=name;
		
	}
	
	
	public static void main(String[] args) {
		Employee e1 = new Employee(1,"Abi");
		Employee e2 = new Employee(2,"Priya");
		printDetails(e1);
		printDetails(e2);
		
		
	}
	public static void printDetails(Employee e) {
		System.out.println(e.eid +"-->"+e.name+"-->"+companyName);
	}
	

}
