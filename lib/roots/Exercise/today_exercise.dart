import 'package:flutter/material.dart';


class TodayExercise extends StatelessWidget {
  @override
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
              height: 500,
              child: Column(
                children: [
                  new Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        new Container(
                          child: Row(
                            children: [
                              Text(
                                '今日の活動量',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '消費カロリー 1200kcal',
                                style: TextStyle(fontSize: 25),
                              ),
                              Text(
                                '歩数 2000歩',
                                style: TextStyle(fontSize: 25),
                              ),
                              Text(
                                '移動距離 7km',
                                style: TextStyle(fontSize: 25),
                              ),
                              Text(
                                '心拍数 80',
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
          ),
        ],
      ),
    );
  }
}
