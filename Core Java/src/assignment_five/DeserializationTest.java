package assignment_five;

import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.util.ArrayList;

public class DeserializationTest {

	public static void main(String[] args) {
		FileInputStream fileInputStream;
		ArrayList<Student> arrayList = null;// create obejct arraylist<student>
		try {
			fileInputStream = new FileInputStream("output.ser");
			ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
			arrayList = (ArrayList<Student>) objectInputStream.readObject();// is down casting

			for (Student student : arrayList) {
				student.printDetails();
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	}
}