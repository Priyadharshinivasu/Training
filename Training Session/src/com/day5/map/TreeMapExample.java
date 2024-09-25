package com.day5.map;

import java.util.Map;
import java.util.TreeMap;

public class TreeMapExample {
	public static void main(String[] args) {
		Map<Integer, String> m  = new TreeMap<Integer, String>();
		m.put(1, "Briyani Brothers");
		m.put(2, "Thalapakatti Briyani");
		m.put(3, "Salem RR Briyani");
		m.put(4, "SS Hyderabad Bryani");
		m.put(5, "Khalids Briyani");
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
