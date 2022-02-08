package assignment_second;

public class Square {

	public double area(int nextInt) throws Exception {
		// TODO Auto-generated method stub
		double ans = Math.pow(nextInt, 2);
		return ans;
	}

	public int perimeter(int nextInt) throws Exception {
		// TODO Auto-generated method stub
		if (nextInt >= 0) {
			int ans = 4 * nextInt;
			return ans;
		} else {
			throw new Exception("Value should be greater then 0 it is postive");
		}
	}
	public double volume(int nextInt) throws Exception {
		if (nextInt >= 0) {
			double ans = Math.pow(nextInt, 3);
			return ans;
		} else {
			throw new Exception("Value should be greater then 0 it is postive");
		}
	}
}
