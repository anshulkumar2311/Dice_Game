import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade500,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber=1;
  int rightdicenumber=1;

  void changeDiceFace(){
    setState((){
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftdicenumber.png'),),),
          Expanded(
            child: TextButton(
              onPressed:(){
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightdicenumber.png'),),
          )
        ],
      ),

    );
  }
}
