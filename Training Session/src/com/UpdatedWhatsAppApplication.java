package com;

public class UpdatedWhatsAppApplication extends WhatsAppApplication{
	
	public String chat() {
		return super.call() + " and " +  super.chat() + " simultaneously";
//		return " you can chat during call";
	
	}
	
	public static void main(String[] args) {
		UpdatedWhatsAppApplication u = new UpdatedWhatsAppApplication();
		System.out.println(u.chat());
		System.out.println(u.status());
		
	} 

}
