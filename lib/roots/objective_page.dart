import 'package:flutter/material.dart';

// リスト一覧画面用Widget
class ObjectivePage extends StatefulWidget {
  @override
  _ObjectivePageState createState() => _ObjectivePageState();
}

class _ObjectivePageState extends State<ObjectivePage> {

  List<String> objectiveList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBarを表示し、タイトルも設定
      appBar: AppBar(
        title: Text('目標ページ'),
      ),
      // データを元にListViewを作成
      body: ListView(
        children: <Widget>[
          new Card(
            child: Container(
              height: 300,
              color: Colors.yellow,
              child: Column(
                children: [
                  new Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '今週の目標',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Card(
            child: Container(
              height: 150,
              color: Colors.yellow,
              child: Column(
                children: [
                  new Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '感情指数',
                          style: TextStyle(fontSize: 25),
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

