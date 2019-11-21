import 'package:change_color/utils/unique_color_generator.dart';
import 'package:change_color/widgets/hey_there.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color _color;

  @override
  void initState() {
    super.initState();
    _color = generateColor();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap to change background color'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
          onTap: () {
            setState(() { 
              _color = generateColor(); 
              print(_color);
            });
          },
          child:  Center(
            child: HeyThere(color: _color),
          )          
        )      
    );
  }
}
