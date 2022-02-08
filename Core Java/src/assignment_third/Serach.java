package assignment_third;

import java.util.ArrayList;

public class Serach {
public EmployeeCon serachId(String id) {
	Sort sort=new Sort();

		ArrayList<EmployeeCon>arrayList=sort.readData();
		for (EmployeeCon employeeCon:arrayList)
		{
			if(id.equalsIgnoreCase(employeeCon.getId()))
			{
				
				return employeeCon;
			}
		}
		return null;
}
}
