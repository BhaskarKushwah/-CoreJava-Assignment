package assignment_third;

public class EmployeeCon   {
private String id;
private String name;
private String email;
private int age;
private String dateBrith;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id=id;	
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getDateBrith() {
	return dateBrith;
}
public void setDateBrith(String dateBrith) {
	this.dateBrith = dateBrith;
}
@Override



public String toString () {
	return this.id+" "+name+" "+email+" "+dateBrith+" "+age;
	
}


	

}
