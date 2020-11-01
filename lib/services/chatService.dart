import 'package:Scholer_Chat/common/Repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:Scholer_Chat/models/userModel.dart';

class ChatService {
  Repository _rep = Repository("chat");
  final db = FirebaseFirestore.instance.collection("chat");

  Future add(UserModel data) async {
    return await _rep.addDocument(data.toJson());
  }
}
