package assignment.four;

public class AccountOverdrawDemo {

	public static void main(String[] args) {
		System.out.println("Before Thread Safety");
		Account account = new Account("Bhaskar");
		Account account2 = new Account("Raglya");
		account.start();
		account2.start();

		/*
		 * 
		 * account.start(); account.withdraw("Raglya", 600);
		 */

		System.out.println("After Thread Safety");
		System.out.println("-----------------------");
		AccountOverdrawSafeDemo accountOverdrawSafeDemo = new AccountOverdrawSafeDemo("Sourabh");
		accountOverdrawSafeDemo.start();
		AccountOverdrawSafeDemo accountOverdrawSafeDemo2 = new AccountOverdrawSafeDemo("Rahul");
		accountOverdrawSafeDemo2.start();
	}

}
