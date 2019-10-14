import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainer/viewmodel/exercise_viewmodel.dart';

class ExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ExerciseViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Trainer'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                model.currentExercise.title,
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Next',
                ),
                onPressed: () {
                  print('Next button pressed.');
                  model.nextExercise();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
