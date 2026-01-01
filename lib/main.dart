import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.white24,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  var leftdice = 1;
  var rightdice = 1;
  void changenum()
  {
    leftdice = Random().nextInt(6)+1;
    rightdice = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: (){
                  setState(() {
                       changenum();
                  });

                },
                child: Image.asset('images/dice$leftdice.png', )),
          ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: (){
                  setState(() {
                   changenum();
                  });
                },
                child: Image.asset('images/dice$rightdice.png')),
          ),
          ),
        ],
      ),
    );
  }
}


