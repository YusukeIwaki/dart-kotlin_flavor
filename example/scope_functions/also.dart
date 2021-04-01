import 'package:kotlin_flavor/scope_functions.dart';

void main() {
  var len = 0;

  String? target;
  print(target?.also((it) {
    len = it.length;
  })); // => "null"
  print('len = $len'); // => "len = 0"

  target = 'target';
  print(target?.also((it) {
    len = it.length;
  })); // => "target"
  print('len = $len'); // => "len = 6"
}
