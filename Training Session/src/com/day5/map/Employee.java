package com.day5.map;

import java.util.HashMap;
import java.util.Map;

public class Employee {
	public static void main(String[] args) {
		Map<Integer, String> m = new HashMap<Integer, String>();
		m.put(111, "Abi");
		m.put(112, "Priya");
		m.put(113, "Varshika");
		m.put(114, "Pavithra");
		m.put(115, "Preeti");
		System.out.println(m);
		System.out.println(m.containsKey(115));
		System.out.println(m.containsValue("Hii"));
		for(String s : m.values()) {
			System.out.print(s + " ");
		}
		System.out.println();
		for(int i :m.keySet()) {
			System.out.print(i + " ");
		}
	}

}
