package assignment.four;

public class AccountOverdrawSafeDemo extends Thread {
	String name;
	int balance = 1000;

	AccountOverdrawSafeDemo(String name) {
		this.name = name;

	}

	public synchronized void withdrawSafe(int amountWd) {

		if (balance >= amountWd) {
			balance = balance - amountWd;
			System.out.println("Current user       " + name);
			System.out.println("Amount withdraw    " + amountWd);
			System.out.println("Current reaming    " + balance);
			System.out.println("Current Thread	   " + Thread.activeCount());//active thread count 
		} else {
			System.out.println("Ininsufficient balance");
		}

	}

	public void run() {
		for (int i = 0; i < 5; i++) {
			withdrawSafe(300);
		}

	}

}
