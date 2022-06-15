import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: denuncia(),
    );
  }
}
class denuncia extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<denuncia> {
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
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: SizedBox(
            width: 130,
            child: Text('  LOCAL PET'),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            // autofocus: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Digite aqui",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(
              fontSize: 20,
            ),
          ),

          SizedBox(
            height:90,
            child:Center(
              child: Container(
                child: Text(
                  "Tire uma foto ou selecione da sua galeria !",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 110.0,
              child: Center(
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                onPressed:getImagefromCamera,
                tooltip: "Abrir camera",
                child: Icon(Icons.camera),
              ),
              FloatingActionButton(
                onPressed:getImagefromGallery,
                tooltip: "Abrir galeria",
                child: Icon(Icons.folder),
              )
            ],
          )
        ],
      ),

    );
  }
}