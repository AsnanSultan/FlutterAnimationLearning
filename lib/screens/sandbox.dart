import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  @override
  _SandBoxState createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _margin = 0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;

  void reset() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => setState(() => _margin = 50),
              child: Text("animate margin"),
            ),
            ElevatedButton(
              onPressed: () => setState(() => _color = Colors.purple),
              child: Text("animate margin"),
            ),
            ElevatedButton(
              onPressed: () => setState(() => _width = 400),
              child: Text("animate width"),
            ),
            ElevatedButton(
              onPressed: () => setState(() => _opacity = 0),
              child: Text("animate opacity"),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text(
                "Hide me",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => setState(() {
                _margin = 0;
                _opacity = 1;
                _width = 200;
                _color = Colors.blue;
              }),
              child: Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
