import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsController {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  logGameInfo() async {
    analytics.logEvent(name: 'game_palying', parameters: {
      "time": DateTime.now(),
    });
  }
}
