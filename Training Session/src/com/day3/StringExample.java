package com.day3;

public class StringExample {
	public static void main(String[] args) {
		String s1 = "TSS";
		String s2 = "Java";
		String s3 = null;
		String s4 ="Java";

		System.out.println(s1 + " " + s2 + " " + s3); 
		System.out.println(s1.concat(s2));
		
		System.out.println(s1.equals(s2));
		System.out.println(s1.hashCode());
		System.out.println(s2.hashCode());
		System.out.println(s4.hashCode());
		System.out.println(s4.equals(s2));
	}

}
