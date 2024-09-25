package com.day3;

public class StringBuilderExample {
	public static void main(String[] args) {
		StringBuilder sb1 = new StringBuilder("Java");
		StringBuilder sb2 = new StringBuilder("Java");

		System.out.println(sb1.toString().equals(sb2.toString()));
		System.out.println(sb1.capacity());
		System.out.println(sb1.hashCode());
		System.out.println(sb2.hashCode());
	}

}
