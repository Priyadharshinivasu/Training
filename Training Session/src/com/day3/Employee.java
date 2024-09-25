package com.day3;

public class Employee {
	int empID;
	String name;
	private double salary;
	Employee(int empID,String name){
		this.empID=empID;
		this.name=name;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	
	//@Override
	public String toString() {
		return "Employee [empID=" + empID + ", name=" + name + ", salary=" + salary + "]";
	}
	
	

}
