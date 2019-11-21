import 'package:flutter/material.dart';

class HeyThere extends StatefulWidget {
  const HeyThere({Key key, this.color}) : super(key: key);

  final Color color;

  @override
  _HeyThereState createState() => _HeyThereState();
}

class _HeyThereState extends State<HeyThere> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: widget.color,
      ),
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      child: const Padding(
        padding: EdgeInsets.all(30.0),
        child: Text(
          'Hey There', 
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      )
    );
  }
}
