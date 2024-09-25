package com.day4.abstraction;

public class Customer1 extends Hotel {
	@Override
	void friedRice() {
		System.out.println("Chicken with extra spicy");
		
	}

	@Override
	void juice() {
		System.out.println("Watermelon with extra ice cubes");
		
	}

	@Override
	void shawarma() {
		System.out.println("Plate shawarma with extra 2 kuboos");
		
	}
	public static void main(String[] args) {
		Customer1 c1 = new Customer1();
		c1.briyani();
		c1.friedRice();
		c1.juice();
		c1.shawarma();
	}
}
