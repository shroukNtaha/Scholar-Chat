import 'package:Scholer_Chat/models/user.dart';
import 'package:Scholer_Chat/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


checkIfAuthenticated() async {
  await Future.delayed(Duration(
      seconds: 5)); // could be a long running task, like a fetch from keychain
  return true;
}

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserAuth>(context);

    if (user != null) {
      Future.delayed(Duration(seconds: 2)).then((obj) {
        Navigator.of(context).pushReplacementNamed("/chat");
      });
      // return Home();
    }
    return LogIn();
  }
}
