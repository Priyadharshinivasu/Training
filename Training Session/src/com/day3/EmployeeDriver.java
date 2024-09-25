package com.day3;

public class EmployeeDriver {
	public static void main(String[] args) {
		Employee e1 = new Employee(101,"Abi");
		e1.setSalary(35000);
		Employee e2 = new Employee(102,"Priya");
		e2.setSalary(30000);
		System.out.println(e1);
		System.out.println(e2);
	}

}
