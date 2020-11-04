import 'package:flutter/material.Dart';
import 'package:flutter/rendering.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => new _CardsState();
}

class _CardsState extends State<Cards> {
  var _userController = TextEditingController();
  var _passwordController = TextEditingController();
  var _text = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Expanded(
            child: new ListView(
              children: _buildCards(),
              padding: const EdgeInsets.all(8.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(CardModel card) {
    List<Widget> columnData = <Widget>[];

    if (card.CardsType) {
      columnData.add(
        new Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Text('Username: '),
            ),
            Expanded(
              flex: 7,
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: _userController,
              ),
            ),
          ],
        ),
      );

      columnData.add(
        new Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Text('Password: '),
            ),
            Expanded(
              flex: 7,
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: _passwordController,
                obscureText: true,
              ),
            )
          ],
        ),
      );

      columnData.add(
        Container(
          padding: EdgeInsets.all(16.0),
          child: RaisedButton(
            child: Text('Submit'),
            onPressed: () => setState(
                  () {
                _text = _userController.text;
                _text += ':';
                _text += _passwordController.text;
              },
            ),
          ),
        ),
      );
      columnData.add(
        Container(
          padding: EdgeInsets.all(8.0),
          child: Text(_text),
        ),
      );
    } else {
      columnData.add(
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.thumb_up),
        ),
      );
    }

    columnData.add(
      new Padding(
        padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
        child: new Text(
          card.headerText,
          style: new TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
        ),
      ),
    );

    return new Card(
      child: new Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(children: columnData),
      ),
    );
  }

  List<Widget> _buildCards() {
    List<Widget> cards = [];
    for (int i = 0; i < sampleCards.length; i++) {
      cards.add(_buildCard(sampleCards[i]));
    }

    return cards;
  }
}

class CardModel {
  // ignore: non_constant_identifier_names
  final int MealNumber;
  final String headerText;

  // ignore: non_constant_identifier_names
  final bool CardsType;

  CardModel({this.MealNumber, this.headerText = "", this.CardsType = false});
}

List<CardModel> sampleCards = [
  new CardModel(MealNumber: 1, headerText: "朝食"),
  new CardModel(MealNumber: 2, headerText: "昼食"),
  new CardModel(MealNumber: 3, headerText: "夕食"),
  new CardModel(MealNumber: 4, headerText: "間食"),
  new CardModel(CardsType: true, headerText: "食行動記録"),
];