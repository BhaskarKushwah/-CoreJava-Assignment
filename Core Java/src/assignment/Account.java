package assignment.four;

public class Account extends Thread {
	String name;
	int balance = 1000;

	public Account(String name) {
		this.name = name;
	}

	public void withdraw(int amountWd) {

		if (balance >= amountWd) {
			balance = balance - amountWd;
			System.out.println("Current user       " + name);
			System.out.println("Amount withdraw    " + amountWd);
			System.out.println("Current reaming    " + balance);
			System.out.println("Current Thread	   " + Thread.activeCount());
		} else {
			System.out.println("Ininsufficient balance");
		}
	}

	public void run() {
		for (int i = 0; i < 5; i++) {
			withdraw(300);
		}
	}
}
