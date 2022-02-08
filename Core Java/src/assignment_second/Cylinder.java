package assignment_second;

public class Cylinder {

	public double area(int radius, int height) throws Exception {
		if (radius >= 0 && height >= 0) {
			double ans = (2 * Math.PI * height) + (2 * Math.PI * Math.pow(radius, 2));
			return ans;
		} else {
			throw new Exception("Value should be greater then 0 it is postive");
		}
	}
	public double volume(int radius, int height) throws Exception {

		if (radius >= 0 && height >= 0) {
			double ans = Math.PI * Math.pow(radius, 2) * height;
			return ans;
		} else {
			throw new Exception("Value should be greater then 0 it is postive");
		}
	}
}
