import 'package:test/test.dart';
import 'package:kotlin_flavor/scope_functions.dart';

void main() {
  group('.let', () {
    test('for simple integer', () {
      var result = 3.let((x) => x * 2);
      expect(result, equals(6));
    });

    test('for simple string', () {
      var result = 'hoge'.let((String x) => x.toUpperCase());
      expect(result, equals('HOGE'));
    });

    test('type conversion', () {
      var result = '123'.let((String x) => int.parse(x));
      expect(result, equals(123));
    });

    test('with Null-Aware operators', () {
      String? target;
      var result = target?.let((String s) => 'target is ${s}');
      expect(result, equals(null));

      target = 'hogehoge';
      result = target?.let((String s) => 'target is ${s}');
      expect(result, equals('target is hogehoge'));
    });
  });

  group('.also', () {
    test('for simple usage', () {
      var target = 'hoge';

      var xx = 1;
      var result = target.also((String it) {
        xx = it.length;
      });
      expect(xx, equals(4));
      expect(result, equals('hoge'));
    });
  });

  group('.run', () {
    test('for simple usage', () {
      var result = run(() => 123);
      expect(result, equals(123));
    });

    test('with Null-Aware operators', () {
      String? target;
      var result = target ??
          run(() {
            var empty = 'empty';
            return empty.toUpperCase();
          });
      expect(result, equals('EMPTY'));
    });
  });
}
