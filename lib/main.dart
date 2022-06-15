import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:localpet/home.page.dart';
import 'package:localpet/login.page.dart';
import 'bd/authpage.dart';



Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}
final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Local PET',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: AnimatedSplashScreen(
      splash: 'assets/logo.png', // use any widget here
      nextScreen: Main(),
      splashTransition: SplashTransition.rotationTransition,
      duration: 1800,
    ),
    );
  }
}
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body:  StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }else if(snapshot.hasError){
          return Center(child: Text("TENTE NOVAMENTE"));
        }else if(snapshot.hasData){
          return HomePage();
        }else{
          return AuthPage();
        }
      },
    ),
  );
}