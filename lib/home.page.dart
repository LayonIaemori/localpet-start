import 'package:firebase_auth/firebase_auth.dart';
import 'package:localpet/pesqpet.dart';
import 'package:localpet/pets.dart';
import 'package:localpet/sobre.dart';
import 'package:localpet/verdenun.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:localpet/denuncia.dart';
import 'package:localpet/cadaspet.dart';
import 'doar.dart';
import 'mural.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
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
      body: Center(
        child: Container(
          width: 300,
          color: Colors.white,
          child: ListView(children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              width: 20,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFD29D8EA),
                    Color(0xFD29D8EA),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "FAZER UMA DOAÇÃO",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => doar(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFD29D8EA),
                    Color(0xFD29D8EA),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "CADASTRAR PET",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => cadaspet(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFD29D8EA),
                    Color(0xFD29D8EA),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "MEUS PETS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pets(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFD29D8EA),
                    Color(0xFD29D8EA),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "PESQUISAR PET",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pesqpet(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFD29D8EA),
                    Color(0xFD29D8EA),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "VER DENUNCIAS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => verdenun(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFD29D8EA),
                    Color(0xFD29D8EA),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "FAZER UMA DENUNCIA ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => denuncia(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFD29D8EA),
                    Color(0xFD29D8EA),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "MURAL DE FOTOS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => mural(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFD29D8EA),
                    Color(0xFD29D8EA),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "SOBRE NOS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => mural(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFD29D8EA),
                    Color(0xFD29D8EA),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "SAIR",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () => FirebaseAuth.instance.signOut(),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
