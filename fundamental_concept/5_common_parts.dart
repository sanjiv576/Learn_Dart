void main(){
  // common in Java --> if else
  print("-------- IF ELSE CONDITIONAL STATEMENTS -------------");

  // 1.  if else
  int a = 4;
  int b = 10;
  int c = 12;
  if(a>b && a >c){
    print("$a is greater");
  }
  else if(b>a && b>c){
    print("$b is greater");
  }
  else {
    print("$c is greater");

  }

  print("-------- TERNARY OPEARATOR -------------");

// 2.  ternary operator
  bool result = a != 0 ? true: false;
  print(result);


  	// exp1 ?? exp2 
	// If expr1 is non-null, returns its value; otherwise, evaluates and
	// returns the value of expr2.

	var name = null;
// use ?? instead of ? for null
	String nameToPrint = name ?? "Guest User";
	print(nameToPrint);

  print("-------- SWITCH CASE OUTPUT -------------");


  // 3. switch case
  // Switch Case Statements: Applicable for only 'int' and 'String'

	String grade = 'C';

	switch (grade) {

		case 'A':
			print("Excellent grade of A");
			break;

		case 'B':
			print("Very Good !");
			break;

		case 'C':
			print("Good enough. But work hard");
			break;

		case 'F':
			print("You have failed");
			break;
		default:
			print("Invalid Grade");
	}

  print("-------- FOR LOOP -------------");
// 4. FOR LOOP
  // WAP to find the even numbers between 1 to 10

	for (int i = 1; i <= 10; i++) {
		if ( i % 2 == 0) {
			print(i);
		}
	}

  print("-------- FOR EACH LOOP -------------");

	// for ..in loop
	List planetList = ["Mercury", "Venus", "Earth", "Mars"];
	for (String planet in planetList) {
		print(planet);
	}


  print("-------- WHILE LOOP -------------");

  	// WAP to find the even numbers between 1 to 10

	var  i = 1;
	while (i <= 10) {

		if (i % 2 == 0) {
			print(i);
		}

		i++;
	}

  print("-------- DO WHILE LOOP -------------");

  // DO-WHILE Loop
	// WAP to find the even numbers between 1 to 10

	int j = 1;

	do {

		if ( j % 2 == 0) {
			print(j);
		}

		j++;
	} while ( j <= 10);
}