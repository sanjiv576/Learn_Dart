import 'dart:io';

Future<void> main() async {
  print('start');
  getCurrentTime();

  await for(String name in getMyFriendsName()){
    print(name);
  }
  print('end');
}

// Write a program to print current time after 2 seconds using Future.delayed().
void getCurrentTime() async {
  late DateTime currentTime;
  await Future.delayed(Duration(seconds: 2), () {
    currentTime = DateTime.now();
  });
  print(currentTime);
}

// Write a program in dart that uses Future class to perform multiple
// asynchronous operations, wait for all of them to complete, and then print the results.

Stream<String> getMyFriendsName() async* {
  await Future.delayed(Duration(seconds: 2));
  yield 'Sudip';
  await Future.delayed(Duration(seconds: 2));
  yield 'Santosh';
}
