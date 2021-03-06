import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainer/viewmodel/exercise_viewmodel.dart';

class ExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ExerciseViewModel>(context);
    print("ExercisePage. Image: ${model.currentExercise.image}");

    //var sb = StringBuffer('This is very long string');
    //for (int i = 0; i < 200; ++i) {
    //  sb.write('Record $i');
    //}
    //var veryLongString = sb.toString();

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
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Text(
                      model.currentExercise.title,
                    ),
                    (model.currentExercise.image != null &&
                            model.currentExercise.image.isNotEmpty)
                        ? Image.asset(
                            model.currentExercise.image,
                          )
                        : Text(
                            "NO IMAGE",
                          ),
                    Text(
                      'Work: ${model.currentExercise.work}',
                    ),
                    //Text(
                    //  veryLongString,
                    //),
                  ],
                ),
              ),
              ElevatedButton(
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
