import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:trainer/model/exercise.dart';

class ExerciseDataProvider {
  static final List<Exercise> _data = [];

  /* WARNING!
  * This method must be called at app start as await to load data from asset.
  */
  static Future load() async {
    final jsonString = await rootBundle.loadString('exercises.json');
    Map<String, dynamic> x = jsonDecode(jsonString);

    //print('x: $x');
    //print(x.runtimeType);

    List<dynamic> exerciseMap = x["exercises"];
    _data.clear();
    for (final elem in exerciseMap) {
      _data.add(Exercise.fromMap(elem));
    }

    print('ExerciseDataProvider. Load exercises: ${_data.length}');

    //var dataSB = StringBuffer();
    //for (final elem in _data) {
    //  dataSB.writeln('${elem.title} ${elem.image} ${elem.work}');
    //}
    //print(dataSB.toString());
  }

  static List<Exercise> data() => _data;
}
