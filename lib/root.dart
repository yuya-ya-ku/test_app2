import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'roots/home_page.dart';
import 'roots/meal_page.dart';
import 'roots/exercise_page.dart';
import 'roots/weight_page.dart';
import 'roots/objective_page.dart';

class RootWidget extends StatefulWidget{
  RootWidget({Key key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _selectedIndex = 0;
  final _bottomNavigationBarItems =  <BottomNavigationBarItem>[];

  // アイコン情報
  static const _footerIcons = [
    Icons.home,
    Icons.fastfood,
    Icons.directions_run,
    Icons.line_weight,
    Icons.network_cell,
  ];

  // アイコン文字列
  static const _footerItemNames = [
    'ホーム',
    '食事',
    '運動',
    '体重',
    '目標',
  ];

  var _routes = [
    Home(),
    MealPage(),
    ExercisePage(),
    WeightPage(),
    ObjectivePage(),
  ];

  @override
  void initState() {
    super.initState();
    _bottomNavigationBarItems.add(_UpdateActiveState(0));
    for ( var i = 1; i < _footerItemNames.length; i++) {
      _bottomNavigationBarItems.add(_UpdateDeactiveState(i));
    }
  }

  /// インデックスのアイテムをアクティベートする
  BottomNavigationBarItem _UpdateActiveState(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color: Colors.blue,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.blue,
          ),
        )
    );
  }

  /// インデックスのアイテムをディアクティベートする
  BottomNavigationBarItem _UpdateDeactiveState(int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color: Colors.grey,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.grey,
          ),
        )
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavigationBarItems[_selectedIndex] = _UpdateDeactiveState(_selectedIndex);
      _bottomNavigationBarItems[index] = _UpdateActiveState(index);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _routes.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // これを書かないと3つまでしか表示されない
        items: _bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}