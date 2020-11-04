import 'package:flutter/material.dart';
import 'dart:io'; // File利用
import 'package:image_picker/image_picker.dart';

class BreakFast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("朝食"),
      ),
      body: UploadPhoto(title: 'image_picker'),
    );
  }
}

class UploadPhoto extends StatefulWidget {
  UploadPhoto({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _UploadPhotoState createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  File _image;
  final picker = ImagePicker();

  // 画像の読み込み
  Future _getImage() async {
    //final pickedFile = await picker.getImage(source: ImageSource.camera);//カメラ
    final pickedFile = await picker.getImage(source: ImageSource.gallery);//アルバム

    setState(() {
      if(pickedFile!=null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? Text('No image selected.')
                : Image.file(_image),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        tooltip: 'Pick',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}