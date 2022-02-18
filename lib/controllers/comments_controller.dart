import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class CommentsController extends GetxController {
  var comments = <String>[].obs;
  CollectionReference commententsRef =
      FirebaseFirestore.instance.collection("comments");
  getComments() async {
    comments.clear();
    var commentsToDisplay = commententsRef.limit(5).get();
    commentsToDisplay.then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        comments.add(doc["text"]);
      }
    });
  }
}
