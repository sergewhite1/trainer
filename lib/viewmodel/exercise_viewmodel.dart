import 'package:trainer/model/exercise.dart';

class ExerciseViewModel {
  static int _exerciseIndex = 0;

  Exercise get currentExercise {
    ++_exerciseIndex;
    return Exercise(title: 'Exercise $_exerciseIndex');
  }

  void nextExercise() {
    print('ExerciseViewModel::nextExercise()');
  }
}
