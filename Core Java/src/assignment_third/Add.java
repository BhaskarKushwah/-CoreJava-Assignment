package assignment_third;


import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;


public class Add {
	
		
	
		public boolean addEmp(ArrayList<EmployeeCon>arrayList,Boolean check) {
		try {
			FileWriter fileWriter = new FileWriter("Emoployee.txt",check);
			for(EmployeeCon employeeCon:arrayList) {
			fileWriter.write(" "+employeeCon.getId()+" "+employeeCon.getName()+" "+employeeCon.getEmail()+" "+employeeCon.getDateBrith()+" "+employeeCon.getAge());
		}fileWriter.flush();
			fileWriter.close();
			return true;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
			}

	}
		
}
