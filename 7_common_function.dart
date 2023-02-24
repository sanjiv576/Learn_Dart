// function/method --> Same as Java but declar method/function outside of the main method

void main(){

  findPerimeter(4, 2);

	int rectArea = getArea(10, 5);
	print("The area is $rectArea");

  var radius = 3.2;
  double circleArea = circle(radius);
  print("Area of a circle with radius $radius cm is $circleArea cm^2.");
}


void findPerimeter(int length, int breadth) {

	int perimeter = 2 * (length + breadth);
	print("The perimeter is $perimeter");
}

int getArea(int length, int breadth) {

	int area = length * breadth;
	return area;
}

// shorthand function using FAT arrow ie. => ,which does not need return keyword
double circle(double radius) => 3.1416*radius*radius;