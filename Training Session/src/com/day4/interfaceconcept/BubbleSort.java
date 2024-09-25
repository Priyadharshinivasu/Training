package com.day4.interfaceconcept;

import java.util.Arrays;

public class BubbleSort implements SortAlgorithm{

	@Override
	public void sort() {
		int[] a = {89,43,98,12,3};
		for(int i=0;i<a.length;i++) {
			for(int j=i+1;j<a.length;j++) {
				if(a[i]>a[j]) {
					int temp = a[i];
					a[i]=a[j];
					a[j]=temp;
				}
			}
		}
//		System.out.println(a);
		System.out.println(Arrays.toString(a));
		
	}
	public static void main(String[] args) {
		BubbleSort b=new BubbleSort();
		b.sort();
	}
	
}
