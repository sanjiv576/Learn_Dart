import 'dart:io';
import 'dart:async';
// import 'package:http/http.dart' as http;

Future<void> main() async {
  print('start');
  getCurrentTime();

  await for (String name in getMyFriendsName()) {
    print(name);
  }

  greet();
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

// Write a Dart function that uses a Future to print a message after a delay of 5 seconds.

void greet() async {
  var greetMsg = await printMessage();
  print(greetMsg);
}

Future<String> printMessage() async {
  late String message;
  await Future.delayed(Duration(seconds: 5), () {
    DateTime time = DateTime.now();
    int hour = time.hour;

    if (hour > 17) {
      message = "Good Evening";
    } else if (hour > 12) {
      message = 'Good Afternoon';
    } else {
      message = 'Good Morning';
    }
  });
  return message;
}


// Write a Dart program that uses async and await to perform two 
//HTTP requests in parallel and print their responses to the console.



// Future<void> main() async {
//   final response1 = http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
//   final response2 = http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/2'));
  
//   final responses = await Future.wait([response1, response2]);
  
//   for (var response in responses) {
//     print(response.body);
//   }
// }
