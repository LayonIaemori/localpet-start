import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatefulWidget {
  final Function() onClickedSignIn;

  const SignUpWidget({
    Key? key,
    required this.onClickedSignIn,
  }) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) => SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(height: 30),
        SizedBox(height: 20),
        Text(
          "LOCALPET",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 40),
        TextField(
          controller: emailController,
          cursorColor: Colors.white,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              )),
        ),
        SizedBox(height: 4),
        TextField(
          controller: passwordController,
          cursorColor: Colors.white,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              )),
          obscureText: true,
        ),
        SizedBox(height: 20),
        Container(
          height: 60,
          width: 180,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              stops: [0.3, 1],
              colors: [
                Color(0xFD3468E8),
                Color(0xFD3468E8),
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
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              onPressed: signUp,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: RichText(
            text: TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = widget.onClickedSignIn,
              text: "FAZER LOGIN",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 19,
              ),
            ),
          ),
        )
      ]));

  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
