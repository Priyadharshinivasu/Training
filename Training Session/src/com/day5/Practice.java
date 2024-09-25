package com.day5;

import java.util.HashMap;
import java.util.Map;

public class Practice {
	public static void main(String[] args) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("Raja", 40);
		map.put("Roja", 42);
		map.put("Raja", 50);
		
		System.out.println(map);
		
	}

}
