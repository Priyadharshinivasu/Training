package com.day5.exception;

public class ExceptionExample {
	public static void main(String[] args) {
		int sum = 0;
		int digit = 10;
		String s1 = null;
		String s = "Priya";
		int[] a = {10,20,30};
		
		try {
			Class.forName("com.day5.exception.ExceptionExample");
			int result = digit/sum;
			System.out.println(s1.charAt(2));
			System.out.println(s.charAt(5));
			System.out.println(a[3]);
			System.out.println(result);
		}catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("Exception handled");
	}
}
