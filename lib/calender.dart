import 'package:flutter/material.dart';
import 'dart:async';

// ignore: camel_case_types
class calendar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<calendar> {

  DateTime _date = new DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2016),
        lastDate: new DateTime.now().add(new Duration(days: 360))
    );
    if(picked != null) setState(() => _date = picked);
  }

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Center(child:Text("$_date")),
            new RaisedButton(onPressed: () => _selectDate(context), child: new Text('日付選択'),)
          ],
        )
    );
  }
}