[![Dart CI](https://github.com/YusukeIwaki/dart-kotlin_flavor/workflows/Dart%20CI/badge.svg)](https://github.com/YusukeIwaki/dart-kotlin_flavor/actions?query=workflow%3A"Dart+CI") [![Pub](https://img.shields.io/pub/v/kotlin_flavor)](https://pub.dev/packages/kotlin_flavor)

# kotlin_flavor

Are you Android-app engineer, and eager to use scope functions also in Dart?

Yes, `kotlin_flavor/scope_functions` provides it for you! :)

```dart
import 'package:kotlin_flavor/scope_functions.dart'

bool handle(Shop selectedShop) {
  return selectedShop?.let((shop) {
    navigateTo(shop.location);
    return true;
  }) ?? run(() {
    navigateToDefaultPosition();
    return false;
  });
}
```

## kotlin_flavor/scope_functions

### let

Often used for executing a code block only with non-null values.

```
someNullable?.let((it) { ... });
```

### also

Used for additional actions that don't alter the object, such as logging or printing debug information.

```
something.also((it) { ... }); // returns something.
```

### run

Used for evaluating a block of several statements where an expression is required.

```
someNullable ?? run(() {
  var defaultValue = ......;
  // several process...

  return defaultValue;
});
```


## Development

```
$ docker-compose pull
$ docker-compose run --rm dart
```

will build a Dart development environment for you.

Ensure all test successfully pass, every after you change some codes:

```
$ pub run test
```
