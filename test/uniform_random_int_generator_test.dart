import 'package:flutter_test/flutter_test.dart';
import 'package:trainer/math/uniform_random_int_generator.dart';

void main() {
  group('Uniform Random Int Generator Test', () {
    test('Test Case 1', () {
      //  Calc histogram for random distribution in standard dart.
      const int MAX_VALUE = 9;
      const int N = 1000;
      var hist = List<int>();
      for (int i = 0; i <= MAX_VALUE; ++i) {
        hist.add(0);
      }

      var randomGenerator = UniformRandomIntGenerator(MAX_VALUE);
      int x;

      for (int i = 0; i < N; ++i) {
        x = randomGenerator.generate();
        hist[x]++;
      }

      var histDataSB = StringBuffer();
      for (int i = 0; i <= MAX_VALUE; ++i) {
        histDataSB
            .write('E[' + i.toString() + ']=' + hist[i].toString() + '; ');
      }
      var histDataString = histDataSB.toString();
      print('histData: $histDataString');
      expect(1, 1);
    });
  });
}
