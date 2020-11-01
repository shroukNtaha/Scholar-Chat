import 'package:flutter/cupertino.dart';

class ChatModel {
  String id;
  String userId;
  Text massage;
  DateTime sendAt;


  ChatModel({
    this.massage,
    this.userId,
  });

  toJson() {
    return {
      "userId": userId,
      "massage": massage,
      "sendAt": DateTime.now(),
    };
  }

  ChatModel.fromMap(snapshot, id)
    : id = id ?? '',
      userId = snapshot['userId'] ?? '',
      sendAt = snapshot['sendAt'].toDate() ?? '',
      massage = snapshot['massage'] ?? '';

}