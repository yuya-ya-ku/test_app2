import 'package:flutter/material.dart';

class ExerciseProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('運動管理'),
        backgroundColor: new Color(0xFF673AB7),
      ),
      body: InputDataForm(),
    );
  }
}

class InputDataForm extends StatefulWidget {
  @override
  _InputDataFormState createState() => _InputDataFormState();
}

class _InputDataFormState extends State {
  // テキストフィールドを管理するコントローラを作成(入力内容の取得用)
  final textController = TextEditingController();

  // 入力データ格納用のリスト
  List<Map<String, dynamic>> items = [];

  //　ID（カウンタ変数）
  int _counter = 0;

  //　追加ボタンが押されたときの処理（リストにIDと入力データを新規追加）
  void _addItem(String inputText) {
    setState(() {
      _counter++;
      items.add({"id": _counter, "content": inputText});
    });
  }

  @override
  // widgetの破棄時にコントローラも破棄
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
              '今日1日の運動内容を記録してください',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '例：30回の腹筋を3セット行った',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: textController,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = items[index];
                    // 新しいカードを作成して返す
                    return new Card(
                      child: ListTile(
                        leading: FlutterLogo(),
                        title: Text(
                            item["id"].toString() + " : " + item["content"]),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      // テキストフィールド送信用ボタン
      floatingActionButton: FloatingActionButton(
        // ボタンが押された時の動作
        onPressed: () {
          //テキストフィールドの内容を取得し、アイテムリストに追加
          _addItem(textController.text);

          // テキストフィールドの内容をクリア
          textController.clear();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
