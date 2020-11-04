import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'meal/breakfast_page.dart';
import 'meal/lunch_page.dart';
import 'meal/dinner_page.dart';
import 'meal/behavior_page.dart';
import 'meal/snack_page.dart';


class MealPage extends StatefulWidget {
  MealPage({Key key}) : super(key: key);

  @override
  _MealPageState createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('食事管理'),
        backgroundColor: new Color(0xFF673AB7),
      ),
      body: ListView(
        children: <Widget>[
          new Card(
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.free_breakfast),
                        Text(
                          ' 朝食',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                    child: Icon(Icons.keyboard_arrow_right, size: 50.0),
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BreakFast()
                      ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          new Card(
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.fastfood),
                        Text(
                          ' 昼食',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                    child: Icon(Icons.keyboard_arrow_right, size: 50.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LunchPage()
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          new Card(
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.restaurant_menu),
                        Text(
                          ' 夕食',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                    child: Icon(Icons.keyboard_arrow_right, size: 50.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DinnerPage()
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          new Card(
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.local_drink),
                        Text(
                          ' 間食',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                    child: Icon(Icons.keyboard_arrow_right, size: 50.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SnackPage()
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          new Card(
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.report),
                        Text(
                          ' 食行動記録',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                    child: Icon(Icons.keyboard_arrow_right, size: 50.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BehaviorPage()
                        ),
                      );
                    },
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
