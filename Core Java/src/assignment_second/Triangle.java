package assignment_second;

public class Triangle {

	public double area(int base, int height) throws Exception {
		if (base >= 0 && height >= 0) {
			int ans = base * height / 2;
			return ans;
		} else {
			throw new Exception("Value should be greater then 0 it is postive");
		}
	}

	public int perimeter(int one, int second, int third) throws Exception {
		// TODO Auto-generated method stub
		if (one >= 0 && second >= 0 && third >= 0) {
			int ans = one + second + third;
			return ans;
		} else {
			throw new Exception("  Value should be greater then 0 it is postive");
		}
	}

	public double volume(int base, int height, int lenght) throws Exception {
		// TODO Auto-generated method stub
		if (base >= 0 && height >= 0 && lenght >= 0) {
			double ans = (lenght * base * height) / 2;
			return ans;
		} else {
			throw new Exception("  Value should be greater then 0 it is postive");
		}
	}
}
