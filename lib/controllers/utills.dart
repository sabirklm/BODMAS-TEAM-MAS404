import 'package:cloud_firestore/cloud_firestore.dart';

import '/data/game_status.dart';
import 'package:math_expressions/math_expressions.dart';

int convertExpression(List<String?> pattern) {
  String temp = "";
  for (int i = 0; i < pattern.length; i++) {
    if (pattern[i] == "×") {
      temp += "*";
    } else if (pattern[i] == "÷") {
      temp += "/";
    } else {
      temp += pattern[i]!;
    }
  }
  Parser p = Parser();
  Expression exp = p.parse(temp.trim());
  ContextModel cm = ContextModel();
  return exp.evaluate(EvaluationType.REAL, cm);
}

gamePlayingStatus(GameStatus gameStatus) {
  // FirebaseFirestore.instance.collection('game').add({
  //   "round": gameStatus.round,
  //   "isWon": gameStatus.isWon,
  //   "playedAt": gameStatus.playedAt,
  // });
}

saveComment(String comment) async {
  if (comment.trim().isNotEmpty) {
    CollectionReference comRef =
        FirebaseFirestore.instance.collection('comments');
    await comRef.add({
      "text": comment,
    });
  }
}
