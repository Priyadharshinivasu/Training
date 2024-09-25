package com.day3;

public class Instagram implements Application {
	
	@Override
	public void chat() {
		System.out.println("Message from Instagram");
		
	}

	@Override
	public void call() {
		System.out.println("Call from Instagram");
		
	}
	public static void main(String[] args) {
		WhatsApp w = new WhatsApp();
		w.chat();
		w.call();
		
		Instagram i = new Instagram();
		i.chat();
		i.call();
	}

}
