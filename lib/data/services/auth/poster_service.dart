import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Poster extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // set post
  Future<void> savePost() async {
    String title ="""
Mohali blast: Police find dump of 7,000 mobile
phones, Oppn knocks security lapses""";
    String post = """
A view of the geographical distribution of the world's main
language families, including a legend.Click on the image for a full
size version which you can freely re-use and modify. Print it and 
use it for your lessons, integrate it into your pages on Wikiversity,
or use it in other learning resources and websites. Use the links
below to find more images like this one.
""";
    Map<String, dynamic> postData = {
      "title": title,
      "post": post,
    };
    await _firestore.collection("poster").add(postData);
  }
}
