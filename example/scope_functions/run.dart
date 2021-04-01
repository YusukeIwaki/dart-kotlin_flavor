import 'package:kotlin_flavor/scope_functions.dart';

String captionFor(String? selectedShopName) {
  // Kotlin users often use
  // `xxx?.let{ ... } ?: run { ... }`
  // just instead of
  // `if (xxx != null) { ... } else { ... }`
  return selectedShopName?.let((name) => 'Do with $selectedShopName...') ??
      run(() => 'If no shop is selected, process here...');
}

void main() {
  print(captionFor(null));
  // => "If no shop is selected, process here..."

  print(captionFor('Happy Cake Shop'));
  // => "Do with Happy Cake Shop..."
}
