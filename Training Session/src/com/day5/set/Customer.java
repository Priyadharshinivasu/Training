package com.day5.set;

import java.util.HashSet;
import java.util.Set;

public class Customer {
	public static void main(String[] args) {
		Set<Integer> s =new HashSet<Integer>();
		s.add(111);
		s.add(112);
		s.add(113);
		s.add(114);
		s.add(115);
		System.out.println(s.contains(116));
		System.out.println(s.hashCode());
		System.out.println(s.isEmpty());	
		System.out.println(s.remove(115));
		System.out.println(s.size());
		System.out.println(s);
		for(Integer i : s) {
			System.out.println(i);
		}
	}

}
