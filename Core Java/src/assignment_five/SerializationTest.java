package assignment_five;


import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.rmi.activation.ActivationGroup_Stub;
import java.util.ArrayList;

import javax.print.attribute.standard.OutputDeviceAssigned;

public class SerializationTest {

	public static void main(String []args) {
		Address address1=new Address("inodre","MP",452001, "India");
		Student student1=new Student("Lokendra", "10/4/1975", address1);
		Address address2=new Address("khargone","MP",451001, "India");
		Student student2=new Student("Bhaskar", "04/05/1999", address2);
		Address address3=new Address("Bangalore", "KARNATAKA", 577245, "India");
		Student student3=new Student("Deepak","06/04/1985", address3);
		Address address4=new Address("Pune","Maharashtra", 	411004,"India");
		Student student4=new Student("priyanshi", "14/06/1995", address4);
		Address address5=new Address("Indore","MP",452001, "india");
		Student student5=new Student("Piyanka", "05/12/1995", address5);
				
		ArrayList<Student>arrayList=new ArrayList<>();
		arrayList.add(student1);
		arrayList.add(student2);
		arrayList.add(student3);
		arrayList.add(student4);
		arrayList.add(student5);
//	char[][] agrs;
	//	System.out.print(agrs[0]);
		
		try {
			FileOutputStream fileOutputStream=new FileOutputStream("Output.ser");
			ObjectOutputStream objectOutputStream=new ObjectOutputStream(fileOutputStream);
			objectOutputStream.writeObject(arrayList);
			System.out.print("Serialization is done");
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		

	}

}
