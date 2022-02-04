package assignment_second;

public class Rectangle {

	public double area(int length, int width) throws Exception {
		// TODO Auto-generated method stub
		if (length >= 0 && width >= 0) {
			double ans = length * width;
			return ans;
		} else {
			throw new Exception(" Value should be greater then 0 it is postive");
		}

	}

	public double circumference(int length, int width) throws Exception {
		// TODO Auto-generated method stub
		if (length >= 0 && width >= 0) {
			double ans = 2 * (length + width);
			return ans;
		} else {
			throw new Exception(" Value of is greater then  0 it is postive");
		}
	}
	public double volume(int length, int width, int hight) throws Exception {
		// TODO Auto-generated method stub
		if (length >= 0 && width >= 0 && hight >= 0) {
			double ans = length * width * hight;
			return ans;
		} else {
			throw new Exception(" Value of is greater then  0 it is postive");
		}

	}

}
