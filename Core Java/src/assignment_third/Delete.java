package assignment_third;

import java.util.ArrayList;
import java.util.Iterator;

public class Delete {

	public boolean deleteEmp(String id) {
		Sort sort = new Sort();
		ArrayList<EmployeeCon> arrayList = sort.readData();
		Iterator iterator = arrayList.iterator();
		while (iterator.hasNext()) {
			EmployeeCon employeeCon = (EmployeeCon) iterator.next();
			if (id.equals(employeeCon.getId()))
				iterator.remove();
		}
		/*
		 * for (EmployeeCon employeeCon : arrayList) { System.out.println(employeeCon);
		 * }
		 */
		Add add = new Add();
		add.addEmp(arrayList, false);
		return true;
	}

}
