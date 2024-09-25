package com;

public class Mobile {
	
	static String brand = "OPPO";
	String model;
	String color;
	double price;
	
	Mobile(String model,String color,double price){
		this.model=model;
		this.color=color;
		this.price=price;
	}
		
	@Override
	public String toString() {
		return "Mobile [ Brand=" + brand + ", model=" + model + ", color=" + color + ", price=" + price + "]";
	}

	public static void main(String[] args) {
		Mobile m1 = new Mobile("A53","Blue",13000);
		Mobile m2 = new Mobile("A1k","Black",12000);
		System.out.println(m1+"\n"+m2);
		
	}

}
