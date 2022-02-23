import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsController {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  logGameInfo() async {
    analytics.logEvent(name: 'game_palying', parameters: {
      "time": DateTime.now(),
    });
  }

  logScreen(String screenName) {
    analytics.logScreenView(screenName: screenName);
  }

  logGameWon(bool isWon) {
    analytics.logEvent(name: 'game_winings', parameters: {
      "isWon": isWon,
    });
  }
}
