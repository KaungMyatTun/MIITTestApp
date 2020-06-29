import 'package:flutter/material.dart';
import 'package:testing_app/widgets/HexColor.dart';

class OnBoardingHeaderText extends StatefulWidget {
  final String text;
  final String color;

  const OnBoardingHeaderText({@required this.text, this.color = "#000000"});

  @override
  _OnBoardingHeaderTextState createState() => _OnBoardingHeaderTextState();
}

class _OnBoardingHeaderTextState extends State<OnBoardingHeaderText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
      child: Text(
        widget.text,
        style: TextStyle(
            color: HexColor(widget.color),
            fontSize: MediaQuery.of(context).size.shortestSide * 0.06,
            letterSpacing: 0.8),
        softWrap: true,
        textAlign: TextAlign.left,
      ),
    );
  }
}
