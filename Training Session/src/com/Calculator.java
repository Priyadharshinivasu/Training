package com;

import java.util.Scanner;

public class Calculator {
	
	public static void main(String[] args) {
		
		Calculator calc = new Calculator();
		Scanner sc = new Scanner(System.in);
		int num1 =sc.nextInt();
		int num2=sc.nextInt();
		System.out.println(add(num1,num2));
		System.out.println(sub(num1,num2));
		System.out.println(calc.mul(num1,num2));
		System.out.println(calc.div(num1,num2));
		System.out.println(calc.mod(num1,num2));
		sc.close();
		
	}
	
	public static int add(int num1,int num2) {
		int result =num1+num2;
		return result;
		
	}
	public static int sub(int num1,int num2) {
		int result =num1-num2;
		return result;
	}
	public double mul(int num1,int num2) {
		double result=num1*num2;
		return result;	
	}
	public double div(int num1,int num2) {
		double result = num1/num2;
		return result;
	}
	public int mod(int num1,int num2) {
		return num1%num2;
	}

}
