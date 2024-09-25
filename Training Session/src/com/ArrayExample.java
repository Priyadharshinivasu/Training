package com;

import java.util.Arrays;

public class ArrayExample {
	
	public static void main(String[] args) {
		
		int[] arr = new int[5];
		for(int i =0;i<arr.length;i++) {
			arr[i]=i-1+2;
		}
		System.out.println(Arrays.toString(arr));
		
		int[] temp = new int[arr.length];
		
		for(int i=0,j=temp.length-1;i<=arr.length-1 && j>=0;i++,j--) {
			temp[j] = arr[i];
		}
		System.out.println(Arrays.toString(temp));
		
	}

	
	
}
