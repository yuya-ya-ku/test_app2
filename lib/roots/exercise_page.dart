import 'package:flutter/material.dart';
import 'package:test_app2/roots/Exercise/today_exercise.dart';
import 'package:test_app2/roots/Exercise/exercise_program.dart';

class ExercisePage extends StatefulWidget {
  ExercisePage({Key key}) : super(key: key);

  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('運動管理'),
        backgroundColor: new Color(0xFF673AB7),
      ),
      body: ListView(
        children: <Widget>[
          new Card(
            margin: const EdgeInsets.all(10.0),
            child: Container(
              color: Colors.orange[200],
              width: 100,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  new Container(
                    child: Column(
                      children: [
                        new Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '今日の活動量',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '　',
                          style: TextStyle(fontSize: 25),
                        ),
                        new Container(
                          color: Colors.white,
                          height: 75,
                          child: Column(
                            children: [
                              Text(
                                '消費カロリー',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                '1200kcal',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),

                        new Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RaisedButton(
                                child: Icon(Icons.keyboard_arrow_right,
                                    size: 50.0),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TodayExercise()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new Container(
                                color: Colors.white,
                                height: 75,
                                width: 100,
                                child: Column(
                                  children: [
                                    Text(
                                      '歩数',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      '2000歩',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ],
                                ),
                              ),
                              new Container(
                                color: Colors.white,
                                height: 75,
                                width: 100,
                                child: Column(
                                  children: [
                                    Text(
                                      '移動距離',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      '7km',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Card(
            margin: const EdgeInsets.all(10.0),
            child: Container(
              color: Colors.orange[200],
              width: 100,
              height: 300,
              child: Column(
                children: [
                  new Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '運動内容',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    child: Column(
                      children: [
                        Text(
                          '腹筋30回3セットした',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          '朝起きてストレッチを10分行った',
                          style: TextStyle(fontSize: 25),
                        ),
                        new Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RaisedButton(
                                child: Icon(Icons.keyboard_arrow_right,
                                    size: 50.0),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ExerciseProgram(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
