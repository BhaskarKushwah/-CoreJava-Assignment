package assignment_five;

import java.io.Serializable;

public class Address implements Serializable {
	String city;
	String state;
	int pincode;
	String country;

	public Address(String city, String state, int pincode, String country) {
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.country = country;

	}

	public void printAddress() {
		System.out.println("City	 " + city);
		System.out.println("state    " + state);
		System.out.println("pincode  " + pincode);
		System.out.println("country  " + country + "\n---------------------------");
	}
}
