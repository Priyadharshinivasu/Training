package com.day3;

public class StringBufferExample {
	public static void main(String[] args) {
		StringBuffer sb1 = new StringBuffer("TSS java");
		StringBuffer sb2 = new StringBuffer("TSS java");
		
		sb1.append(" team"); 
		System.out.println(sb1); 
		sb1.replace(4, 5, "J");
		sb1.replace(9, 10, "T"); 
		System.out.println(sb1);
		 
		System.out.println(sb1.hashCode());
		System.out.println(sb2.hashCode());
		System.out.println(sb1 == sb2);
		System.out.println(sb1.toString().equals(sb2.toString()));
	}
}
