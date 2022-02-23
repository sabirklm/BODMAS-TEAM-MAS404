import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:team_mas404/controllers/controllers.dart';

class CongratulationPage extends StatelessWidget {
  final ConfettiController confAnimationContriller;
  final Function()? onPlayAgain;
  const CongratulationPage({
    Key? key,
    required this.confAnimationContriller,
    required this.onPlayAgain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnalyticsController().logScreen("Congratulation");
    AnalyticsController().logGameWon(true);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ConfettiWidget(
          confettiController: confAnimationContriller,
          emissionFrequency: 0.1,
          blastDirectionality: BlastDirectionality.explosive,
          numberOfParticles: 100,
          blastDirection: 0.2,
        ),
        Text(
          "🎉Congratulations🎉 \n You won the game",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: "QwitcherGrypen",
              fontSize: 66,
              color: Colors.deepOrangeAccent),
        ),
        Material(
          color: Colors.transparent.withOpacity(0),
          child: InkWell(
            onTap: onPlayAgain,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Play again?",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 66,
                    fontFamily: "QwitcherGrypen",
                    color: Colors.red.shade900),
              ),
            ),
          ),
        )
      ],
    );
  }
}
