/* shape to calculate area and perimeters for :
Circle
 Rectangle
 Triangle
 Square
 Sphere
 Cylinder
*/
package assignment_second;

import java.util.Scanner;

import javax.imageio.plugins.tiff.ExifGPSTagSet;

public class Shape_Calculate {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Select the shape to calculate area and perimeters for :");
		System.out.println("1)  Circle");
		System.out.println("2) Rectangle");
		System.out.println("3) Triangle");
		System.out.println("4) Square");
		System.out.println("5) Sphere");
		System.out.println("6) Cylinder");
		System.out.println("7) Exit");
		while (true) {
			switch (scanner.nextInt()) {
			case 1: {
				System.out.println(" 1 )Find Area Of Circle");
				System.out.println(" 2 )Find Circumference Of Circle");
				System.out.println(" 3 )Find Volume Of Circle");

				Circle circle = new Circle();
				switch (scanner.nextInt()) {
				case 1: {

					System.out.println("Enter radius ");

					try {
						System.out.println("Area Of Circle is   " + circle.area(scanner.nextInt()));

					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					break;
				}
				case 2: {
					System.out.println("Enter radius ");
					try {
						System.out.println(" Circumference Of Circle is" + circle.circumference(scanner.nextInt()));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					break;
				}
				case 3: {
					System.out.println("Enter radius ");
					try {
						System.out.println("Volume Of Circle" + circle.volume(scanner.nextInt()));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					break;
				}
				default:
					throw new IllegalArgumentException("Unexpected value:chose 1 to 3  ");
				}
				break;
			}
			case 2: {
				System.out.println(" 1 )Find Area Of  Rectangle");
				System.out.println(" 2 )Find Circumference Of  Rectangle");
				System.out.println(" 3 )Find Volume Of  Rectangle");
				Rectangle rectangle = new Rectangle();
				switch (scanner.nextInt()) {
				case 1: {
					System.out.println("Enter length ");
					int length = scanner.nextInt();
					System.out.println("Enter width  ");
					int width = scanner.nextInt();
					try {
						System.out.println("Area Of  Rectangle is " + rectangle.area(length, width));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}
				case 2: {
					System.out.println("Enter length ");
					int length = scanner.nextInt();
					System.out.println("Enter width  ");
					int width = scanner.nextInt();
					try {
						System.out.println("Circumference Of  Rectangle  is" + rectangle.circumference(length, width));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}
				case 3: {
					System.out.println("Enter length ");
					int length = scanner.nextInt();
					System.out.println("Enter width  ");
					int width = scanner.nextInt();
					System.out.println("Enter height");
					int hight = scanner.nextInt();

					try {
						System.out.println("Volume Of  Rectangle  " + rectangle.volume(length, width, hight));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}
				default:
					throw new IllegalArgumentException("Unexpected value:chose 1 to 3  ");
				}
				break;
			}
			case 3: {
				System.out.println(" 1 )Find Area Of   Triangle");
				System.out.println(" 2 )Find Perimeter Of   Triangle");
				System.out.println(" 3 )Find Volume Of   Triangle");
				Triangle triangle = new Triangle();

				switch (scanner.nextInt()) {
				case 1: {
					System.out.println("Enter length ");
					int height = scanner.nextInt();
					System.out.println("Enter width  ");
					int base = scanner.nextInt();
					try {
						System.out.println("Area Of   Triangle " + triangle.area(height, base));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}
				case 2: {
					System.out.println("Enter one side ");
					int one = scanner.nextInt();
					System.out.println("Enter two side  ");
					int second = scanner.nextInt();
					System.out.println("Enter third side");
					int third = scanner.nextInt();
					try {
						System.out.println("Perimeter Of   Triangle " + triangle.perimeter(one, second, third));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}
				case 3: {
					System.out.println("Enter base ");
					int base = scanner.nextInt();
					System.out.println("Enter height  ");
					int height = scanner.nextInt();
					System.out.println("Enter lenght");
					int lenght = scanner.nextInt();
					try {
						System.out.println(" Volume Of   Triangle " + triangle.volume(base, height, lenght));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}
				default:
					throw new IllegalArgumentException("Unexpected value:chose 1 to 3  ");
				}

				break;
			}
			case 4: {
				System.out.println(" 1 )Find Area Of  Square");
				System.out.println(" 2 )Find Circumference Of Square");
				System.out.println(" 3 )Find Volume Of Square");
				Square square = new Square();
				switch (scanner.nextInt()) {
				case 1: {
					System.out.print("Enter Side");
					try {
						System.out.print("Area Of  Square" + square.area(scanner.nextInt()));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;

				}
				case 2: {
					System.out.print("Enter Four side length ");
					try {
						System.out.print(" Circumference Of Square " + square.perimeter(scanner.nextInt()));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;

				}
				case 3: {
					System.out.print("Length of side");
					try {
						System.out.print(" Volume Of Square " + square.volume(scanner.nextInt()));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}
				default:
					throw new IllegalArgumentException("Unexpected value:chose 1 to 3  ");
				}
				break;
			}
			case 5: {
				System.out.println(" 1 )Find Area Of  Sphere");
				System.out.println(" 2 )Find Circumference Of  Sphere");
				System.out.println(" 3 )Find Volume Of  Sphere");
				Sphere sphere = new Sphere();
				switch (scanner.nextInt()) {
				case 1: {
					System.out.println("Enter Radius ");
					try {
						System.out.println(" Area Of  Sphere is " + sphere.area(scanner.nextInt()));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}
				case 2: {
					System.out.print("Enter Radius");
					try {
						System.out.println("Circumference Of  Sphere" + sphere.circumference(scanner.nextInt()));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}
				case 3: {
					System.out.print("Enter Radius");
					try {
						System.out.print(" Volume Of  Sphere" + sphere.volume(scanner.nextInt()));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}
				default:
					throw new IllegalArgumentException("Unexpected value: chose 1 to 3 ");

				}
				break;
			}
			case 6: {
				System.out.println(" 1 )Find Area Of  Cylinder");
				System.out.println(" 2 )Find Volume Of Cylinder");

				Cylinder cylinder = new Cylinder();
				switch (scanner.nextInt()) {
				case 1: {
					System.out.print("  Enter Radius");
					int radius = scanner.nextInt();
					System.out.print("Enter height ");
					int height = scanner.nextInt();
					try {
						System.out.println("Area Of  Cylinder is " + cylinder.area(radius, height));
					} catch (Exception e) {

						e.printStackTrace();
					}
					break;
				}
				case 2: {
					System.out.print("  Enter Radius");
					int radius = scanner.nextInt();
					System.out.print("Enter height ");
					int height = scanner.nextInt();
					try {
						System.out.print("Volume Of Cylinder is " + cylinder.volume(radius, height));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					break;
				}

				default:
					throw new IllegalArgumentException("Unexpected value: chose 1 to 3 ");

				}
				break;
			}
			case 7: {
				System.out.print(" All done ");
				System.exit(0);
			}
			default:
				System.out.print("Please Enter Right Input");
			}
		}
	}
}
