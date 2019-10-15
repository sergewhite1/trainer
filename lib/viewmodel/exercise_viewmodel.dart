import 'package:flutter/foundation.dart';
import 'package:trainer/math/uniform_random_int_generator.dart';
import 'package:trainer/model/exercise.dart';
import 'package:trainer/services/exercise_data_provider.dart';

class ExerciseViewModel with ChangeNotifier {
  int _currentExerciseIndex;
  List<Exercise> _data;
  UniformRandomIntGenerator _randomGenerator;

  ExerciseViewModel() {
    //const int EXERCISE_COUNT = 5;
    // for (int i = 0; i < EXERCISE_COUNT; ++i){
    //    _data.add(Exercise(title: 'Exercise ${i+1}'));
    //}
    _data = ExerciseDataProvider.data();

    _randomGenerator = UniformRandomIntGenerator(_data.length - 1);

    _updateCurrentExerciseIndex();
  }

  Exercise get currentExercise {
    return _data[_currentExerciseIndex];
  }

  void nextExercise() {
    print(
        'ExerciseViewModel::nextExercise() BEFORE UPDATE _currentExerciseIndex: $_currentExerciseIndex');
    _updateCurrentExerciseIndex();
    print(
        'ExerciseViewModel::nextExercise() AFTER  UPDATE _currentExerciseIndex: $_currentExerciseIndex');
    notifyListeners();
  }

  void _updateCurrentExerciseIndex() {
    _currentExerciseIndex = _randomGenerator.generate();
  }
}
