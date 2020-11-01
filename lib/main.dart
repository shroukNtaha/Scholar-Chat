import 'package:Scholer_Chat/models/user.dart';
import 'package:Scholer_Chat/services/auth.dart';
import 'package:Scholer_Chat/screens/login.dart';
import 'package:Scholer_Chat/screens/signup.dart';
import 'package:Scholer_Chat/screens/home.dart';
import 'package:Scholer_Chat/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserAuth>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          '/': (BuildContext context) => Wrapper(),
          '/chat': (BuildContext context) => Chat(),
          '/login': (BuildContext context) => LogIn(),
          '/signup': (BuildContext context) => SignUp(),
        },    
      ),
    );
  }
}
