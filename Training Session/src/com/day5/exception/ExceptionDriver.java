package com.day5.exception;

import java.util.Scanner;

public class ExceptionDriver {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the color of the team");
		String color = sc.next();
		ExceptionDriver e = new ExceptionDriver();
		e.getTeam(color);
		sc.close();
	}

	public void getTeam(String color) {
		if (color.equals("yellow")) {
			try {
				throw new CSKException();
			} catch (CSKException e) {
				e.printStackTrace();
				System.out.println("Caught...");
			}
		}
	}
}
