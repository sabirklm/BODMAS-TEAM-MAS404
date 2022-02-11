import 'package:flutter/material.dart';

class DisplayedChar extends StatelessWidget {
  final String char;
  final Color fillColor;

  const DisplayedChar({
    Key? key,
    required this.char,
    this.fillColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(width < 640 ? 8 : 28),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: fillColor,
        border: Border.all(
          width: 1,
        ),
      ),
      child: Text(
        char,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
