package com.day3;

public class CardPayment implements Payment{

	@Override
	public void processPayment() {
		System.out.println("Payment is done through credit or debit card");
		
	}

}
