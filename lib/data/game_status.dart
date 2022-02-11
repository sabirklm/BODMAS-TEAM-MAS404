class GameStatus {
  final DateTime playedAt;
  final bool isWon;
  final int round;

  GameStatus({
    required this.playedAt,
    required this.isWon,
    required this.round,
  });
}
