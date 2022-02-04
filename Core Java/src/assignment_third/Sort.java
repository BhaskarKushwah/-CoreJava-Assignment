package assignment_third;

import java.io.FileReader;

import java.util.ArrayList;
//import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
//import java.util.List;
import java.util.Scanner;

public class Sort {
	

	public static ArrayList<EmployeeCon> readData() {
		Scanner scanner = null;
		ArrayList<EmployeeCon> arrayList = new ArrayList<EmployeeCon>();

		try {
			scanner = new Scanner(new FileReader("Emoployee.txt"));
			while (scanner.hasNext()) {
				EmployeeCon employeeCon = new EmployeeCon();
				employeeCon.setId(scanner.next());
				employeeCon.setName(scanner.next());
				employeeCon.setEmail(scanner.next());
				employeeCon.setDateBrith(scanner.next());
				employeeCon.setAge(scanner.nextInt());
				arrayList.add(employeeCon);
			}
			Collections.sort(arrayList, new Comparator<EmployeeCon>() {
				public int compare(EmployeeCon a1, EmployeeCon a2) {
					return Integer.valueOf((a1.getId()).compareTo(a2.getId()));
				}
			});
			Add add = new Add();
			add.addEmp(arrayList, false);
			return arrayList;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return arrayList;
	}

}
