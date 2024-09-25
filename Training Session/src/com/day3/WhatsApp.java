package com.day3;

public class WhatsApp implements Application{

	@Override
	public void chat() {
		System.out.println("Message from WhatsApp");
		
	}

	@Override
	public void call() {
		System.out.println("Call from WhatsApp");
		
	}
	

}
