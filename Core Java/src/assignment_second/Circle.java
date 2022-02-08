package assignment_second;

public class Circle {
	public double area(int radius) throws Exception {// Return value double
		if (radius >= 0) {
			double ans = Math.PI * Math.pow(radius, 2);// find area this formula

			return ans;
		}

		else {
			throw new Exception("Value should be greater then 0 it is postive");
		}
	}

	public double circumference(int radius) throws Exception {
		// TODO Auto-generated method stub
		if (radius >= 0) {
			double ans = 2 * Math.PI * radius;
			return ans;
		} else {
			throw new Exception("  Value should be greater then 0 it is postive");
		}
	}
	public double volume(int nextInt) throws Exception {
		// TODO Auto-generated method stub
		if (nextInt >= 0) {
			double ans = 4 / 3 * Math.PI * Math.pow(nextInt, 3);
			return ans;
		} else {
			throw new Exception("  Value should be greater then 0 it is postive");
		}
	}
}
