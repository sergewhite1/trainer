import 'package:flutter/material.dart';
import 'package:trainer/app.dart';
import 'package:trainer/services/exercise_data_provider.dart';

void main() async {
  await ExerciseDataProvider.load();
  runApp(TrainerApp());
}
