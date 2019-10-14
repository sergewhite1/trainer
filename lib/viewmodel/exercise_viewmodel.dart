import 'package:flutter/foundation.dart';
import 'package:trainer/model/exercise.dart';

class ExerciseViewModel with ChangeNotifier {
  int _exerciseIndex = 1;

  Exercise get currentExercise {
    return Exercise(title: 'Exercise $_exerciseIndex');
  }

  void nextExercise() {
    print('ExerciseViewModel::nextExercise() _exerciseIndex: $_exerciseIndex');
    ++_exerciseIndex;
    notifyListeners();
  }
}
