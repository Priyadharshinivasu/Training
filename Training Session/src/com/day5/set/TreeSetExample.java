package com.day5.set;

import java.util.Set;
import java.util.TreeSet;

public class TreeSetExample {
	public static void main(String[] args) {
		Set<String> s = new TreeSet<String>();
		s.add("Priya");
		s.add("Abi");
		s.add("Java");
		s.add("TSS");
		s.add("Chennai");
		System.out.println(s);
		for(String str : s) {
			System.out.println(str);
		}
		s.remove("Chennai");
		System.out.println(s);
	}

}
