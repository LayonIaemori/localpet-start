import 'package:flutter/material.dart';

class fimcadas extends StatelessWidget {
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

      body:
      Center(
        child: Container(
          height: 115,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.3, 1],
              colors: [
                Color(0xC146E3A0),
                Color(0XC146E3A0),
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: SizedBox.expand(
            child: FlatButton(
              onPressed: () {  },
              child: Text(
                "CADASTRO CONCLUIDO COM SUCESSO",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
