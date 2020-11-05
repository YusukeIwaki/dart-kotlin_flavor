import 'package:kotlin_flavor/scope_functions.dart';

String greet(String? yourName) {
  return yourName?.let((name) => 'Hi! John Doe') ?? 'Oops!';
}

void main() {
  print(greet(null)); // => "Oops!"
  print(greet('John Doe')); // => "Hi! John Doe."
}
