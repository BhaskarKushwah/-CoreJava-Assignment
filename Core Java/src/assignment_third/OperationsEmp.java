package assignment_third;

import java.util.ArrayList;
import java.util.Scanner;

public class OperationsEmp {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		while (true) {

			System.out.println("1 Add    Employee");
			System.out.println("2 sort   Employee and save file Ascending");
			System.out.println("3 Search Employee");
			System.out.println("4 Delete Employee");
			switch (scanner.nextInt()) {
			case 1: {

				ArrayList<EmployeeCon> arrayList = new ArrayList<>();
				Add add = new Add();
				System.out.println("Enter Total Employee");
				int temp = scanner.nextInt();
				for (int i = 1; i <= temp; i++) {
					EmployeeCon employeeCon = new EmployeeCon();
					System.out.println("Enter Employee Id");
					employeeCon.setId(scanner.next());
					System.out.println("Enter Employee Name ");
					employeeCon.setName(scanner.next());
					System.out.println("Enter Employee Email Address");
					employeeCon.setEmail(scanner.next());
					System.out.println("Enter Employee  Date of Brith");
					employeeCon.setDateBrith(scanner.next());
					System.out.println("Entee Employee Age");
					employeeCon.setAge(scanner.nextInt());
					arrayList.add(employeeCon);

				}
				add.addEmp(arrayList, true);//call addEmp write data 
				System.out.println("Done");
				break;

			}
			case 2: {
				Sort sort = new Sort();
				ArrayList<EmployeeCon> arrayList1 = sort.readData();//read data sort after file sort order
				for (EmployeeCon employeeCon : arrayList1) {
					System.out.print(employeeCon.getId() + "		   \t");
					System.out.print(employeeCon.getName() + " 	   \t");
					System.out.print(employeeCon.getEmail() + " 	   \t");
					System.out.print(employeeCon.getDateBrith() + " \t");
					System.out.print(employeeCon.getAge() + "\t 	   \n");

				}

			}
				break;
			case 3: {
				EmployeeCon employeeCon = null;
				Serach serach = new Serach();

				System.out.print("Enter Employee Id");
				employeeCon = serach.serachId(scanner.next());//call serach method return data found are not 
				if (employeeCon == null) {
					System.out.print("Invalid ID");
				} else {
					System.out.println("Id				" + employeeCon.getId());
					System.out.println("Name			" + employeeCon.getName());
					System.out.println("Email		 	" + employeeCon.getEmail());
					System.out.println("Date of Brith	" + employeeCon.getAge());
				}

			}
				break;
			case 4: {
				System.out.print("Enter id ");
				Delete delete = new Delete();//call delete method and Serach id after found delete and  data recond
				Boolean check = delete.deleteEmp(scanner.next());
				if (check) {
					System.out.println("Done");
				} else {
					System.out.println("Invalid");
				}
			}
				break;
			default:
				throw new IllegalArgumentException("Unexpected value: " + scanner);
			}
		}
	}
}
