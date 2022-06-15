import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: SizedBox(
            width: 130,
            child: Text('  LOCAL PET'),
          ),
        ),
      ),
      body: fotopet(),
    );
  }
}
class fotopet extends StatefulWidget {
  @override
  _fotopet createState() => _fotopet();
}
class _fotopet extends State<fotopet> {
  late File _image;
  final picker=ImagePicker();

  Future getImagefromCamera() async {
    final pickedImage = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if(pickedImage != null){
        _image = File(pickedImage.path);
      } else{
        print("IMAGEM NAO SELECIONADA");
      }
    });
  }
  Future getImagefromGallery() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if(pickedImage != null){
        _image = File(pickedImage.path);
      } else{
        print("IMAGEM NAO SELECIONADA");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("local.png"),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Tire uma foto ou selecione da sua galeria !",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Center(
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                onPressed:getImagefromCamera,
                tooltip: "pickImage",
                child: Icon(Icons.camera),
              ),
              FloatingActionButton(
                onPressed:getImagefromGallery,
                tooltip: "Pick Image",
                child: Icon(Icons.folder),
              )
            ],
          )
        ],
      ),
    );
  }
}