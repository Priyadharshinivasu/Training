package com.pattern;

import java.util.Scanner;

public class Parellelogram {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter rows : ");
		int rows = sc.nextInt();
		System.out.println("Enter cols : ");
		int cols = sc.nextInt();
		for(int i=1;i<=rows;i++) {
			for(int j=i;j<=rows-1;j++) {
				System.out.print("  ");
			}
			for(int j=1;j<=cols;j++) {
				System.out.print("* ");
			}
			System.out.println();
		}
	}

}
