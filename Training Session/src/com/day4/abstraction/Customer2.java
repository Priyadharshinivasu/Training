package com.day4.abstraction;

public class Customer2 extends Hotel{
	@Override
	void friedRice() {
		System.out.println("No Thanks");
		
	}
	
	@Override
	void juice() {
		System.out.println("Watermelon with extra ice cubes");
		
	}

	@Override
	void shawarma() {
		System.out.println("Roll shawarma with extra 2 kuboos");
		
	}
	public static void main(String[] args) {
		Customer2 c2 = new Customer2();
		c2.juice();
		c2.shawarma();
		c2.dosa();
	}
}

