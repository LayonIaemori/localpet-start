import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:localpet/home.page.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const LoginWidget({
    Key? key,
    required this.onClickedSignUp,
  }) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: SizedBox(
            width: 130,
            child: Center(child: Text('LOCAL PET')),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  cursorColor: Colors.blueAccent,
                  controller: emailController,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      labelStyle: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: passwordController,
                  autofocus: true,
                  cursorColor: Colors.blueAccent,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 40,
                ),
                ButtonTheme(
                  height: 10.0,
                  child: RaisedButton(
                    onPressed: singIn,
                    color: Colors.blueAccent,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = widget.onClickedSignUp,
                                text: "Cadastrar",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blueAccent,
                                  fontSize: 18,
                                ),
                      ),
                    ),
                ),
              ],
          ),
        ),
      ),
    );
  }

  Future singIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
