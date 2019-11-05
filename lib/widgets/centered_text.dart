import 'package:flutter/material.dart';

class CenteredText extends StatelessWidget {
  const CenteredText({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.display1,
      textAlign: TextAlign.center,
    );
  }
}
