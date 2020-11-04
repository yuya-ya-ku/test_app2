import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ホーム"),
        backgroundColor: new Color(0xFF673AB7),
      ),
      body: ListView(
        children: <Widget>[
          new Card(
            margin: const EdgeInsets.all(10.0),
            child: Container(
              color: Colors.yellow[200],
              width: 100,
              height: 300,
              child: Column(
                children: [
                  Text(
                    'フィードバック',
                    style: TextStyle(fontSize: 20),
                  ),
                  Image.asset(
                    'images/job_senesi.png',
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
          new Card(
            margin: const EdgeInsets.all(10.0),
            child: Container(
              color: Colors.red[200],
              width: 100,
              height: 150,
              child: Column(
                children: [
                  new Container(
                    child: Row(
                      children: [
                        Text(
                          '今週の目標',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1日腹筋30回を3セット行う',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '1週間で1万歩',
                          style: TextStyle(fontSize: 20),
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
              color: Colors.deepPurple[200],
              width: 100,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
