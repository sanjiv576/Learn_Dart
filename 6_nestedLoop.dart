void main(){

	// Nested Labelled FOR Loop using BREAK/CONTINUE

  // Note: Same as Java for break and continue keywords but slight different for nested loop

print("------- output - Labelled For loop : using names for outer and inner loops-----------");

	myOuterLoop: for (int i = 1; i <= 3; i++) {

		myInnerLoop: for (int j = 1; j <= 3; j++) {
			print("$i $j");

			if (i == 2 && j == 2) {
				break myInnerLoop;  // give loop name to break e.g myInnerLoop or myOuterLoop
			}
		}
	}


print("------- output - normal for loop: without using names for outer and inner loops-----------");
// 
  for (int i = 1; i <= 3; i++) {

		for (int j = 1; j <= 3; j++) {
			print("$i $j");

			if (i == 2 && j == 2) {
				break ;
			}
		}
	}
}