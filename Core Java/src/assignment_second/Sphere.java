package assignment_second;

public class Sphere {
	public double area(int nextInt) throws Exception {
		// TODO Auto-generated method stub
		if (nextInt >= 0) {
			double solve = 4 * Math.PI * Math.pow(nextInt, 2);
			return solve;
		} else {
			throw new Exception("  Value should be greater then 0 it is postive");
		}
	}
	public double circumference(int nextInt) throws Exception {
		if (nextInt >= 0) {
			double ans = 2 * (Math.PI) * nextInt;
			return ans;
		} else {
			throw new Exception("  Value should be greater then 0 it is postive");
		}
	}
	public double volume(int nextInt) throws Exception {
		if (nextInt >= 0) {
			double v = 4 / 3 * (Math.PI * Math.pow(nextInt, 3));
			return v;
		} else {
			throw new Exception("  Value should be greater then 0 it is postive");
		}
	}
}
