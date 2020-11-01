import 'package:Scholer_Chat/screens/login.dart';
import 'package:Scholer_Chat/services/auth.dart';
import 'package:Scholer_Chat/services/chatService.dart';
import 'package:Scholer_Chat/services/userService.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final AuthService _auth = AuthService();
  UserService _userService = UserService();
  ChatService _chatService = ChatService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF2B475D),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('img/logo.png',
                fit: BoxFit.contain,
                height: 50,
              ),
              Text('Chat'),
            ],
          ),
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.exit_to_app),
              textColor: Colors.white,
              label: Text('Signout'),
              onPressed: ()async {
                await _auth.signOut();
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LogIn()),
                );
              },
            ),
          ],
      ),
      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),
      
    );
  }
}