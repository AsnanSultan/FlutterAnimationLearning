import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Text(
        text,
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 1000),
      builder: (BuildContext context, double val, Widget child) {
       
        return Opacity(
          opacity: val,
          child: Padding(
            padding: EdgeInsets.only(top: val * 20),
            child: child,
          ),
        );
      },
    );
  }
}
