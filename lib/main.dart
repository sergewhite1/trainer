import 'dart:math';
import 'package:flutter/material.dart';
import 'package:trainer/app.dart';

void main() {
  var random = Random();
  String s = '';
  for (int i = 0; i < 100; ++i) {
    s += random.nextInt(10).toString() + ' ';
  }
  print('s: $s');

  runApp(TrainerApp());
}
