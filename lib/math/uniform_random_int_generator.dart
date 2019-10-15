import 'dart:math';

class UniformRandomIntGenerator {
  int _maxValue;
  int _maxExclusive;
  var _random = Random();

  UniformRandomIntGenerator(int maxValue) : assert(maxValue > 0) {
    _maxValue = maxValue;
    _maxExclusive = _maxValue + 1;
  }

  int get maxValue => _maxValue;

  int generate() => _random.nextInt(_maxExclusive);
}
