import 'dart:io';

void main() {
  binar_1();
}

binar_1() {
  print("imagine a number from 1 till 128,be honest");
  int min = 0;
  int max = 128;
  int mid = (max + min) ~/ 2;
  stdout.write(" + or - $mid?");
  String answer = "";
  bool stopFunc = true;
  int counter = 0;

  while (answer != "yes") {
    stdout.write("is it $mid");
    answer = stdin.readLineSync()!;
    if (answer == '+') {
      min = mid;
      mid = (max + min) ~/ 2;
      counter++;
    } else if (answer == "-") {
      max = mid;
      mid = (max + min) ~/ 2;
      counter++;
    } else if (answer == "yes") {
      print("the end of the game");
      counter++;
    } else {
      print("the $answer is not correct");
      answer = stdin.readLineSync()!;
      
    }
  }
  print("got it on $counter steps");
}
