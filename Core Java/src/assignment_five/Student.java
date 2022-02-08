package assignment_five;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Student implements Serializable{
	String firstName;
	Date dateOfBirth;
	Address address;


	public Student(String firstName, String dateOfBirth, Address address) {
		
		// TODO Auto-generated constructor stub
		this.firstName = firstName;
		try {
			this.dateOfBirth = new SimpleDateFormat("dd/MM/yyyy").parse(dateOfBirth);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	this.address=address;
		
	}
	public void printDetails() {
		
	
	System.out.println("First Name		"+firstName);
	System.out.println("Date of Brith	"+dateOfBirth);
	address.printAddress();
	}
	}
