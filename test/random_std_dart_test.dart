import 'dart:math';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Random Test', () {
    test('Test Case 1', () {
      //  Calc histogram for random distribution in standard dart.
      var random = Random();
      const int MAX_VALUE = 9;
      const int N = 1000;
      var hist = List<int>();
      for (int i = 0; i <= MAX_VALUE; ++i) {
        hist.add(0);
      }

      int x;

      for (int i = 0; i < N; ++i) {
        x = random.nextInt(MAX_VALUE + 1);
        hist[x]++;
      }

      String histDataString = '';
      for (int i = 0; i <= MAX_VALUE; ++i) {
        histDataString +=
            'E[' + i.toString() + ']=' + hist[i].toString() + '; ';
      }
      print('histData: $histDataString');
      expect(0, 1);
    });
  });
}
