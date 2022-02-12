import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String name;
  const MyButton({
    Key? key,
    required this.onTap,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent.withOpacity(0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
          padding: const EdgeInsets.all(16),
          child: Text(
            name,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 66,
                fontFamily: "QwitcherGrypen",
                color: Colors.red.shade900),
          ),
        ),
      ),
    );
  }
}
