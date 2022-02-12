
import 'package:flutter/material.dart';

class KeyChar extends StatelessWidget {
  final Widget charWidget;
  final Color fillColor;
  final void Function()? onTap;
  const KeyChar({
    Key? key,
    required this.charWidget,
    this.fillColor = Colors.grey,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(width < 640 ? 12 : 28),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: fillColor,
          boxShadow:  [
          const  BoxShadow(
              offset: Offset(1, 2),
              color: Colors.transparent,
              spreadRadius: 2,
              blurRadius: 1,
            ), BoxShadow(
              offset:const Offset(1, 2),
              color: Colors.white.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 1,
            ),
          ],
        ),
        child: charWidget,
      ),
    );
  }
}
