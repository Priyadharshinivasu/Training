package com.day4.collection;

import java.util.ArrayList;

public class EmployeeID {
	public static void main(String[] args) {
		ArrayList<Integer> list = new ArrayList<>();
		list.add(101);
		list.add(102);
		list.add(103);
		list.add(104);
		for(int i=0;i<list.size();i++) {
			if(list.get(i)==103) {
				list.remove(i);
			}
		}
		System.out.println(list);
	}
}
