package com.day3;

public class UpiPayment implements Payment{

	@Override
	public void processPayment() {
		System.out.println("Payment is done using UPI");
		
	}

	public static void main(String[] args) {
		UpiPayment u = new UpiPayment();
		u.processPayment();
		CardPayment c = new CardPayment();
		c.processPayment();
	}
}
